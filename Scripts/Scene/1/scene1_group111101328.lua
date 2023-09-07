-- 基础信息
local base_info = {
	group_id = 111101328
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
	{ config_id = 328001, gadget_id = 70330330, pos = { x = 2882.955, y = 257.299, z = -1739.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 110100150 },
	{ config_id = 328002, gadget_id = 70330330, pos = { x = 2886.702, y = 261.461, z = -1748.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 110100151 },
	{ config_id = 328003, gadget_id = 70330330, pos = { x = 2888.661, y = 262.942, z = -1740.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 110100152 },
	{ config_id = 328005, gadget_id = 70211001, pos = { x = 2895.196, y = 254.090, z = -1745.705 }, rot = { x = 0.000, y = 260.266, z = 0.000 }, level = 26, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1328006, name = "ANY_GADGET_DIE_328006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_328006", action = "action_EVENT_ANY_GADGET_DIE_328006", trigger_count = 0 }
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
		gadgets = { 328001, 328002, 328003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_328006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_328006(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 111101328}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_328006(context, evt)
	-- 创建id为328005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 328005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end