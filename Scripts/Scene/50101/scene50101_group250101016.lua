-- 基础信息
local base_info = {
	group_id = 250101016
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
	{ config_id = 16001, gadget_id = 70290524, pos = { x = 2467.786, y = 251.276, z = 4812.572 }, rot = { x = 48.003, y = 336.250, z = 300.171 }, level = 1, persistent = true },
	{ config_id = 16002, gadget_id = 70290524, pos = { x = 2470.562, y = 263.234, z = 4820.557 }, rot = { x = 12.692, y = 7.183, z = 212.269 }, level = 1, persistent = true },
	{ config_id = 16003, gadget_id = 70290524, pos = { x = 2477.945, y = 255.978, z = 4822.328 }, rot = { x = 291.185, y = 324.177, z = 83.421 }, level = 1, persistent = true },
	{ config_id = 16004, gadget_id = 70211112, pos = { x = 2471.083, y = 250.069, z = 4818.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1016005, name = "GADGET_STATE_CHANGE_16005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_16005", trigger_count = 0 },
	{ config_id = 1016006, name = "VARIABLE_CHANGE_16006", event = EventType.EVENT_VARIABLE_CHANGE, source = "activecount", condition = "condition_EVENT_VARIABLE_CHANGE_16006", action = "action_EVENT_VARIABLE_CHANGE_16006", trigger_count = 0 },
	{ config_id = 1016007, name = "GADGET_STATE_CHANGE_16007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_16007", action = "action_EVENT_GADGET_STATE_CHANGE_16007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "activecount", value = 0, no_refresh = true }
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
		gadgets = { 16001, 16002, 16003, 16004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_16005", "VARIABLE_CHANGE_16006", "GADGET_STATE_CHANGE_16007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_16005(context, evt)
	-- 针对当前group内变量名为 "activecount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "activecount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_16006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activecount"为3
	if ScriptLib.GetGroupVariableValue(context, "activecount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_16006(context, evt)
	-- 将configid为 16004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 16004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_16007(context, evt)
	if 16004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_16007(context, evt)
	ScriptLib.AddQuestProgress(context, "ChestOpen_7904206")
	
	return 0
end