-- 基础信息
local base_info = {
	group_id = 133401006
}

-- Trigger变量
local defs = {
	delay = 30,
	sumGadget = 16,
	resetTime = 5,
	group_id = 133401006
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
	-- 固定板起点
	{ config_id = 6001, gadget_id = 70900377, pos = { x = 3702.795, y = 248.061, z = 4934.178 }, rot = { x = 0.000, y = 305.670, z = 0.000 }, level = 5 },
	{ config_id = 6002, gadget_id = 70900205, pos = { x = 3705.688, y = 248.061, z = 4938.387 }, rot = { x = 0.000, y = 305.670, z = 0.000 }, level = 5 },
	{ config_id = 6003, gadget_id = 70900205, pos = { x = 3707.724, y = 250.116, z = 4937.084 }, rot = { x = 86.014, y = 125.670, z = 180.000 }, level = 5 },
	{ config_id = 6004, gadget_id = 70900205, pos = { x = 3703.085, y = 249.561, z = 4943.334 }, rot = { x = 0.000, y = 305.670, z = 90.000 }, level = 5 },
	{ config_id = 6005, gadget_id = 70900205, pos = { x = 3701.565, y = 248.061, z = 4941.214 }, rot = { x = 0.000, y = 305.670, z = 0.000 }, level = 5 },
	{ config_id = 6006, gadget_id = 70900205, pos = { x = 3697.504, y = 248.061, z = 4944.130 }, rot = { x = 0.000, y = 305.670, z = 0.000 }, level = 5 },
	{ config_id = 6007, gadget_id = 70900205, pos = { x = 3699.980, y = 249.360, z = 4947.589 }, rot = { x = 0.000, y = 305.670, z = 30.000 }, level = 5 },
	{ config_id = 6008, gadget_id = 70900205, pos = { x = 3704.133, y = 253.159, z = 4948.933 }, rot = { x = 59.996, y = 37.061, z = 90.000 }, level = 5 },
	{ config_id = 6009, gadget_id = 70900205, pos = { x = 3702.505, y = 251.860, z = 4951.102 }, rot = { x = 0.000, y = 305.670, z = 30.000 }, level = 5 },
	{ config_id = 6012, gadget_id = 70900205, pos = { x = 3705.242, y = 253.049, z = 4954.875 }, rot = { x = 0.000, y = 305.670, z = 0.000 }, level = 5 },
	{ config_id = 6014, gadget_id = 70900205, pos = { x = 3709.297, y = 253.060, z = 4951.927 }, rot = { x = 0.000, y = 305.670, z = 0.000 }, level = 5 },
	-- 14后
	{ config_id = 6020, gadget_id = 70900205, pos = { x = 3711.325, y = 254.560, z = 4950.467 }, rot = { x = 90.000, y = 305.670, z = 0.000 }, level = 5 },
	{ config_id = 6031, gadget_id = 70900205, pos = { x = 3711.875, y = 251.613, z = 4955.509 }, rot = { x = 0.000, y = 305.670, z = 323.001 }, level = 5 },
	{ config_id = 6032, gadget_id = 70900205, pos = { x = 3714.130, y = 250.173, z = 4958.848 }, rot = { x = 0.000, y = 305.670, z = 0.000 }, level = 5 },
	-- 16后
	{ config_id = 6033, gadget_id = 70900205, pos = { x = 3718.188, y = 250.173, z = 4955.937 }, rot = { x = 0.000, y = 305.670, z = 0.000 }, level = 5 },
	{ config_id = 6034, gadget_id = 70900205, pos = { x = 3722.260, y = 250.173, z = 4953.022 }, rot = { x = 0.000, y = 305.670, z = 0.000 }, level = 5 },
	{ config_id = 6035, gadget_id = 70900205, pos = { x = 3725.176, y = 250.173, z = 4957.084 }, rot = { x = 0.000, y = 305.670, z = 0.000 }, level = 5 }
}

-- 区域
regions = {
	-- 创建第一个板子
	{ config_id = 6022, shape = RegionShape.SPHERE, radius = 2, pos = { x = 3702.669, y = 248.043, z = 4933.916 } },
	-- ---- 创建第一个板子，init毁灭倒计时，reset
	{ config_id = 6024, shape = RegionShape.SPHERE, radius = 2, pos = { x = 3703.192, y = 247.864, z = 4935.084 } },
	-- group全部重置
	{ config_id = 6028, shape = RegionShape.SPHERE, radius = 2, pos = { x = 3703.192, y = 247.864, z = 4935.084 } }
}

-- 触发器
triggers = {
	-- 创建第一个板子
	{ config_id = 1006022, name = "ENTER_REGION_6022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6022", action = "action_EVENT_ENTER_REGION_6022" },
	-- loop 创建下一个gadget
	{ config_id = 1006023, name = "TIME_AXIS_PASS_6023", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_6023", action = "action_EVENT_TIME_AXIS_PASS_6023", trigger_count = 0 },
	-- ---- 创建第一个板子，init毁灭倒计时，reset
	{ config_id = 1006024, name = "ENTER_REGION_6024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6024", action = "action_EVENT_ENTER_REGION_6024" },
	-- 毁灭第一个板子
	{ config_id = 1006025, name = "TIME_AXIS_PASS_6025", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_6025", action = "action_EVENT_TIME_AXIS_PASS_6025" },
	-- loop 毁灭下一个gadget
	{ config_id = 1006026, name = "TIME_AXIS_PASS_6026", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_6026", action = "action_EVENT_TIME_AXIS_PASS_6026", trigger_count = 0 },
	-- 终止时间轴
	{ config_id = 1006027, name = "VARIABLE_CHANGE_6027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_6027", action = "action_EVENT_VARIABLE_CHANGE_6027", trigger_count = 0 },
	-- group全部重置
	{ config_id = 1006028, name = "ENTER_REGION_6028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6028", action = "action_EVENT_ENTER_REGION_6028" },
	-- 可以开始重置
	{ config_id = 1006029, name = "TIME_AXIS_PASS_6029", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_6029", action = "action_EVENT_TIME_AXIS_PASS_6029" }
}

-- 变量
variables = {
	{ config_id = 1, name = "presentGadget", value = 1, no_refresh = false },
	{ config_id = 2, name = "presentKill", value = 1, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 6010, gadget_id = 70900205, pos = { x = 3705.710, y = 248.061, z = 4938.241 }, rot = { x = 0.000, y = 305.670, z = 0.000 }, level = 5 },
		{ config_id = 6011, gadget_id = 70900205, pos = { x = 3705.710, y = 248.061, z = 4938.241 }, rot = { x = 0.000, y = 305.670, z = 0.000 }, level = 5 },
		{ config_id = 6013, gadget_id = 70900205, pos = { x = 3705.710, y = 248.061, z = 4938.241 }, rot = { x = 0.000, y = 305.670, z = 0.000 }, level = 5 },
		{ config_id = 6015, gadget_id = 70900205, pos = { x = 3714.925, y = 254.218, z = 4959.578 }, rot = { x = 0.000, y = 305.670, z = 30.000 }, level = 5 },
		{ config_id = 6016, gadget_id = 70900205, pos = { x = 3717.630, y = 255.445, z = 4963.348 }, rot = { x = 0.000, y = 305.670, z = 0.000 }, level = 5 },
		{ config_id = 6017, gadget_id = 70900205, pos = { x = 3721.688, y = 255.445, z = 4960.437 }, rot = { x = 0.000, y = 305.670, z = 0.000 }, level = 5 },
		{ config_id = 6018, gadget_id = 70900205, pos = { x = 3705.710, y = 248.061, z = 4938.241 }, rot = { x = 0.000, y = 305.670, z = 0.000 }, level = 5 },
		{ config_id = 6019, gadget_id = 70900205, pos = { x = 3725.760, y = 255.445, z = 4957.522 }, rot = { x = 0.000, y = 305.670, z = 0.000 }, level = 5 },
		{ config_id = 6021, gadget_id = 70310148, pos = { x = 3738.614, y = 257.962, z = 4959.673 }, rot = { x = 0.000, y = 201.318, z = 0.000 }, level = 5, persistent = true }
	},
	regions = {
		{ config_id = 6030, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 3722.059, y = 255.870, z = 4964.687 } }
	},
	triggers = {
		{ config_id = 1006030, name = "ENTER_REGION_6030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6030", action = "action_EVENT_ENTER_REGION_6030" }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
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
		gadgets = { 6001 },
		regions = { 6022, 6024 },
		triggers = { "ENTER_REGION_6022", "TIME_AXIS_PASS_6023", "ENTER_REGION_6024", "TIME_AXIS_PASS_6025", "TIME_AXIS_PASS_6026", "VARIABLE_CHANGE_6027", "TIME_AXIS_PASS_6029" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 6002, 6003, 6004, 6005, 6006, 6007, 6008, 6009, 6012, 6014, 6020, 6031, 6032, 6033, 6034, 6035 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 6028 },
		triggers = { "ENTER_REGION_6028" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_6022(context, evt)
	if evt.param1 ~= 6022 then return false end
	
	-- 判断是区域6022
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 6022 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6022(context, evt)
	-- 创建id为6002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 6002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 针对当前group内变量名为 "presentGadget" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "presentGadget", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建标识为"init_killRoad"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "init_killRoad", {5}, false)
	
	
	-- 创建标识为"createRoad"，时间节点为{1}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "createRoad", {1}, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_6023(context, evt)
	if "createRoad" ~= evt.source_name then
		return false
	end
	
	-- 判断变量"presentGadget"为defs.sumGadget
	if ScriptLib.GetGroupVariableValue(context, "presentGadget") > defs.sumGadget then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_6023(context, evt)
	local myPresentGadget = suites[2].gadgets[ScriptLib.GetGroupVariableValue(context, "presentGadget")]
	
	-- 创建id为ScriptLib.GetGroupVariableValue(context, "presentGadget")的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = myPresentGadget }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	    return -1
	end
	
	-- 针对当前group内变量名为 "presentGadget" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "presentGadget", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6024(context, evt)
	if evt.param1 ~= 6024 then return false end
	
	-- 判断是区域6024
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 6024 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6024(context, evt)
	-- 创建标识为"init_killRoad"，时间节点为{defs.delay}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "init_killRoad", {defs.delay}, false)
	
	
	-- 创建标识为"init_killRoad"，时间节点为{defs.resetTime}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "init_reset", {defs.delay}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_6025(context, evt)
	if "init_killRoad" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_6025(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133401006, EntityType.GADGET, 6002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "presentKill" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "presentKill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建标识为"killRoad"，时间节点为{1}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "killRoad", {1}, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_6026(context, evt)
	if "killRoad" ~= evt.source_name then
		return false
	end
	
	-- 判断变量"presentGadget"为defs.sumGadget
	if ScriptLib.GetGroupVariableValue(context, "presentKill") > defs.sumGadget then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_6026(context, evt)
	local myPresentGadget = suites[2].gadgets[ScriptLib.GetGroupVariableValue(context, "presentKill")]
	
	-- 卸载指定gadget
	if 0 ~= ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.GADGET, myPresentGadget ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	        return -1
	    end
	
	-- 针对当前group内变量名为 "presentKill" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "presentKill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"presentGadget"为defs.sumGadget
	if ScriptLib.GetGroupVariableValue(context, "presentKill") > defs.sumGadget then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6027(context, evt)
	-- 停止标识为"createRoad"的时间轴
	ScriptLib.EndTimeAxis(context, "createRoad")
	
	
	-- 停止标识为"killRoad"的时间轴
	ScriptLib.EndTimeAxis(context, "killRoad")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6028(context, evt)
	if evt.param1 ~= 6028 then return false end
	
	-- 判断是区域6028
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 6028 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6028(context, evt)
	-- 停止标识为"createRoad"的时间轴
	ScriptLib.EndTimeAxis(context, "createRoad")
	
	
	-- 停止标识为"killRoad"的时间轴
	ScriptLib.EndTimeAxis(context, "killRoad")
	
	
	-- 停止标识为"init_killRoad"的时间轴
	ScriptLib.EndTimeAxis(context, "init_killRoad")
	
	
	-- 停止标识为"init_reset"的时间轴
	ScriptLib.EndTimeAxis(context, "init_reset")
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133401006, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_6029(context, evt)
	if "init_reset" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_6029(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133401006, 3)
	
	return 0
end