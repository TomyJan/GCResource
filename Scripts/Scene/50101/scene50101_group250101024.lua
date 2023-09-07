-- 基础信息
local base_info = {
	group_id = 250101024
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 24006, monster_id = 28070101, pos = { x = 2200.840, y = 148.398, z = 4678.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 24001, gadget_id = 70217001, pos = { x = 2191.122, y = 151.877, z = 4663.592 }, rot = { x = 356.698, y = 48.412, z = 11.519 }, level = 1, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 24002, gadget_id = 70290521, pos = { x = 2192.841, y = 153.884, z = 4665.052 }, rot = { x = 0.000, y = 51.164, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 24003, gadget_id = 70290524, pos = { x = 2196.508, y = 150.489, z = 4664.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 24004, gadget_id = 70290524, pos = { x = 2193.055, y = 150.486, z = 4668.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1024005, name = "GADGET_STATE_CHANGE_24005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_24005", action = "action_EVENT_GADGET_STATE_CHANGE_24005", trigger_count = 0 },
	{ config_id = 1024007, name = "GADGET_STATE_CHANGE_24007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_24007", action = "action_EVENT_GADGET_STATE_CHANGE_24007", trigger_count = 0 }
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
		monsters = { 24006 },
		gadgets = { 24001, 24002, 24003, 24004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_24005", "GADGET_STATE_CHANGE_24007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_24005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 250101024, 24003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 250101024, 24004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_24005(context, evt)
	-- 将configid为 24002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 24002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 24001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 24001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_24007(context, evt)
	if 24001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_24007(context, evt)
	ScriptLib.AddQuestProgress(context, "ChestOpen_7904210")
	
	return 0
end