-- 基础信息
local base_info = {
	group_id = 133401005
}

-- Trigger变量
local defs = {
	gadget_id = 5001,
	pointarray_id = 340100001
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
	{ config_id = 5001, gadget_id = 70330365, pos = { x = 3760.713, y = 289.762, z = 5034.844 }, rot = { x = 0.000, y = 88.873, z = 0.000 }, level = 32, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	-- 上层机关
	{ config_id = 5002, gadget_id = 70330333, pos = { x = 3754.146, y = 348.023, z = 5035.021 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 32 },
	-- 上层机关操作台
	{ config_id = 5003, gadget_id = 70360001, pos = { x = 3754.146, y = 348.023, z = 5035.021 }, rot = { x = 18.295, y = 5.362, z = 30.772 }, level = 32 },
	-- 上层电梯操作台
	{ config_id = 5004, gadget_id = 70360001, pos = { x = 3761.112, y = 347.708, z = 5034.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32 },
	-- 下层电梯操作台
	{ config_id = 5005, gadget_id = 70360001, pos = { x = 3760.470, y = 291.130, z = 5035.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32 },
	-- 下层机关操作台
	{ config_id = 5006, gadget_id = 70360001, pos = { x = 3760.955, y = 291.185, z = 5023.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32 },
	-- 下层机关
	{ config_id = 5007, gadget_id = 70360361, pos = { x = 3761.015, y = 291.445, z = 5023.281 }, rot = { x = 0.000, y = 358.646, z = 0.000 }, level = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 创生上层机关操作台选项
	{ config_id = 1005008, name = "GADGET_CREATE_5008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5008", action = "action_EVENT_GADGET_CREATE_5008", trigger_count = 0 },
	-- 创生上层电梯操作台选项
	{ config_id = 1005009, name = "GADGET_CREATE_5009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5009", action = "action_EVENT_GADGET_CREATE_5009", trigger_count = 0 },
	-- 创生下层机关操作台选项
	{ config_id = 1005010, name = "GADGET_CREATE_5010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5010", action = "action_EVENT_GADGET_CREATE_5010", trigger_count = 0 },
	-- 创生下层电梯操作台选项
	{ config_id = 1005011, name = "GADGET_CREATE_5011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5011", action = "action_EVENT_GADGET_CREATE_5011", trigger_count = 0 },
	-- 电梯下降，上层电梯操作台
	{ config_id = 1005012, name = "SELECT_OPTION_5012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5012", action = "action_EVENT_SELECT_OPTION_5012", trigger_count = 0 },
	-- 电梯下降，下层机关操作台
	{ config_id = 1005013, name = "SELECT_OPTION_5013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5013", action = "action_EVENT_SELECT_OPTION_5013", trigger_count = 0 },
	-- 电梯上升，上层机关操作台
	{ config_id = 1005014, name = "SELECT_OPTION_5014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5014", action = "action_EVENT_SELECT_OPTION_5014", trigger_count = 0 },
	-- 电梯上升，下层电梯操作台
	{ config_id = 1005015, name = "SELECT_OPTION_5015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5015", action = "action_EVENT_SELECT_OPTION_5015", trigger_count = 0 },
	-- 电梯延迟下降
	{ config_id = 1005016, name = "TIME_AXIS_PASS_5016", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingDown", condition = "condition_EVENT_TIME_AXIS_PASS_5016", action = "action_EVENT_TIME_AXIS_PASS_5016", trigger_count = 0 },
	-- 电梯延迟上升
	{ config_id = 1005017, name = "TIME_AXIS_PASS_5017", event = EventType.EVENT_TIME_AXIS_PASS, source = "goingUp", condition = "condition_EVENT_TIME_AXIS_PASS_5017", action = "action_EVENT_TIME_AXIS_PASS_5017", trigger_count = 0 },
	-- 电梯到达下层
	{ config_id = 1005018, name = "PLATFORM_ARRIVAL_5018", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_5018", action = "action_EVENT_PLATFORM_ARRIVAL_5018", trigger_count = 0 },
	-- 电梯到达上层
	{ config_id = 1005019, name = "PLATFORM_ARRIVAL_5019", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_5019", action = "action_EVENT_PLATFORM_ARRIVAL_5019", trigger_count = 0 },
	-- 电梯到达上层延迟创生操作台
	{ config_id = 1005020, name = "TIME_AXIS_PASS_5020", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_5020", action = "action_EVENT_TIME_AXIS_PASS_5020", trigger_count = 0 },
	-- 电梯到达下层延迟创生操作台
	{ config_id = 1005021, name = "TIME_AXIS_PASS_5021", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_5021", action = "action_EVENT_TIME_AXIS_PASS_5021", trigger_count = 0 },
	-- 电梯在上层加载创生操作台
	{ config_id = 1005022, name = "GROUP_LOAD_5022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_5022", action = "action_EVENT_GROUP_LOAD_5022", trigger_count = 0 },
	-- 电梯在下层加载创生操作台
	{ config_id = 1005023, name = "GROUP_LOAD_5023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_5023", action = "action_EVENT_GROUP_LOAD_5023", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isDefault", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 5001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } },
			{ config_id = 5002, state = 0 },
			{ config_id = 5007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_CREATE_5008", "GADGET_CREATE_5009", "GADGET_CREATE_5010", "GADGET_CREATE_5011", "SELECT_OPTION_5012", "SELECT_OPTION_5013", "SELECT_OPTION_5014", "SELECT_OPTION_5015", "TIME_AXIS_PASS_5016", "TIME_AXIS_PASS_5017", "PLATFORM_ARRIVAL_5018", "PLATFORM_ARRIVAL_5019", "TIME_AXIS_PASS_5020", "TIME_AXIS_PASS_5021", "GROUP_LOAD_5022", "GROUP_LOAD_5023" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isDefault", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_5008(context, evt)
	if 5003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133401005, 5003, {763}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_5009(context, evt)
	if 5004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133401005, 5004, {763}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_5010(context, evt)
	if 5006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133401005, 5006, {763}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_5011(context, evt)
	if 5005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133401005, 5005, {763}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5012(context, evt)
	-- 判断是gadgetid 5004 option_id 763
	if 5004 ~= evt.param1 then
		return false	
	end
	
	if 763 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133401005, EntityType.GADGET, 5004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133401005, EntityType.GADGET, 5006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建标识为"goingDown"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingDown", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5013(context, evt)
	-- 判断是gadgetid 5006 option_id 763
	if 5006 ~= evt.param1 then
		return false	
	end
	
	if 763 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5013(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133401005, EntityType.GADGET, 5004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133401005, EntityType.GADGET, 5006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 5007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"goingDown"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingDown", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5014(context, evt)
	-- 判断是gadgetid 5003 option_id 763
	if 5003 ~= evt.param1 then
		return false	
	end
	
	if 763 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5014(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133401005, EntityType.GADGET, 5003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133401005, EntityType.GADGET, 5005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 5002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"goingUp"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingUp", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5015(context, evt)
	-- 判断是gadgetid 5005 option_id 763
	if 5005 ~= evt.param1 then
		return false	
	end
	
	if 763 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5015(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133401005, EntityType.GADGET, 5003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133401005, EntityType.GADGET, 5005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建标识为"goingUp"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "goingUp", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_5016(context, evt)
	if "goingDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_5016(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.gadget_id, defs.pointarray_id, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_5017(context, evt)
	if "goingUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_5017(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.gadget_id, defs.pointarray_id, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_5018(context, evt)
	-- 判断是gadgetid 为 5001的移动平台，是否到达了340100001 的点集中的 2 点
	
	if 5001 ~= evt.param1 then
	  return false
	end
	
	if 340100001 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_5018(context, evt)
	-- 将本组内变量名为 "isDefault" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isDefault", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"wentDown"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentDown", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_5019(context, evt)
	-- 判断是gadgetid 为 5001的移动平台，是否到达了340100001 的点集中的 1 点
	
	if 5001 ~= evt.param1 then
	  return false
	end
	
	if 340100001 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_5019(context, evt)
	-- 将本组内变量名为 "isDefault" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isDefault", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"wentUp"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wentUp", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_5020(context, evt)
	if "wentUp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_5020(context, evt)
	-- 创建id为5004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为5006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 5002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_5021(context, evt)
	if "wentDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_5021(context, evt)
	-- 创建id为5003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为5005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 5007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_5022(context, evt)
	-- 判断变量"isDefault"为1
	if ScriptLib.GetGroupVariableValue(context, "isDefault") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_5022(context, evt)
	-- 创建id为5004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为5006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_5023(context, evt)
	-- 判断变量"isDefault"为0
	if ScriptLib.GetGroupVariableValue(context, "isDefault") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_5023(context, evt)
	-- 创建id为5003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为5005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end