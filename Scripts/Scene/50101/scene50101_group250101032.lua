-- 基础信息
local base_info = {
	group_id = 250101032
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
	{ config_id = 32001, gadget_id = 70330326, pos = { x = 2615.508, y = 215.912, z = 4989.308 }, rot = { x = 0.000, y = 81.000, z = 12.001 }, level = 1 },
	{ config_id = 32002, gadget_id = 70330326, pos = { x = 2617.845, y = 217.861, z = 5013.949 }, rot = { x = 0.000, y = 81.000, z = 12.001 }, level = 1 },
	{ config_id = 32003, gadget_id = 70330326, pos = { x = 2606.382, y = 217.011, z = 5003.764 }, rot = { x = 4.851, y = 57.467, z = 342.990 }, level = 1 },
	{ config_id = 32004, gadget_id = 70330326, pos = { x = 2629.261, y = 218.095, z = 5002.112 }, rot = { x = 4.851, y = 57.467, z = 342.990 }, level = 1 },
	{ config_id = 32005, gadget_id = 70330326, pos = { x = 2629.680, y = 216.520, z = 4986.962 }, rot = { x = 4.851, y = 57.467, z = 342.990 }, level = 1 },
	{ config_id = 32006, gadget_id = 70211112, pos = { x = 2616.280, y = 216.591, z = 5000.153 }, rot = { x = 0.000, y = 59.691, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1032007, name = "ANY_GADGET_DIE_32007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_32007", trigger_count = 0 },
	{ config_id = 1032008, name = "VARIABLE_CHANGE_32008", event = EventType.EVENT_VARIABLE_CHANGE, source = "activecount", condition = "condition_EVENT_VARIABLE_CHANGE_32008", action = "action_EVENT_VARIABLE_CHANGE_32008", trigger_count = 0 },
	{ config_id = 1032009, name = "GADGET_STATE_CHANGE_32009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32009", action = "action_EVENT_GADGET_STATE_CHANGE_32009", trigger_count = 0 }
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
		gadgets = { 32001, 32002, 32003, 32004, 32005, 32006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_32007", "VARIABLE_CHANGE_32008", "GADGET_STATE_CHANGE_32009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_32007(context, evt)
	-- 针对当前group内变量名为 "activecount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "activecount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_32008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activecount"为5
	if ScriptLib.GetGroupVariableValue(context, "activecount") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_32008(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,32006, GadgetState.Default)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32009(context, evt)
	if 32006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32009(context, evt)
	ScriptLib.AddQuestProgress(context, "ChestOpen_7904214")
	
	return 0
end