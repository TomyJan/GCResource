-- 基础信息
local base_info = {
	group_id = 133103614
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
	{ config_id = 614001, gadget_id = 70220042, pos = { x = 216.769, y = 222.736, z = 1144.837 }, rot = { x = 0.000, y = 334.676, z = 0.000 }, level = 2, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 614004, pos = { x = 221.155, y = 223.769, z = 1141.895 }, rot = { x = 0.000, y = 290.350, z = 0.000 }, area_id = 6 },
	{ config_id = 614005, pos = { x = 214.897, y = 220.778, z = 1140.625 }, rot = { x = 0.000, y = 33.954, z = 0.000 }, area_id = 6 },
	{ config_id = 614006, pos = { x = 219.123, y = 224.751, z = 1149.740 }, rot = { x = 0.000, y = 206.773, z = 0.000 }, area_id = 6 },
	{ config_id = 614007, pos = { x = 213.359, y = 222.504, z = 1150.435 }, rot = { x = 0.000, y = 160.831, z = 0.000 }, area_id = 6 },
	{ config_id = 614008, pos = { x = 210.195, y = 220.723, z = 1146.672 }, rot = { x = 0.000, y = 125.806, z = 0.000 }, area_id = 6 }
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

require "TreasureMapEvent"