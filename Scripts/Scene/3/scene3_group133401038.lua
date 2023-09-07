-- 基础信息
local base_info = {
	group_id = 133401038
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 38006, monster_id = 20050501, pos = { x = 3545.017, y = 104.664, z = 4527.425 }, rot = { x = 0.000, y = 96.122, z = 0.000 }, level = 1, drop_tag = "魔法生物" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 38001, gadget_id = 70210102, pos = { x = 3547.240, y = 101.643, z = 4587.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 38002, gadget_id = 70290521, pos = { x = 3542.327, y = 108.572, z = 4543.623 }, rot = { x = 0.000, y = 179.479, z = 0.000 }, level = 1 },
	{ config_id = 38003, gadget_id = 70290521, pos = { x = 3545.477, y = 113.680, z = 4527.466 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 38008, gadget_id = 70690029, pos = { x = 3544.697, y = 104.664, z = 4527.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 38009, gadget_id = 70290437, pos = { x = 3529.904, y = 104.878, z = 4527.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 38011, gadget_id = 70290521, pos = { x = 3568.626, y = 99.661, z = 4585.947 }, rot = { x = 0.000, y = 97.497, z = 0.000 }, level = 1 },
	{ config_id = 38012, gadget_id = 70290521, pos = { x = 3569.530, y = 99.661, z = 4592.816 }, rot = { x = 0.000, y = 97.497, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 38004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 3604.343, y = 93.041, z = 4587.248 } },
	{ config_id = 38005, shape = RegionShape.SPHERE, radius = 8, pos = { x = 3544.035, y = 104.664, z = 4526.994 } }
}

-- 触发器
triggers = {
	{ config_id = 1038004, name = "ENTER_REGION_38004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_38004", action = "action_EVENT_ENTER_REGION_38004" },
	{ config_id = 1038005, name = "ENTER_REGION_38005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_38005", action = "action_EVENT_ENTER_REGION_38005" },
	{ config_id = 1038007, name = "ANY_MONSTER_DIE_38007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38007", action = "action_EVENT_ANY_MONSTER_DIE_38007" },
	{ config_id = 1038010, name = "ANY_GADGET_DIE_38010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_38010", action = "action_EVENT_ANY_GADGET_DIE_38010" }
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
		gadgets = { 38001, 38002, 38003, 38011, 38012 },
		regions = { 38004 },
		triggers = { "ENTER_REGION_38004", "ANY_MONSTER_DIE_38007", "ANY_GADGET_DIE_38010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 38005 },
		triggers = { "ENTER_REGION_38005", "ANY_MONSTER_DIE_38007", "ANY_GADGET_DIE_38010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 38006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_38007", "ANY_GADGET_DIE_38010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 38008, 38009 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_38010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_38004(context, evt)
	if evt.param1 ~= 38004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_38004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133401038, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_38005(context, evt)
	if evt.param1 ~= 38005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_38005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133401038, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_38007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38007(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 38003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133401038, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_38010(context, evt)
	if 38009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_38010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 38002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 38011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 38012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end