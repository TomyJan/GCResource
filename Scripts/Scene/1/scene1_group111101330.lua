-- 基础信息
local base_info = {
	group_id = 111101330
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
	{ config_id = 330001, gadget_id = 70330326, pos = { x = 2918.070, y = 244.342, z = -1753.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 330002, gadget_id = 70330326, pos = { x = 2918.351, y = 242.687, z = -1745.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 330003, gadget_id = 70330326, pos = { x = 2913.632, y = 244.610, z = -1753.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 330004, gadget_id = 70211001, pos = { x = 2947.168, y = 233.627, z = -1743.073 }, rot = { x = 0.000, y = 260.266, z = 0.000 }, level = 26, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 330006, gadget_id = 70330326, pos = { x = 2920.695, y = 246.318, z = -1760.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 330007, gadget_id = 70330326, pos = { x = 2943.444, y = 239.377, z = -1756.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 330008, gadget_id = 70330326, pos = { x = 2943.725, y = 237.722, z = -1749.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 330009, gadget_id = 70330326, pos = { x = 2939.006, y = 239.646, z = -1756.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 330010, gadget_id = 70330326, pos = { x = 2939.147, y = 238.557, z = -1752.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1330005, name = "ANY_GADGET_DIE_330005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_330005", action = "action_EVENT_ANY_GADGET_DIE_330005", trigger_count = 0 }
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
		gadgets = { 330001, 330002, 330003, 330006, 330007, 330008, 330009, 330010 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_330005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_330005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 111101330}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_330005(context, evt)
	-- 创建id为330004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 330004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end