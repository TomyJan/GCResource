-- 基础信息
local base_info = {
	group_id = 133307118
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 118001, monster_id = 28030104, pos = { x = -2037.563, y = 177.351, z = 5148.356 }, rot = { x = 0.000, y = 17.729, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 2, area_id = 27 },
	{ config_id = 118002, monster_id = 28030104, pos = { x = -2040.260, y = 177.436, z = 5149.703 }, rot = { x = 0.000, y = 33.911, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 2, area_id = 27 }
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
		monsters = { 118001, 118002 },
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