-- 基础信息
local base_info = {
	group_id = 133304292
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 292001, monster_id = 28010208, pos = { x = -1410.008, y = 272.304, z = 2905.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 21 },
	{ config_id = 292002, monster_id = 28010208, pos = { x = -1428.060, y = 266.000, z = 2879.424 }, rot = { x = 0.000, y = 30.630, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 21, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 292003, monster_id = 28050106, pos = { x = -1442.019, y = 271.204, z = 2901.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 21 },
	{ config_id = 292004, monster_id = 28050106, pos = { x = -1444.213, y = 270.046, z = 2910.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 21 },
	{ config_id = 292007, monster_id = 28060601, pos = { x = -1399.844, y = 270.587, z = 2883.607 }, rot = { x = 0.000, y = 265.612, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 292005, gadget_id = 70210101, pos = { x = -1381.282, y = 278.178, z = 2912.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", area_id = 21 },
	{ config_id = 292006, gadget_id = 70210101, pos = { x = -1376.136, y = 279.897, z = 2914.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", area_id = 21 }
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
		monsters = { 292001, 292002, 292003, 292004, 292007 },
		gadgets = { 292005, 292006 },
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