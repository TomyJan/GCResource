-- 基础信息
local base_info = {
	group_id = 250101013
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
	{ config_id = 13001, gadget_id = 70330326, pos = { x = 2617.018, y = 249.439, z = 4787.842 }, rot = { x = 341.977, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13002, gadget_id = 70330326, pos = { x = 2618.088, y = 249.593, z = 4768.864 }, rot = { x = 15.400, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13003, gadget_id = 70330326, pos = { x = 2632.982, y = 249.006, z = 4780.548 }, rot = { x = 11.959, y = 357.679, z = 18.570 }, level = 1 },
	{ config_id = 13004, gadget_id = 70330326, pos = { x = 2605.453, y = 247.907, z = 4765.893 }, rot = { x = 16.960, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13008, gadget_id = 70211112, pos = { x = 2619.070, y = 245.296, z = 4776.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1013005, name = "ANY_GADGET_DIE_13005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_13005", trigger_count = 0 },
	{ config_id = 1013006, name = "VARIABLE_CHANGE_13006", event = EventType.EVENT_VARIABLE_CHANGE, source = "activecount", condition = "condition_EVENT_VARIABLE_CHANGE_13006", action = "action_EVENT_VARIABLE_CHANGE_13006", trigger_count = 0 },
	{ config_id = 1013007, name = "GADGET_STATE_CHANGE_13007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13007", action = "action_EVENT_GADGET_STATE_CHANGE_13007", trigger_count = 0 }
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
		gadgets = { 13001, 13002, 13003, 13004, 13008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_13005", "VARIABLE_CHANGE_13006", "GADGET_STATE_CHANGE_13007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_13005(context, evt)
	ScriptLib.ChangeGroupVariableValue(context, "activecount", 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_13006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activecount"为4
	if ScriptLib.GetGroupVariableValue(context, "activecount") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13006(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,13008, GadgetState.Default)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13007(context, evt)
	if 13008 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13007(context, evt)
	ScriptLib.AddQuestProgress(context, "ChestOpen_7904204")
	
	return 0
end