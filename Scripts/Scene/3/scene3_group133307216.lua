-- 基础信息
local base_info = {
	group_id = 133307216
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
	-- 高处枯枝
	{ config_id = 216001, gadget_id = 70220103, pos = { x = -1214.318, y = 31.849, z = 5487.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 隔壁洞顶
	{ config_id = 216002, gadget_id = 70220103, pos = { x = -1404.705, y = -0.367, z = 5370.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 中部断墙1
	{ config_id = 216003, gadget_id = 70220103, pos = { x = -1313.741, y = 16.559, z = 5410.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 入口墙顶
	{ config_id = 216004, gadget_id = 70220103, pos = { x = -1374.786, y = 36.292, z = 5343.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 中部木板
	{ config_id = 216005, gadget_id = 70220103, pos = { x = -1272.570, y = -3.589, z = 5430.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 入口柱子
	{ config_id = 216006, gadget_id = 70220103, pos = { x = -1333.411, y = 38.994, z = 5357.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 入口火炬
	{ config_id = 216007, gadget_id = 70220103, pos = { x = -1349.051, y = 19.774, z = 5379.785 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 中部木板
	{ config_id = 216008, gadget_id = 70330427, pos = { x = -1336.259, y = 0.999, z = 5396.168 }, rot = { x = 0.000, y = 251.263, z = 0.000 }, level = 32, area_id = 32 },
	-- 中部木板木箱
	{ config_id = 216009, gadget_id = 71700434, pos = { x = -1336.306, y = 1.091, z = 5394.739 }, rot = { x = 0.000, y = 198.680, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	-- 谷底木板
	{ config_id = 216010, gadget_id = 70220103, pos = { x = -1214.819, y = -25.711, z = 5445.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 谷底木板木箱
	{ config_id = 216011, gadget_id = 71700434, pos = { x = -1214.816, y = -26.512, z = 5445.426 }, rot = { x = 0.000, y = 323.548, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	-- 谷底方尖碑
	{ config_id = 216012, gadget_id = 70220103, pos = { x = -1176.476, y = -26.952, z = 5467.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 底部栈道
	{ config_id = 216013, gadget_id = 70220103, pos = { x = -1244.541, y = -0.315, z = 5456.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 底部栈道木箱
	{ config_id = 216014, gadget_id = 70220062, pos = { x = -1244.534, y = -1.103, z = 5456.851 }, rot = { x = 356.350, y = 62.010, z = 353.446 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	-- 底部雕像
	{ config_id = 216015, gadget_id = 70220103, pos = { x = -1196.820, y = 1.925, z = 5497.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	-- 中部断墙2
	{ config_id = 216016, gadget_id = 70220103, pos = { x = -1249.406, y = 24.973, z = 5457.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
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
		gadgets = { 216001, 216002, 216003, 216004, 216005, 216006, 216007, 216008, 216009, 216010, 216011, 216012, 216013, 216014, 216015, 216016 },
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