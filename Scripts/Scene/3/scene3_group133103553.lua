-- 基础信息
local base_info = {
	group_id = 133103553
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 553001, monster_id = 28030402, pos = { x = 136.644, y = 306.334, z = 1814.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 553002, monster_id = 28030402, pos = { x = 133.365, y = 307.268, z = 1818.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 553003, monster_id = 28030402, pos = { x = 136.382, y = 306.635, z = 1816.916 }, rot = { x = 0.000, y = 260.069, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
		monsters = { 553001, 553002, 553003 },
		gadgets = { },
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