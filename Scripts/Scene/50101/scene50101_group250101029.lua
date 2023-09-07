-- 基础信息
local base_info = {
	group_id = 250101029
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
	{ config_id = 29001, gadget_id = 70330326, pos = { x = 2368.822, y = 251.522, z = 4991.525 }, rot = { x = 301.818, y = 3.025, z = 16.081 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 29002, gadget_id = 70330326, pos = { x = 2374.389, y = 248.617, z = 4987.500 }, rot = { x = 329.231, y = 329.755, z = 30.391 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 29003, gadget_id = 70330326, pos = { x = 2377.629, y = 251.746, z = 4976.835 }, rot = { x = 354.915, y = 284.126, z = 327.984 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 29004, gadget_id = 70330326, pos = { x = 2381.916, y = 251.550, z = 4984.574 }, rot = { x = 42.665, y = 252.818, z = 33.291 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 29005, gadget_id = 70330326, pos = { x = 2365.261, y = 248.949, z = 4975.602 }, rot = { x = 28.521, y = 250.645, z = 317.113 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 29006, gadget_id = 70211112, pos = { x = 2373.275, y = 251.906, z = 4977.525 }, rot = { x = 7.666, y = 359.421, z = 342.983 }, level = 1, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1029007, name = "ANY_GADGET_DIE_29007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_29007", trigger_count = 0 },
	{ config_id = 1029008, name = "VARIABLE_CHANGE_29008", event = EventType.EVENT_VARIABLE_CHANGE, source = "activecount", condition = "condition_EVENT_VARIABLE_CHANGE_29008", action = "action_EVENT_VARIABLE_CHANGE_29008", trigger_count = 0 },
	{ config_id = 1029009, name = "GADGET_STATE_CHANGE_29009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_29009", action = "action_EVENT_GADGET_STATE_CHANGE_29009", trigger_count = 0 }
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
		gadgets = { 29001, 29002, 29003, 29004, 29005, 29006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_29007", "VARIABLE_CHANGE_29008", "GADGET_STATE_CHANGE_29009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_29007(context, evt)
	-- 针对当前group内变量名为 "activecount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "activecount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_29008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activecount"为5
	if ScriptLib.GetGroupVariableValue(context, "activecount") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_29008(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,29006, GadgetState.Default)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_29009(context, evt)
	if 29006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_29009(context, evt)
	ScriptLib.AddQuestProgress(context, "ChestOpen_7904211")
	
	return 0
end