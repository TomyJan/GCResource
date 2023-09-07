-- 基础信息
local base_info = {
	group_id = 133401013
}

-- Trigger变量
local defs = {
	point_camera = 13009,
	gadget_lookEntity = 13001,
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
	[13001] = { config_id = 13001, gadget_id = 70330236, pos = { x = 3754.264, y = 347.956, z = 5033.359 }, rot = { x = 0.035, y = 10.709, z = 0.031 }, level = 27, persistent = true },
	[13002] = { config_id = 13002, gadget_id = 70330236, pos = { x = 3722.485, y = 147.988, z = 4974.400 }, rot = { x = -0.002, y = 61.653, z = 0.047 }, level = 27, persistent = true },
	-- 1号门trigger 下面参数为传送后坐标
	[13003] = { config_id = 13003, gadget_id = 70290264, pos = { x = 3766.613, y = 358.689, z = 5035.030 }, rot = { x = 0.000, y = 268.902, z = 0.000 }, level = 27 },
	-- 2号门trigger 下面参数为传送后坐标
	[13004] = { config_id = 13004, gadget_id = 70290264, pos = { x = 3726.310, y = 148.137, z = 4983.210 }, rot = { x = 0.000, y = 268.902, z = 0.000 }, level = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- Gadget001激活绝对注目
	{ config_id = 1013005, name = "GADGET_STATE_CHANGE_13005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13005", action = "action_EVENT_GADGET_STATE_CHANGE_13005" },
	-- 1号门触发
	{ config_id = 1013006, name = "GADGET_STATE_CHANGE_13006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13006", action = "action_EVENT_GADGET_STATE_CHANGE_13006", trigger_count = 0 },
	-- 2号门触发
	{ config_id = 1013007, name = "GADGET_STATE_CHANGE_13007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13007", action = "action_EVENT_GADGET_STATE_CHANGE_13007", trigger_count = 0 },
	-- 1号门成功时注目
	{ config_id = 1013008, name = "GADGET_STATE_CHANGE_13008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13008", action = "action_EVENT_GADGET_STATE_CHANGE_13008" }
}

-- 点位
points = {
	[13009] = { config_id = 13009, pos = { x = 3776.245, y = 361.810, z = 5032.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
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
		gadgets = { 13001, 13002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_13005", "GADGET_STATE_CHANGE_13006", "GADGET_STATE_CHANGE_13007", "GADGET_STATE_CHANGE_13008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 13001, 13002, 13003, 13004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_13005", "GADGET_STATE_CHANGE_13006", "GADGET_STATE_CHANGE_13007", "GADGET_STATE_CHANGE_13008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13005(context, evt)
	if 13001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13005(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13006(context, evt)
	if 13001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133401013, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 13002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13002, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_13007(context, evt)
	if 13002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133401013, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 13001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13001, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_13008(context, evt)
	if 13002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13008(context, evt)
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