-- 基础信息
local base_info = {
	group_id = 250101022
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
	{ config_id = 22002, gadget_id = 70330326, pos = { x = 2249.290, y = 144.303, z = 4713.333 }, rot = { x = 359.385, y = 306.944, z = 15.894 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 22003, gadget_id = 70330326, pos = { x = 2235.850, y = 141.657, z = 4703.361 }, rot = { x = 28.164, y = 307.682, z = 326.373 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 22004, gadget_id = 70330326, pos = { x = 2236.933, y = 139.665, z = 4719.477 }, rot = { x = 357.861, y = 311.601, z = 24.030 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 22006, gadget_id = 70211112, pos = { x = 2243.137, y = 142.454, z = 4712.276 }, rot = { x = 3.811, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1022007, name = "ANY_GADGET_DIE_22007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_22007", trigger_count = 0 },
	{ config_id = 1022008, name = "VARIABLE_CHANGE_22008", event = EventType.EVENT_VARIABLE_CHANGE, source = "activecount", condition = "condition_EVENT_VARIABLE_CHANGE_22008", action = "action_EVENT_VARIABLE_CHANGE_22008", trigger_count = 0 },
	{ config_id = 1022009, name = "GADGET_STATE_CHANGE_22009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_22009", action = "action_EVENT_GADGET_STATE_CHANGE_22009", trigger_count = 0 }
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
		gadgets = { 22002, 22003, 22004, 22006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_22007", "VARIABLE_CHANGE_22008", "GADGET_STATE_CHANGE_22009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_22007(context, evt)
	-- 针对当前group内变量名为 "activecount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "activecount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_22008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activecount"为3
	if ScriptLib.GetGroupVariableValue(context, "activecount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_22008(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,22006, GadgetState.Default)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_22009(context, evt)
	if 22006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_22009(context, evt)
	ScriptLib.AddQuestProgress(context, "ChestOpen_7904209")
	
	return 0
end