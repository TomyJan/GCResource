-- 基础信息
local base_info = {
	group_id = 250101041
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
	{ config_id = 41001, gadget_id = 70330327, pos = { x = 2666.162, y = 215.517, z = 5026.227 }, rot = { x = 9.690, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 41002, gadget_id = 70211111, pos = { x = 2666.156, y = 214.592, z = 5025.995 }, rot = { x = 350.311, y = 179.294, z = 0.119 }, level = 1, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1041003, name = "ANY_GADGET_DIE_41003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_41003", action = "action_EVENT_ANY_GADGET_DIE_41003" },
	{ config_id = 1041004, name = "GADGET_STATE_CHANGE_41004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41004", action = "action_EVENT_GADGET_STATE_CHANGE_41004", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 41001, 41002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_41003", "GADGET_STATE_CHANGE_41004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_41003(context, evt)
	if 41001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_41003(context, evt)
	-- 将configid为 41002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41004(context, evt)
	if 41002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41004(context, evt)
	ScriptLib.AddQuestProgress(context, "ChestOpen_7904215")
	
	return 0
end