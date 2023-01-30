-- 基础信息
local base_info = {
	group_id = 133308719
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 719001, monster_id = 20011401, pos = { x = -1105.739, y = 98.998, z = 5095.905 }, rot = { x = 0.000, y = 44.770, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 32 },
	{ config_id = 719002, monster_id = 20011401, pos = { x = -1103.570, y = 100.112, z = 5093.162 }, rot = { x = 0.000, y = 103.180, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 32 },
	{ config_id = 719003, monster_id = 20011501, pos = { x = -1105.829, y = 98.996, z = 5093.493 }, rot = { x = 0.000, y = 62.572, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 719004, gadget_id = 70211102, pos = { x = -1104.205, y = 100.188, z = 5098.046 }, rot = { x = 324.006, y = 70.948, z = 0.134 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 719005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1105.020, y = 99.586, z = 5097.348 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1719005, name = "ENTER_REGION_719005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_719005", action = "action_EVENT_ENTER_REGION_719005" },
	{ config_id = 1719006, name = "ANY_MONSTER_DIE_719006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_719006", action = "action_EVENT_ANY_MONSTER_DIE_719006" }
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
		gadgets = { 719004 },
		regions = { 719005 },
		triggers = { "ENTER_REGION_719005", "ANY_MONSTER_DIE_719006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 719001, 719002, 719003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_719006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_719005(context, evt)
	if evt.param1 ~= 719005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_719005(context, evt)
	-- 将configid为 719004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 719004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308719, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_719006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_719006(context, evt)
	-- 将configid为 719004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 719004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end