-- 基础信息
local base_info = {
	group_id = 133309054
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
	{ config_id = 54001, gadget_id = 70220103, pos = { x = -2410.928, y = 136.679, z = 4914.045 }, rot = { x = 0.000, y = 183.095, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 54002, gadget_id = 70220103, pos = { x = -2376.981, y = 116.062, z = 4872.456 }, rot = { x = 344.160, y = 163.552, z = 313.834 }, level = 32, area_id = 27 },
	{ config_id = 54003, gadget_id = 70220103, pos = { x = -2324.086, y = 124.918, z = 4872.459 }, rot = { x = 0.000, y = 156.765, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 54004, gadget_id = 70220103, pos = { x = -2291.298, y = 137.540, z = 4913.883 }, rot = { x = 0.000, y = 156.765, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 54005, gadget_id = 70220103, pos = { x = -2311.930, y = 149.598, z = 4959.952 }, rot = { x = 0.000, y = 156.765, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 54006, gadget_id = 70220103, pos = { x = -2389.778, y = 149.598, z = 4960.011 }, rot = { x = 0.000, y = 156.765, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 54007, gadget_id = 70220103, pos = { x = -2363.963, y = 126.122, z = 4948.802 }, rot = { x = 0.000, y = 183.095, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 54008, gadget_id = 70220103, pos = { x = -2338.087, y = 126.122, z = 4948.769 }, rot = { x = 0.000, y = 183.095, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 54013, gadget_id = 70220103, pos = { x = -2305.592, y = 143.851, z = 4999.755 }, rot = { x = 0.000, y = 156.765, z = 0.000 }, level = 32, area_id = 27 }
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
		gadgets = { 54001, 54002, 54003, 54004, 54005, 54006, 54007, 54008, 54013 },
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