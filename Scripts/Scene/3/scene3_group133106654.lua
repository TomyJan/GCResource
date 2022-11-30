-- 基础信息
local base_info = {
	group_id = 133106654
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
	{ config_id = 654001, gadget_id = 70290324, pos = { x = -565.502, y = 152.104, z = 1934.253 }, rot = { x = 0.000, y = 0.000, z = 338.311 }, level = 36, area_id = 19 },
	{ config_id = 654002, gadget_id = 70290324, pos = { x = -585.937, y = 158.350, z = 1979.751 }, rot = { x = 328.286, y = 5.697, z = 352.751 }, level = 36, area_id = 19 },
	{ config_id = 654003, gadget_id = 70290323, pos = { x = -600.315, y = 163.172, z = 1982.143 }, rot = { x = 358.147, y = 1.345, z = 351.178 }, level = 36, area_id = 19 }
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
		gadgets = { 654001, 654002, 654003 },
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