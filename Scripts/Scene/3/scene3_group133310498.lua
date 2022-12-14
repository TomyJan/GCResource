-- 基础信息
local base_info = {
	group_id = 133310498
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 498004, monster_id = 28030104, pos = { x = -1993.924, y = 166.981, z = 4848.269 }, rot = { x = 0.000, y = 250.787, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 2, area_id = 26 },
	{ config_id = 498005, monster_id = 28030104, pos = { x = -1993.732, y = 167.428, z = 4844.571 }, rot = { x = 0.000, y = 286.037, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 2, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 498001, gadget_id = 70220103, pos = { x = -2018.504, y = 148.433, z = 4842.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 498002, gadget_id = 70220103, pos = { x = -1993.723, y = 169.727, z = 4846.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 498003, gadget_id = 70330342, pos = { x = -2013.002, y = 146.208, z = 4840.923 }, rot = { x = 13.898, y = 358.080, z = 351.064 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
		monsters = { 498004, 498005 },
		gadgets = { 498001, 498002, 498003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================