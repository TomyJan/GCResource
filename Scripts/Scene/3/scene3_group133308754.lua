-- 基础信息
local base_info = {
	group_id = 133308754
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
	{ config_id = 754001, gadget_id = 70500000, pos = { x = -999.268, y = -38.924, z = 4604.430 }, rot = { x = 352.255, y = 357.110, z = 11.457 }, level = 32, point_type = 2055, area_id = 32 },
	{ config_id = 754002, gadget_id = 70500000, pos = { x = -999.644, y = -38.664, z = 4605.580 }, rot = { x = 340.852, y = 355.313, z = 27.278 }, level = 32, point_type = 2055, area_id = 32 },
	{ config_id = 754003, gadget_id = 70500000, pos = { x = -996.145, y = -38.535, z = 4599.690 }, rot = { x = 3.611, y = 0.739, z = 1.839 }, level = 32, point_type = 2055, area_id = 32 },
	{ config_id = 754004, gadget_id = 70500000, pos = { x = -983.188, y = -40.697, z = 4575.446 }, rot = { x = 356.222, y = 359.458, z = 16.337 }, level = 32, point_type = 2055, area_id = 32 },
	{ config_id = 754005, gadget_id = 70500000, pos = { x = -982.348, y = -40.578, z = 4573.572 }, rot = { x = 356.745, y = 359.529, z = 16.449 }, level = 32, point_type = 2055, area_id = 32 },
	{ config_id = 754006, gadget_id = 70500000, pos = { x = -1049.391, y = -27.487, z = 4652.993 }, rot = { x = 348.710, y = 357.949, z = 5.654 }, level = 32, point_type = 2055, area_id = 32 },
	{ config_id = 754007, gadget_id = 70500000, pos = { x = -1058.075, y = -28.596, z = 4639.777 }, rot = { x = 357.874, y = 354.035, z = 326.754 }, level = 32, point_type = 2055, area_id = 32 },
	{ config_id = 754008, gadget_id = 70500000, pos = { x = -1060.272, y = -40.579, z = 4571.471 }, rot = { x = 357.398, y = 354.377, z = 322.054 }, level = 32, point_type = 2055, area_id = 32 },
	{ config_id = 754009, gadget_id = 70500000, pos = { x = -1061.837, y = -39.456, z = 4572.217 }, rot = { x = 355.848, y = 355.547, z = 323.906 }, level = 32, point_type = 2055, area_id = 32 },
	{ config_id = 754010, gadget_id = 70500000, pos = { x = -1050.644, y = -39.383, z = 4528.792 }, rot = { x = 356.960, y = 354.653, z = 333.464 }, level = 32, point_type = 2055, area_id = 32 },
	{ config_id = 754011, gadget_id = 70500000, pos = { x = -1051.468, y = -39.008, z = 4530.718 }, rot = { x = 358.713, y = 353.548, z = 333.557 }, level = 32, point_type = 2055, area_id = 32 },
	{ config_id = 754012, gadget_id = 70500000, pos = { x = -1042.087, y = -45.023, z = 4530.292 }, rot = { x = 3.072, y = 351.416, z = 334.291 }, level = 32, point_type = 2055, area_id = 32 }
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
		monsters = { },
		gadgets = { 754001, 754002, 754003, 754004, 754005, 754006, 754007, 754008, 754009, 754010, 754011, 754012 },
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