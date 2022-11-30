-- 基础信息
local base_info = {
	group_id = 133102664
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 664001, monster_id = 28030401, pos = { x = 1179.139, y = 205.949, z = 933.011 }, rot = { x = 0.000, y = 146.720, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 2, area_id = 6 },
	{ config_id = 664002, monster_id = 28030401, pos = { x = 1181.846, y = 205.975, z = 933.989 }, rot = { x = 0.000, y = 303.920, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 2, area_id = 6 }
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
		monsters = { 664001, 664002 },
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