-- 基础信息
local base_info = {
	group_id = 133401034
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
	{ config_id = 34001, gadget_id = 70900444, pos = { x = 3454.961, y = 483.825, z = 4470.021 }, rot = { x = 0.000, y = 224.207, z = 0.000 }, level = 1, route_id = 340100013, start_route = false, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1034002, name = "VARIABLE_CHANGE_34002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_34002", action = "action_EVENT_VARIABLE_CHANGE_34002", trigger_count = 0 },
	{ config_id = 1034003, name = "VARIABLE_CHANGE_34003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_34003", action = "action_EVENT_VARIABLE_CHANGE_34003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "controller", value = 0, no_refresh = true }
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
		gadgets = { 34001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_34002", "VARIABLE_CHANGE_34003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_34002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"controller"为1
	if ScriptLib.GetGroupVariableValue(context, "controller") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_34002(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 34001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_34003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"controller"为0
	if ScriptLib.GetGroupVariableValue(context, "controller") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_34003(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 34001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end