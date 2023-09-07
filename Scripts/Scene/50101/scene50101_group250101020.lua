-- 基础信息
local base_info = {
	group_id = 250101020
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
	{ config_id = 20001, gadget_id = 70330329, pos = { x = 2343.959, y = 240.988, z = 4700.040 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 20002, gadget_id = 70330329, pos = { x = 2332.722, y = 247.609, z = 4682.454 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 20003, gadget_id = 70330329, pos = { x = 2318.974, y = 246.375, z = 4719.003 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 20004, gadget_id = 70330329, pos = { x = 2346.118, y = 223.743, z = 4719.856 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 20005, gadget_id = 70330329, pos = { x = 2377.272, y = 239.262, z = 4692.119 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 20007, gadget_id = 70330329, pos = { x = 2294.367, y = 229.481, z = 4680.921 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 20008, gadget_id = 70211122, pos = { x = 2332.349, y = 235.887, z = 4709.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1020009, name = "ANY_GADGET_DIE_20009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_20009", trigger_count = 0 },
	{ config_id = 1020010, name = "VARIABLE_CHANGE_20010", event = EventType.EVENT_VARIABLE_CHANGE, source = "activecount", condition = "condition_EVENT_VARIABLE_CHANGE_20010", action = "action_EVENT_VARIABLE_CHANGE_20010", trigger_count = 0 },
	{ config_id = 1020011, name = "GADGET_STATE_CHANGE_20011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_20011", action = "action_EVENT_GADGET_STATE_CHANGE_20011", trigger_count = 0 }
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
		gadgets = { 20001, 20002, 20003, 20004, 20005, 20007, 20008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_20009", "VARIABLE_CHANGE_20010", "GADGET_STATE_CHANGE_20011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_20009(context, evt)
	-- 针对当前group内变量名为 "activecount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "activecount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_20010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activecount"为6
	if ScriptLib.GetGroupVariableValue(context, "activecount") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_20010(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,20008, GadgetState.Default)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_20011(context, evt)
	if 20008 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_20011(context, evt)
	ScriptLib.AddQuestProgress(context, "ChestOpen_7904207")
	
	return 0
end