-- 基础信息
local base_info = {
	group_id = 133401047
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 47013, monster_id = 20050302, pos = { x = 3719.039, y = 93.521, z = 4863.144 }, rot = { x = 0.000, y = 202.969, z = 0.000 }, level = 1, drop_tag = "魔法生物" },
	{ config_id = 47014, monster_id = 20050302, pos = { x = 3704.368, y = 93.521, z = 4859.003 }, rot = { x = 0.000, y = 126.189, z = 0.000 }, level = 1, drop_tag = "魔法生物" },
	{ config_id = 47015, monster_id = 20050302, pos = { x = 3719.039, y = 103.468, z = 4863.144 }, rot = { x = 0.000, y = 202.969, z = 0.000 }, level = 1, drop_tag = "魔法生物" },
	{ config_id = 47016, monster_id = 20050302, pos = { x = 3704.368, y = 103.468, z = 4859.003 }, rot = { x = 0.000, y = 126.189, z = 0.000 }, level = 1, drop_tag = "魔法生物" },
	{ config_id = 47017, monster_id = 20050302, pos = { x = 3719.039, y = 113.489, z = 4863.144 }, rot = { x = 0.000, y = 202.969, z = 0.000 }, level = 1, drop_tag = "魔法生物" },
	{ config_id = 47018, monster_id = 20050302, pos = { x = 3704.368, y = 113.489, z = 4859.003 }, rot = { x = 0.000, y = 126.189, z = 0.000 }, level = 1, drop_tag = "魔法生物" },
	{ config_id = 47019, monster_id = 20050501, pos = { x = 3782.294, y = 115.600, z = 4789.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物" },
	{ config_id = 47020, monster_id = 20050501, pos = { x = 3782.188, y = 105.600, z = 4789.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物" },
	{ config_id = 47021, monster_id = 20050501, pos = { x = 3782.535, y = 95.600, z = 4790.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 47001, gadget_id = 70350081, pos = { x = 3788.567, y = 123.521, z = 4857.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 47002, gadget_id = 70330021, pos = { x = 3794.581, y = 113.521, z = 4873.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 47003, gadget_id = 70330019, pos = { x = 3721.435, y = 99.340, z = 4779.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 47004, gadget_id = 70360106, pos = { x = 3708.359, y = 99.340, z = 4791.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 47005, gadget_id = 70360106, pos = { x = 3708.359, y = 109.219, z = 4791.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 47006, gadget_id = 70330019, pos = { x = 3721.926, y = 109.340, z = 4780.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 47007, gadget_id = 70210102, pos = { x = 3706.375, y = 110.191, z = 4790.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 47008, gadget_id = 70210102, pos = { x = 3706.536, y = 100.181, z = 4790.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 47011, gadget_id = 70330021, pos = { x = 3794.118, y = 103.521, z = 4873.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 47012, gadget_id = 70330021, pos = { x = 3712.401, y = 93.521, z = 4864.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1047009, name = "GADGET_STATE_CHANGE_47009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_47009", action = "action_EVENT_GADGET_STATE_CHANGE_47009" },
	{ config_id = 1047010, name = "GADGET_STATE_CHANGE_47010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_47010", action = "action_EVENT_GADGET_STATE_CHANGE_47010" }
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
		monsters = { 47013, 47014, 47015, 47016, 47017, 47018, 47019, 47020, 47021 },
		gadgets = { 47001, 47002, 47003, 47004, 47005, 47006, 47007, 47008, 47011, 47012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_47009", "GADGET_STATE_CHANGE_47010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_47009(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133401047, 47003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_47009(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 47004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_47010(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133401047, 47006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_47010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 47005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end