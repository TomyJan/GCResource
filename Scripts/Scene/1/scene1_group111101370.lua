-- 基础信息
local base_info = {
	group_id = 111101370
}

-- Trigger变量
local defs = {
	delay = 30,
	sumGadget = 16,
	resetTime = 5,
	group_id = 111101370
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
	{ config_id = 370001, gadget_id = 70900377, pos = { x = 2774.304, y = 194.982, z = -1797.505 }, rot = { x = 0.000, y = 100.777, z = 0.000 }, level = 1 },
	{ config_id = 370002, gadget_id = 70900205, pos = { x = 2773.450, y = 194.982, z = -1802.541 }, rot = { x = 0.000, y = 100.777, z = 0.000 }, level = 1 },
	{ config_id = 370003, gadget_id = 70900205, pos = { x = 2771.055, y = 197.037, z = -1802.215 }, rot = { x = 86.018, y = 280.777, z = 180.000 }, level = 1 },
	{ config_id = 370004, gadget_id = 70900205, pos = { x = 2778.379, y = 194.982, z = -1803.370 }, rot = { x = 0.000, y = 100.777, z = 0.000 }, level = 1 },
	{ config_id = 370005, gadget_id = 70900205, pos = { x = 2777.912, y = 196.730, z = -1805.825 }, rot = { x = 0.000, y = 100.777, z = 89.999 }, level = 1 },
	{ config_id = 370006, gadget_id = 70900205, pos = { x = 2783.291, y = 194.982, z = -1804.305 }, rot = { x = 0.000, y = 100.777, z = 0.000 }, level = 1 },
	{ config_id = 370007, gadget_id = 70900205, pos = { x = 2782.501, y = 196.281, z = -1808.485 }, rot = { x = 0.000, y = 100.777, z = 30.000 }, level = 1 },
	{ config_id = 370008, gadget_id = 70900205, pos = { x = 2779.300, y = 200.080, z = -1811.452 }, rot = { x = 59.997, y = 192.169, z = 90.000 }, level = 1 },
	{ config_id = 370009, gadget_id = 70900205, pos = { x = 2781.689, y = 198.781, z = -1812.735 }, rot = { x = 0.000, y = 100.777, z = 30.000 }, level = 1 },
	{ config_id = 370012, gadget_id = 70900205, pos = { x = 2780.795, y = 199.970, z = -1817.309 }, rot = { x = 0.000, y = 100.777, z = 0.000 }, level = 1 },
	{ config_id = 370014, gadget_id = 70900205, pos = { x = 2775.875, y = 199.982, z = -1816.342 }, rot = { x = 0.000, y = 100.777, z = 0.000 }, level = 1 },
	-- 14后
	{ config_id = 370020, gadget_id = 70900205, pos = { x = 2773.421, y = 201.482, z = -1815.871 }, rot = { x = 90.000, y = 100.777, z = 0.000 }, level = 1 },
	{ config_id = 370022, gadget_id = 70900205, pos = { x = 2775.045, y = 198.534, z = -1820.676 }, rot = { x = 0.000, y = 100.777, z = 323.001 }, level = 1 },
	{ config_id = 370023, gadget_id = 70900205, pos = { x = 2774.405, y = 197.095, z = -1824.654 }, rot = { x = 0.000, y = 100.777, z = 0.000 }, level = 1 },
	-- 16后
	{ config_id = 370024, gadget_id = 70900205, pos = { x = 2769.499, y = 197.095, z = -1823.722 }, rot = { x = 0.000, y = 100.777, z = 0.000 }, level = 1 },
	{ config_id = 370025, gadget_id = 70900205, pos = { x = 2764.578, y = 197.095, z = -1822.791 }, rot = { x = 0.000, y = 100.777, z = 0.000 }, level = 1 },
	{ config_id = 370026, gadget_id = 70900205, pos = { x = 2763.642, y = 197.095, z = -1827.703 }, rot = { x = 0.000, y = 100.777, z = 0.000 }, level = 1 },
	-- 模拟起点
	{ config_id = 370036, gadget_id = 70290480, pos = { x = 2774.901, y = 192.876, z = -1792.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 模拟终点
	{ config_id = 370037, gadget_id = 70290480, pos = { x = 2762.111, y = 195.354, z = -1833.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 创建第一个板子
	{ config_id = 370027, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2774.307, y = 194.964, z = -1797.214 } },
	-- ---- 创建第一个板子，init毁灭倒计时，reset
	{ config_id = 370029, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2774.325, y = 194.785, z = -1798.494 } },
	-- group全部重置
	{ config_id = 370033, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2774.325, y = 194.785, z = -1798.494 } }
}

-- 触发器
triggers = {
	-- 创建第一个板子
	{ config_id = 1370027, name = "ENTER_REGION_370027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_370027", action = "action_EVENT_ENTER_REGION_370027" },
	-- loop 创建下一个gadget
	{ config_id = 1370028, name = "TIME_AXIS_PASS_370028", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_370028", action = "action_EVENT_TIME_AXIS_PASS_370028", trigger_count = 0 },
	-- ---- 创建第一个板子，init毁灭倒计时，reset
	{ config_id = 1370029, name = "ENTER_REGION_370029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_370029", action = "action_EVENT_ENTER_REGION_370029" },
	-- 毁灭第一个板子
	{ config_id = 1370030, name = "TIME_AXIS_PASS_370030", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_370030", action = "action_EVENT_TIME_AXIS_PASS_370030" },
	-- loop 毁灭下一个gadget
	{ config_id = 1370031, name = "TIME_AXIS_PASS_370031", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_370031", action = "action_EVENT_TIME_AXIS_PASS_370031", trigger_count = 0 },
	-- 终止时间轴
	{ config_id = 1370032, name = "VARIABLE_CHANGE_370032", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_370032", action = "action_EVENT_VARIABLE_CHANGE_370032", trigger_count = 0 },
	-- group全部重置
	{ config_id = 1370033, name = "ENTER_REGION_370033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_370033", action = "action_EVENT_ENTER_REGION_370033" },
	-- 可以开始重置
	{ config_id = 1370034, name = "TIME_AXIS_PASS_370034", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_370034", action = "action_EVENT_TIME_AXIS_PASS_370034" }
}

-- 变量
variables = {
	{ config_id = 1, name = "presentGadget", value = 1, no_refresh = false },
	{ config_id = 2, name = "presentKill", value = 1, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 370010, gadget_id = 70900205, pos = { x = 2773.369, y = 194.982, z = -1802.417 }, rot = { x = 0.000, y = 100.777, z = 0.000 }, level = 1 },
		{ config_id = 370011, gadget_id = 70900205, pos = { x = 2773.369, y = 194.982, z = -1802.417 }, rot = { x = 0.000, y = 100.777, z = 0.000 }, level = 1 },
		{ config_id = 370013, gadget_id = 70900205, pos = { x = 2773.369, y = 194.982, z = -1802.417 }, rot = { x = 0.000, y = 100.777, z = 0.000 }, level = 1 },
		{ config_id = 370015, gadget_id = 70900205, pos = { x = 2773.991, y = 201.140, z = -1825.651 }, rot = { x = 0.000, y = 100.777, z = 30.000 }, level = 1 },
		{ config_id = 370016, gadget_id = 70900205, pos = { x = 2773.124, y = 202.367, z = -1830.209 }, rot = { x = 0.000, y = 100.777, z = 0.000 }, level = 1 },
		{ config_id = 370017, gadget_id = 70900205, pos = { x = 2768.218, y = 202.367, z = -1829.277 }, rot = { x = 0.000, y = 100.777, z = 0.000 }, level = 1 },
		{ config_id = 370018, gadget_id = 70900205, pos = { x = 2773.369, y = 194.982, z = -1802.417 }, rot = { x = 0.000, y = 100.777, z = 0.000 }, level = 1 },
		{ config_id = 370019, gadget_id = 70900205, pos = { x = 2763.297, y = 202.367, z = -1828.346 }, rot = { x = 0.000, y = 100.777, z = 0.000 }, level = 1 },
		{ config_id = 370021, gadget_id = 70310148, pos = { x = 2752.543, y = 204.884, z = -1835.708 }, rot = { x = 0.000, y = 356.426, z = 0.000 }, level = 1, persistent = true }
	},
	regions = {
		{ config_id = 370035, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 2769.670, y = 202.791, z = -1833.288 } }
	},
	triggers = {
		{ config_id = 1370035, name = "ENTER_REGION_370035", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_370035", action = "action_EVENT_ENTER_REGION_370035" }
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
		gadgets = { 370001, 370036, 370037 },
		regions = { 370027, 370029 },
		triggers = { "ENTER_REGION_370027", "TIME_AXIS_PASS_370028", "ENTER_REGION_370029", "TIME_AXIS_PASS_370030", "TIME_AXIS_PASS_370031", "VARIABLE_CHANGE_370032", "TIME_AXIS_PASS_370034" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 370002, 370003, 370004, 370005, 370006, 370007, 370008, 370009, 370012, 370014, 370020, 370022, 370023, 370024, 370025, 370026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 370033 },
		triggers = { "ENTER_REGION_370033" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_370027(context, evt)
	if evt.param1 ~= 370027 then return false end
	
	-- 判断是区域370027
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 370027 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_370027(context, evt)
	-- 创建id为370002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 370002 }) then
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
function condition_EVENT_TIME_AXIS_PASS_370028(context, evt)
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
function action_EVENT_TIME_AXIS_PASS_370028(context, evt)
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
function condition_EVENT_ENTER_REGION_370029(context, evt)
	if evt.param1 ~= 370029 then return false end
	
	-- 判断是区域370029
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 370029 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_370029(context, evt)
	-- 创建标识为"init_killRoad"，时间节点为{defs.delay}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "init_killRoad", {defs.delay}, false)
	
	
	-- 创建标识为"init_killRoad"，时间节点为{defs.resetTime}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "init_reset", {defs.delay}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_370030(context, evt)
	if "init_killRoad" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_370030(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 111101370, EntityType.GADGET, 370002 ) then
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
function condition_EVENT_TIME_AXIS_PASS_370031(context, evt)
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
function action_EVENT_TIME_AXIS_PASS_370031(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_370032(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"presentGadget"为defs.sumGadget
	if ScriptLib.GetGroupVariableValue(context, "presentKill") > defs.sumGadget then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_370032(context, evt)
	-- 停止标识为"createRoad"的时间轴
	ScriptLib.EndTimeAxis(context, "createRoad")
	
	
	-- 停止标识为"killRoad"的时间轴
	ScriptLib.EndTimeAxis(context, "killRoad")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_370033(context, evt)
	if evt.param1 ~= 370033 then return false end
	
	-- 判断是区域370033
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 370033 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_370033(context, evt)
	-- 停止标识为"createRoad"的时间轴
	ScriptLib.EndTimeAxis(context, "createRoad")
	
	
	-- 停止标识为"killRoad"的时间轴
	ScriptLib.EndTimeAxis(context, "killRoad")
	
	
	-- 停止标识为"init_killRoad"的时间轴
	ScriptLib.EndTimeAxis(context, "init_killRoad")
	
	
	-- 停止标识为"init_reset"的时间轴
	ScriptLib.EndTimeAxis(context, "init_reset")
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101370, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_370034(context, evt)
	if "init_reset" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_370034(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101370, 3)
	
	return 0
end