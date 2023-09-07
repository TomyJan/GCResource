-- 基础信息
local base_info = {
	group_id = 133401045
}

-- Trigger变量
local defs = {
	point_camera = 45009,
	gadget_lookEntity = 45001,
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
	[45001] = { config_id = 45001, gadget_id = 70330236, pos = { x = 3585.906, y = 26.679, z = 4602.278 }, rot = { x = 0.002, y = 241.717, z = 359.953 }, level = 27, persistent = true },
	[45002] = { config_id = 45002, gadget_id = 70330236, pos = { x = 3604.713, y = 26.553, z = 4580.917 }, rot = { x = 0.002, y = 241.717, z = 359.953 }, level = 27, persistent = true },
	-- 1号门trigger 下面参数为传送后坐标
	[45003] = { config_id = 45003, gadget_id = 70290264, pos = { x = 3594.086, y = -39.052, z = 4591.523 }, rot = { x = 0.000, y = 313.090, z = 0.000 }, level = 27 },
	-- 2号门trigger 下面参数为传送后坐标
	[45004] = { config_id = 45004, gadget_id = 70290264, pos = { x = 3608.753, y = 44.469, z = 4594.525 }, rot = { x = 0.000, y = 313.090, z = 0.000 }, level = 27 },
	-- 占位，1号trigger传送位置
	[45010] = { config_id = 45010, gadget_id = 70290196, pos = { x = 3594.710, y = 38.594, z = 4590.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- Gadget001激活绝对注目
	{ config_id = 1045005, name = "GADGET_STATE_CHANGE_45005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_45005", action = "action_EVENT_GADGET_STATE_CHANGE_45005" },
	-- 1号门触发
	{ config_id = 1045006, name = "GADGET_STATE_CHANGE_45006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_45006", action = "action_EVENT_GADGET_STATE_CHANGE_45006", trigger_count = 0 },
	-- 2号门触发
	{ config_id = 1045007, name = "GADGET_STATE_CHANGE_45007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_45007", action = "action_EVENT_GADGET_STATE_CHANGE_45007", trigger_count = 0 },
	-- 1号门成功时注目
	{ config_id = 1045008, name = "GADGET_STATE_CHANGE_45008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_45008", action = "action_EVENT_GADGET_STATE_CHANGE_45008" }
}

-- 点位
points = {
	[45009] = { config_id = 45009, pos = { x = 3594.505, y = 29.828, z = 4602.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
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
		gadgets = { 45001, 45002, 45010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_45005", "GADGET_STATE_CHANGE_45006", "GADGET_STATE_CHANGE_45007", "GADGET_STATE_CHANGE_45008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 45001, 45002, 45003, 45004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_45005", "GADGET_STATE_CHANGE_45006", "GADGET_STATE_CHANGE_45007", "GADGET_STATE_CHANGE_45008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_45005(context, evt)
	if 45001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_45005(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_45006(context, evt)
	if 45001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_45006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133401045, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 45002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 45002, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_45007(context, evt)
	if 45002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_45007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133401045, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 45001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 45001, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_45008(context, evt)
	if 45002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_45008(context, evt)
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