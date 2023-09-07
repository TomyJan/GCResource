-- 基础信息
local base_info = {
	group_id = 250101007
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
	{ config_id = 7004, gadget_id = 70290522, pos = { x = 2665.827, y = 332.789, z = 4814.266 }, rot = { x = 356.427, y = 353.276, z = 10.601 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 7005, gadget_id = 70290522, pos = { x = 2662.725, y = 338.979, z = 4803.849 }, rot = { x = 356.427, y = 353.276, z = 10.601 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 7006, gadget_id = 70290522, pos = { x = 2652.786, y = 333.356, z = 4815.608 }, rot = { x = 283.888, y = 308.829, z = 25.445 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 7007, gadget_id = 70290522, pos = { x = 2650.203, y = 341.677, z = 4809.733 }, rot = { x = 49.443, y = 41.732, z = 45.519 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 7008, gadget_id = 70290522, pos = { x = 2647.014, y = 327.871, z = 4803.032 }, rot = { x = 331.281, y = 22.639, z = 349.211 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 7009, gadget_id = 70211112, pos = { x = 2638.216, y = 328.414, z = 4804.550 }, rot = { x = 4.886, y = 92.014, z = 10.896 }, level = 1, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007010, name = "ANY_GADGET_DIE_7010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_7010", trigger_count = 0 },
	{ config_id = 1007011, name = "VARIABLE_CHANGE_7011", event = EventType.EVENT_VARIABLE_CHANGE, source = "activecount", condition = "condition_EVENT_VARIABLE_CHANGE_7011", action = "action_EVENT_VARIABLE_CHANGE_7011", trigger_count = 0 },
	{ config_id = 1007012, name = "GADGET_STATE_CHANGE_7012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7012", action = "action_EVENT_GADGET_STATE_CHANGE_7012", trigger_count = 0 }
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
		gadgets = { 7004, 7005, 7006, 7007, 7008, 7009 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_7010", "VARIABLE_CHANGE_7011", "GADGET_STATE_CHANGE_7012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_7010(context, evt)
	-- 针对当前group内变量名为 "activecount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "activecount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activecount"为5
	if ScriptLib.GetGroupVariableValue(context, "activecount") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7011(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,7009, GadgetState.Default)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7012(context, evt)
	if 7009 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7012(context, evt)
	ScriptLib.AddQuestProgress(context, "ChestOpen_7904202")
	
	return 0
end