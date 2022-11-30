-- 基础信息
local base_info = {
	group_id = 133302587
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
	{ config_id = 587001, gadget_id = 70500000, pos = { x = -732.279, y = 169.717, z = 2656.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 1001, area_id = 24 },
	{ config_id = 587002, gadget_id = 70500000, pos = { x = -698.903, y = 161.374, z = 2670.079 }, rot = { x = 0.000, y = 322.350, z = 0.000 }, level = 27, point_type = 1001, area_id = 24 },
	{ config_id = 587003, gadget_id = 70500000, pos = { x = -730.035, y = 169.354, z = 2667.374 }, rot = { x = 0.000, y = 326.687, z = 0.000 }, level = 27, point_type = 1001, area_id = 24 },
	{ config_id = 587004, gadget_id = 70500000, pos = { x = -728.813, y = 168.855, z = 2658.721 }, rot = { x = 0.000, y = 311.484, z = 0.000 }, level = 27, point_type = 1002, area_id = 24 },
	{ config_id = 587005, gadget_id = 70500000, pos = { x = -730.578, y = 169.301, z = 2661.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 1002, area_id = 24 },
	{ config_id = 587006, gadget_id = 70500000, pos = { x = -732.388, y = 170.039, z = 2661.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 1003, area_id = 24 }
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
		gadgets = { 587001, 587002, 587003, 587004, 587005, 587006 },
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