-- 基础信息
local base_info = {
	group_id = 133401015
}

-- Trigger变量
local defs = {
	delay = 15,
	sumGadget = 5,
	resetTime = 5,
	group_id = 133401015
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
	{ config_id = 15001, gadget_id = 70900377, pos = { x = 3722.939, y = 290.285, z = 4987.484 }, rot = { x = 0.000, y = 81.415, z = 0.000 }, level = 5 },
	{ config_id = 15002, gadget_id = 70900205, pos = { x = 3723.685, y = 290.285, z = 4982.541 }, rot = { x = 0.000, y = 81.415, z = 0.000 }, level = 5 },
	{ config_id = 15003, gadget_id = 70900205, pos = { x = 3718.741, y = 290.285, z = 4981.794 }, rot = { x = 0.000, y = 81.415, z = 0.000 }, level = 5 },
	{ config_id = 15004, gadget_id = 70900205, pos = { x = 3714.213, y = 291.494, z = 4981.110 }, rot = { x = 30.000, y = 81.415, z = 0.000 }, level = 5 },
	{ config_id = 15005, gadget_id = 70900205, pos = { x = 3709.931, y = 293.994, z = 4980.463 }, rot = { x = 30.000, y = 81.415, z = 0.000 }, level = 5 },
	{ config_id = 15006, gadget_id = 70900205, pos = { x = 3705.392, y = 295.285, z = 4979.780 }, rot = { x = 0.000, y = 81.415, z = 0.000 }, level = 5 },
	-- 固定板终点
	{ config_id = 15020, gadget_id = 70900205, pos = { x = 3714.819, y = 300.170, z = 4944.145 }, rot = { x = 0.000, y = 81.415, z = 0.000 }, level = 5 },
	-- 终点提示
	{ config_id = 15021, gadget_id = 70310148, pos = { x = 3715.074, y = 300.186, z = 4944.227 }, rot = { x = 0.000, y = 337.064, z = 0.000 }, level = 5, persistent = true }
}

-- 区域
regions = {
	-- 创建第一个板子
	{ config_id = 15022, shape = RegionShape.SPHERE, radius = 2, pos = { x = 3722.846, y = 290.267, z = 4987.757 } },
	-- ---- 创建第一个板子，init毁灭倒计时，reset
	{ config_id = 15024, shape = RegionShape.SPHERE, radius = 2, pos = { x = 3723.291, y = 290.088, z = 4986.557 } },
	-- group全部重置
	{ config_id = 15028, shape = RegionShape.SPHERE, radius = 2, pos = { x = 3723.291, y = 290.088, z = 4986.557 } },
	-- kill光柱
	{ config_id = 15030, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 3730.432, y = 298.094, z = 4952.188 } }
}

-- 触发器
triggers = {
	-- 创建第一个板子
	{ config_id = 1015022, name = "ENTER_REGION_15022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15022", action = "action_EVENT_ENTER_REGION_15022" },
	-- loop 创建下一个gadget
	{ config_id = 1015023, name = "TIME_AXIS_PASS_15023", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_15023", action = "action_EVENT_TIME_AXIS_PASS_15023", trigger_count = 0 },
	-- ---- 创建第一个板子，init毁灭倒计时，reset
	{ config_id = 1015024, name = "ENTER_REGION_15024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15024", action = "action_EVENT_ENTER_REGION_15024" },
	-- 毁灭第一个板子
	{ config_id = 1015025, name = "TIME_AXIS_PASS_15025", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_15025", action = "action_EVENT_TIME_AXIS_PASS_15025" },
	-- loop 毁灭下一个gadget
	{ config_id = 1015026, name = "TIME_AXIS_PASS_15026", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_15026", action = "action_EVENT_TIME_AXIS_PASS_15026", trigger_count = 0 },
	-- 终止时间轴
	{ config_id = 1015027, name = "VARIABLE_CHANGE_15027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_15027", action = "action_EVENT_VARIABLE_CHANGE_15027", trigger_count = 0 },
	-- group全部重置
	{ config_id = 1015028, name = "ENTER_REGION_15028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15028", action = "action_EVENT_ENTER_REGION_15028" },
	-- 可以开始重置
	{ config_id = 1015029, name = "TIME_AXIS_PASS_15029", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_15029", action = "action_EVENT_TIME_AXIS_PASS_15029" },
	-- kill光柱
	{ config_id = 1015030, name = "ENTER_REGION_15030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15030", action = "action_EVENT_ENTER_REGION_15030" }
}

-- 变量
variables = {
	{ config_id = 1, name = "presentGadget", value = 1, no_refresh = false },
	{ config_id = 2, name = "presentKill", value = 1, no_refresh = false }
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
		gadgets = { 15001, 15020 },
		regions = { 15022, 15024, 15030 },
		triggers = { "ENTER_REGION_15022", "TIME_AXIS_PASS_15023", "ENTER_REGION_15024", "TIME_AXIS_PASS_15025", "TIME_AXIS_PASS_15026", "VARIABLE_CHANGE_15027", "TIME_AXIS_PASS_15029", "ENTER_REGION_15030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 15002, 15003, 15004, 15005, 15006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 15028 },
		triggers = { "ENTER_REGION_15028" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_15022(context, evt)
	if evt.param1 ~= 15022 then return false end
	
	-- 判断是区域15022
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 15022 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15022(context, evt)
	-- 创建id为15002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 15002 }) then
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
	
	
	-- 创建id为15021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 15021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_15023(context, evt)
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
function action_EVENT_TIME_AXIS_PASS_15023(context, evt)
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
function condition_EVENT_ENTER_REGION_15024(context, evt)
	if evt.param1 ~= 15024 then return false end
	
	-- 判断是区域15024
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 15024 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15024(context, evt)
	-- 创建标识为"init_killRoad"，时间节点为{defs.delay}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "init_killRoad", {defs.delay}, false)
	
	
	-- 创建标识为"init_killRoad"，时间节点为{defs.resetTime}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "init_reset", {defs.delay}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_15025(context, evt)
	if "init_killRoad" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_15025(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133401015, EntityType.GADGET, 15002 ) then
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
function condition_EVENT_TIME_AXIS_PASS_15026(context, evt)
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
function action_EVENT_TIME_AXIS_PASS_15026(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_15027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"presentGadget"为defs.sumGadget
	if ScriptLib.GetGroupVariableValue(context, "presentKill") > defs.sumGadget then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_15027(context, evt)
	-- 停止标识为"createRoad"的时间轴
	ScriptLib.EndTimeAxis(context, "createRoad")
	
	
	-- 停止标识为"killRoad"的时间轴
	ScriptLib.EndTimeAxis(context, "killRoad")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15028(context, evt)
	if evt.param1 ~= 15028 then return false end
	
	-- 判断是区域15028
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 15028 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15028(context, evt)
	-- 停止标识为"createRoad"的时间轴
	ScriptLib.EndTimeAxis(context, "createRoad")
	
	
	-- 停止标识为"killRoad"的时间轴
	ScriptLib.EndTimeAxis(context, "killRoad")
	
	
	-- 停止标识为"init_killRoad"的时间轴
	ScriptLib.EndTimeAxis(context, "init_killRoad")
	
	
	-- 停止标识为"init_reset"的时间轴
	ScriptLib.EndTimeAxis(context, "init_reset")
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133401015, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_15029(context, evt)
	if "init_reset" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_15029(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133401015, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15030(context, evt)
	if evt.param1 ~= 15030 then return false end
	
	-- 判断是区域15030
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 15030 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15030(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133401015, EntityType.GADGET, 15021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end