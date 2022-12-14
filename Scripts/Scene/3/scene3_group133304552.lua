-- 基础信息
local base_info = {
	group_id = 133304552
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
	{ config_id = 552001, gadget_id = 70220103, pos = { x = -1230.411, y = 145.049, z = 2344.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 552002, gadget_id = 70220103, pos = { x = -1255.788, y = 127.232, z = 2360.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 552003, gadget_id = 70220103, pos = { x = -1198.020, y = 199.574, z = 2333.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 552004, gadget_id = 70220103, pos = { x = -1193.000, y = 216.013, z = 2355.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 552005, gadget_id = 70220103, pos = { x = -1197.731, y = 228.998, z = 2375.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 552006, gadget_id = 70220103, pos = { x = -1173.762, y = 250.927, z = 2352.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 552007, gadget_id = 70220103, pos = { x = -1140.904, y = 264.492, z = 2354.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 552008, gadget_id = 70220103, pos = { x = -1175.775, y = 281.093, z = 2372.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 552009, gadget_id = 70220103, pos = { x = -1177.391, y = 300.908, z = 2397.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 552010, gadget_id = 70220103, pos = { x = -1186.290, y = 324.895, z = 2422.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
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
		gadgets = { 552001, 552002, 552003, 552004, 552005, 552006, 552007, 552008, 552009, 552010 },
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