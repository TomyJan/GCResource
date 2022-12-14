-- 基础信息
local base_info = {
	group_id = 133308254
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
	{ config_id = 254001, gadget_id = 70500000, pos = { x = -1761.109, y = 213.473, z = 4624.576 }, rot = { x = 354.985, y = 225.546, z = 8.357 }, level = 32, point_type = 1001, area_id = 26 },
	{ config_id = 254003, gadget_id = 70500000, pos = { x = -1767.417, y = 213.044, z = 4626.058 }, rot = { x = 348.292, y = 162.078, z = 346.198 }, level = 32, point_type = 1001, area_id = 26 },
	{ config_id = 254004, gadget_id = 70500000, pos = { x = -1758.177, y = 222.140, z = 4599.166 }, rot = { x = 16.541, y = 340.813, z = 325.554 }, level = 32, point_type = 1002, area_id = 26 },
	{ config_id = 254005, gadget_id = 70500000, pos = { x = -1766.964, y = 212.760, z = 4627.664 }, rot = { x = 7.515, y = 330.608, z = 358.835 }, level = 32, point_type = 1002, area_id = 26 }
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
		gadgets = { 254001, 254003, 254004, 254005 },
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