-- 基础信息
local base_info = {
	group_id = 250101008
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
	{ config_id = 8001, gadget_id = 70330326, pos = { x = 2557.047, y = 248.706, z = 4788.080 }, rot = { x = 0.000, y = 81.000, z = 12.001 }, level = 1 },
	{ config_id = 8002, gadget_id = 70330326, pos = { x = 2559.457, y = 248.490, z = 4812.267 }, rot = { x = 0.000, y = 81.000, z = 12.001 }, level = 1 },
	{ config_id = 8003, gadget_id = 70330326, pos = { x = 2547.994, y = 247.640, z = 4802.082 }, rot = { x = 4.851, y = 57.467, z = 342.990 }, level = 1 },
	{ config_id = 8004, gadget_id = 70330326, pos = { x = 2570.873, y = 248.724, z = 4800.430 }, rot = { x = 4.851, y = 57.467, z = 342.990 }, level = 1 },
	{ config_id = 8005, gadget_id = 70330326, pos = { x = 2571.292, y = 247.149, z = 4785.280 }, rot = { x = 4.851, y = 57.467, z = 342.990 }, level = 1 },
	{ config_id = 8006, gadget_id = 70211112, pos = { x = 2557.891, y = 247.221, z = 4798.471 }, rot = { x = 0.000, y = 59.691, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008007, name = "ANY_GADGET_DIE_8007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_8007", trigger_count = 0 },
	{ config_id = 1008008, name = "VARIABLE_CHANGE_8008", event = EventType.EVENT_VARIABLE_CHANGE, source = "activecount", condition = "condition_EVENT_VARIABLE_CHANGE_8008", action = "action_EVENT_VARIABLE_CHANGE_8008", trigger_count = 0 },
	{ config_id = 1008009, name = "GADGET_STATE_CHANGE_8009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8009", action = "action_EVENT_GADGET_STATE_CHANGE_8009", trigger_count = 0 }
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
		gadgets = { 8001, 8002, 8003, 8004, 8005, 8006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_8007", "VARIABLE_CHANGE_8008", "GADGET_STATE_CHANGE_8009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_8007(context, evt)
	-- 针对当前group内变量名为 "activecount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "activecount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activecount"为5
	if ScriptLib.GetGroupVariableValue(context, "activecount") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8008(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,8006, GadgetState.Default)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8009(context, evt)
	if 8006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8009(context, evt)
	ScriptLib.AddQuestProgress(context, "ChestOpen_7904205")
	
	return 0
end