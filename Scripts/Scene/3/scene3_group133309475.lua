-- 基础信息
local base_info = {
	group_id = 133309475
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
	{ config_id = 475002, gadget_id = 70220103, pos = { x = -2240.385, y = 100.034, z = 5261.035 }, rot = { x = 0.000, y = 213.080, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 475003, gadget_id = 70220103, pos = { x = -2252.762, y = 100.338, z = 5256.921 }, rot = { x = 0.000, y = 345.051, z = 0.000 }, level = 32, area_id = 27 }
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
		gadgets = { 475002, 475003 },
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