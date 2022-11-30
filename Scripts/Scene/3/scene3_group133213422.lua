-- 基础信息
local base_info = {
	group_id = 133213422
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
	{ config_id = 422001, gadget_id = 70220069, pos = { x = -3424.748, y = 200.122, z = -3047.674 }, rot = { x = 0.000, y = 140.853, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 422002, pos = { x = -3429.585, y = 200.000, z = -3043.876 }, rot = { x = 0.000, y = 96.527, z = 0.000 }, area_id = 12, tag = 8 },
	{ config_id = 422003, pos = { x = -3422.621, y = 200.000, z = -3040.643 }, rot = { x = 0.000, y = 200.130, z = 0.000 }, area_id = 12, tag = 8 },
	{ config_id = 422004, pos = { x = -3420.074, y = 200.016, z = -3043.232 }, rot = { x = 0.000, y = 229.899, z = 0.000 }, area_id = 12, tag = 8 },
	{ config_id = 422005, pos = { x = -3427.117, y = 200.000, z = -3040.765 }, rot = { x = 0.000, y = 165.842, z = 0.000 }, area_id = 12, tag = 8 },
	{ config_id = 422006, pos = { x = -3417.925, y = 200.157, z = -3047.882 }, rot = { x = 0.000, y = 291.982, z = 0.000 }, area_id = 12, tag = 8 }
}

-- 变量
variables = {
}

-- 怪物随机池
monster_pools = {
	{ pool_id = 1004, rand_weight = 100 },
	{ pool_id = 1005, rand_weight = 100 },
	{ pool_id = 1006, rand_weight = 100 },
	{ pool_id = 1007, rand_weight = 100 }
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

require "V2_0/TreasureMapEventV2"