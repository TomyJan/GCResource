-- 基础信息
local base_info = {
	group_id = 133310521
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
	{ config_id = 521001, gadget_id = 70500000, pos = { x = -2565.176, y = 135.408, z = 4884.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 1001, area_id = 27 },
	{ config_id = 521002, gadget_id = 70500000, pos = { x = -2577.089, y = 137.580, z = 4895.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 1001, area_id = 27 },
	{ config_id = 521003, gadget_id = 70500000, pos = { x = -2564.073, y = 135.058, z = 4884.596 }, rot = { x = 10.618, y = 295.348, z = 338.742 }, level = 32, point_type = 1002, area_id = 27 },
	{ config_id = 521004, gadget_id = 70500000, pos = { x = -2577.254, y = 138.042, z = 4894.007 }, rot = { x = 353.353, y = 247.907, z = 350.752 }, level = 32, point_type = 1002, area_id = 27 },
	{ config_id = 521005, gadget_id = 70500000, pos = { x = -2577.673, y = 137.438, z = 4896.854 }, rot = { x = 0.000, y = 97.356, z = 0.000 }, level = 32, point_type = 1002, area_id = 27 }
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
		gadgets = { 521001, 521002, 521003, 521004, 521005 },
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