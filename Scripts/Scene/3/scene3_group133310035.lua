-- 基础信息
local base_info = {
	group_id = 133310035
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
	{ config_id = 35001, gadget_id = 70330450, pos = { x = -3024.304, y = 324.390, z = 4665.276 }, rot = { x = 346.825, y = 2.400, z = 339.443 }, level = 1, area_id = 28 },
	{ config_id = 35002, gadget_id = 70500000, pos = { x = -3024.304, y = 324.390, z = 4665.276 }, rot = { x = 346.825, y = 2.400, z = 339.443 }, level = 1, point_type = 3012, owner = 35001, area_id = 28 },
	{ config_id = 35003, gadget_id = 70330450, pos = { x = -2999.666, y = 316.793, z = 4653.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 28 },
	{ config_id = 35004, gadget_id = 70500000, pos = { x = -2999.666, y = 316.793, z = 4653.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3012, owner = 35003, area_id = 28 },
	{ config_id = 35005, gadget_id = 70330450, pos = { x = -3001.990, y = 320.924, z = 4603.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 28 },
	{ config_id = 35006, gadget_id = 70500000, pos = { x = -3001.990, y = 320.924, z = 4603.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3012, owner = 35005, area_id = 28 },
	{ config_id = 35007, gadget_id = 70330450, pos = { x = -3054.915, y = 327.010, z = 4638.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 28 },
	{ config_id = 35008, gadget_id = 70500000, pos = { x = -3054.915, y = 327.010, z = 4638.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3012, owner = 35007, area_id = 28 }
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
		gadgets = { 35001, 35002, 35003, 35004, 35005, 35006, 35007, 35008 },
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