-- 基础信息
local base_info = {
	group_id = 133401011
}

-- Trigger变量
local defs = {
	point_camera = 11009,
	gadget_lookEntity = 11001,
	look_duration = 3
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 0,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = true,
    delay = 0,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[11001] = { config_id = 11001, gadget_id = 70330236, pos = { x = 3711.325, y = 51.456, z = 4962.315 }, rot = { x = 0.009, y = 48.790, z = 0.046 }, level = 27, persistent = true },
	[11002] = { config_id = 11002, gadget_id = 70330236, pos = { x = 3748.810, y = 274.060, z = 5032.343 }, rot = { x = 359.984, y = 78.993, z = 0.044 }, level = 27, persistent = true },
	-- 1号门trigger 下面参数为传送后坐标
	[11003] = { config_id = 11003, gadget_id = 70290264, pos = { x = 3712.403, y = 51.456, z = 4963.072 }, rot = { x = 0.000, y = 55.588, z = 0.000 }, level = 27 },
	-- 2号门trigger 下面参数为传送后坐标
	[11004] = { config_id = 11004, gadget_id = 70290264, pos = { x = 3750.430, y = 274.066, z = 5033.114 }, rot = { x = 0.000, y = 71.877, z = 0.000 }, level = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- Gadget001激活绝对注目
	{ config_id = 1011005, name = "GADGET_STATE_CHANGE_11005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11005", action = "action_EVENT_GADGET_STATE_CHANGE_11005" },
	-- 1号门触发
	{ config_id = 1011006, name = "GADGET_STATE_CHANGE_11006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11006", action = "action_EVENT_GADGET_STATE_CHANGE_11006", trigger_count = 0 },
	-- 2号门触发
	{ config_id = 1011007, name = "GADGET_STATE_CHANGE_11007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11007", action = "action_EVENT_GADGET_STATE_CHANGE_11007", trigger_count = 0 },
	-- 1号门成功时注目
	{ config_id = 1011008, name = "GADGET_STATE_CHANGE_11008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11008", action = "action_EVENT_GADGET_STATE_CHANGE_11008" }
}

-- 点位
points = {
	[11009] = { config_id = 11009, pos = { x = 3720.564, y = 54.605, z = 4963.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
}

-- 变量
variables = {
	{ config_id = 1, name = "first", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 11001, 11002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_11005", "GADGET_STATE_CHANGE_11006", "GADGET_STATE_CHANGE_11007", "GADGET_STATE_CHANGE_11008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 11001, 11002, 11003, 11004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_11005", "GADGET_STATE_CHANGE_11006", "GADGET_STATE_CHANGE_11007", "GADGET_STATE_CHANGE_11008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11005(context, evt)
	if 11001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11005(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11006(context, evt)
	if 11001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133401011, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 11002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "first", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11007(context, evt)
	if 11002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133401011, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 11001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "first", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11008(context, evt)
	if 11002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11008(context, evt)
	-- 触发镜头注目，注目位置为坐标（-315.8381，223.0402，3557.383），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-315.8381, y=223.0402, z=3557.383}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V3_0/CameraLook"