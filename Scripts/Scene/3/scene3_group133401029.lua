-- 基础信息
local base_info = {
	group_id = 133401029
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
	{ config_id = 29001, gadget_id = 70330329, pos = { x = 3003.900, y = 339.816, z = 4360.049 }, rot = { x = 0.000, y = 323.416, z = 0.000 }, level = 1, route_id = 340100009 },
	{ config_id = 29002, gadget_id = 70330329, pos = { x = 2989.012, y = 326.760, z = 4356.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 340100010 },
	{ config_id = 29003, gadget_id = 70330329, pos = { x = 2989.746, y = 343.049, z = 4355.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 340100011 },
	{ config_id = 29005, gadget_id = 70211001, pos = { x = 3002.061, y = 324.114, z = 4358.875 }, rot = { x = 0.000, y = 58.351, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 } }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1029004, name = "ANY_GADGET_DIE_29004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_29004", action = "action_EVENT_ANY_GADGET_DIE_29004", trigger_count = 0 }
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
		gadgets = { 29001, 29002, 29003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_29004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_29004(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133401029}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_29004(context, evt)
	-- 创建id为29005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 29005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end