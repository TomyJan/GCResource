-- 基础信息
local base_info = {
	group_id = 133213212
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
	{ config_id = 212003, gadget_id = 70210101, pos = { x = -2965.332, y = 201.102, z = -3280.397 }, rot = { x = 0.000, y = 11.482, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", area_id = 12 },
	{ config_id = 212004, gadget_id = 70210101, pos = { x = -2963.482, y = 200.160, z = -3288.811 }, rot = { x = 14.523, y = 10.112, z = 349.277 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", area_id = 12 },
	{ config_id = 212005, gadget_id = 70210101, pos = { x = -2959.430, y = 200.258, z = -3292.484 }, rot = { x = 7.158, y = 10.124, z = 338.537 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", area_id = 12 },
	{ config_id = 212006, gadget_id = 70210101, pos = { x = -2966.052, y = 200.063, z = -3281.318 }, rot = { x = 0.571, y = 18.181, z = 1.130 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", area_id = 12 },
	{ config_id = 212007, gadget_id = 70210101, pos = { x = -3022.992, y = 201.720, z = -3139.375 }, rot = { x = 3.519, y = 19.965, z = 16.056 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", area_id = 12 },
	{ config_id = 212008, gadget_id = 70210101, pos = { x = -3019.620, y = 203.154, z = -3138.539 }, rot = { x = 3.519, y = 19.965, z = 16.056 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", area_id = 12 },
	{ config_id = 212009, gadget_id = 70210101, pos = { x = -3048.056, y = 200.131, z = -3134.434 }, rot = { x = 5.115, y = 20.177, z = 359.027 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", area_id = 12 },
	{ config_id = 212010, gadget_id = 70210101, pos = { x = -3050.750, y = 200.137, z = -3137.096 }, rot = { x = 345.711, y = 36.407, z = 19.957 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", area_id = 12 },
	{ config_id = 212011, gadget_id = 70210101, pos = { x = -2988.013, y = 201.380, z = -3242.473 }, rot = { x = 359.301, y = 11.488, z = 358.945 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", area_id = 12 },
	{ config_id = 212012, gadget_id = 70210101, pos = { x = -2971.100, y = 200.857, z = -3228.448 }, rot = { x = 325.400, y = 32.627, z = 298.298 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", area_id = 12 },
	{ config_id = 212013, gadget_id = 70210101, pos = { x = -2967.332, y = 201.240, z = -3222.949 }, rot = { x = 357.040, y = 9.346, z = 350.539 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", area_id = 12 },
	{ config_id = 212014, gadget_id = 70210101, pos = { x = -2964.667, y = 200.884, z = -3219.883 }, rot = { x = 2.954, y = 8.457, z = 352.349 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", area_id = 12 },
	{ config_id = 212015, gadget_id = 70300093, pos = { x = -2966.836, y = 201.073, z = -3217.458 }, rot = { x = 2.888, y = 1.458, z = 352.074 }, level = 27, area_id = 12 }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 212001, gadget_id = 70211001, pos = { x = -3092.065, y = 201.361, z = -3226.223 }, rot = { x = 0.000, y = 181.326, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
		{ config_id = 212002, gadget_id = 70211001, pos = { x = -2966.738, y = 200.032, z = -3279.733 }, rot = { x = 0.000, y = 283.010, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
	}
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
		gadgets = { 212003, 212004, 212005, 212006, 212007, 212008, 212009, 212010, 212011, 212012, 212013, 212014, 212015 },
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