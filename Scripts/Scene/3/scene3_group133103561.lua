-- 基础信息
local base_info = {
	group_id = 133103561
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
	{ config_id = 561001, gadget_id = 70290009, pos = { x = 740.525, y = 228.588, z = 1347.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 561002, gadget_id = 70500000, pos = { x = 740.525, y = 228.588, z = 1347.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3005, owner = 561001, area_id = 6 },
	{ config_id = 561003, gadget_id = 70290009, pos = { x = 806.685, y = 336.114, z = 1853.375 }, rot = { x = 0.000, y = 284.551, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 561004, gadget_id = 70500000, pos = { x = 806.685, y = 336.114, z = 1853.375 }, rot = { x = 0.000, y = 284.551, z = 0.000 }, level = 24, point_type = 3005, owner = 561003, area_id = 6 },
	{ config_id = 561005, gadget_id = 70290009, pos = { x = 759.564, y = 196.738, z = 1081.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 561006, gadget_id = 70500000, pos = { x = 759.564, y = 196.738, z = 1081.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3005, owner = 561005, area_id = 6 },
	{ config_id = 561007, gadget_id = 70290009, pos = { x = 605.015, y = 237.379, z = 1603.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 561008, gadget_id = 70500000, pos = { x = 605.015, y = 237.379, z = 1603.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3005, owner = 561007, area_id = 6 }
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
		gadgets = { 561001, 561002, 561003, 561004, 561005, 561006, 561007, 561008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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