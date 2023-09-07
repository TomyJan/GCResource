-- 基础信息
local base_info = {
	group_id = 111101325
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
	{ config_id = 325001, gadget_id = 70330326, pos = { x = 2983.982, y = 244.072, z = -1711.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 325002, gadget_id = 70330326, pos = { x = 2976.757, y = 244.053, z = -1710.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 325003, gadget_id = 70330326, pos = { x = 2989.688, y = 244.092, z = -1712.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 325004, gadget_id = 70330326, pos = { x = 2991.543, y = 243.817, z = -1706.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 325006, gadget_id = 70211001, pos = { x = 2978.202, y = 239.041, z = -1700.181 }, rot = { x = 0.000, y = 314.888, z = 0.000 }, level = 26, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1325005, name = "ANY_GADGET_DIE_325005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_325005", action = "action_EVENT_ANY_GADGET_DIE_325005", trigger_count = 0 }
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
		gadgets = { 325001, 325002, 325003, 325004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_325005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_325005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 111101325}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_325005(context, evt)
	-- 创建id为325006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 325006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end