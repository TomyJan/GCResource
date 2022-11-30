-- 基础信息
local base_info = {
	group_id = 133102530
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 530001, monster_id = 28030401, pos = { x = 1080.790, y = 200.605, z = 770.805 }, rot = { x = 0.000, y = 146.720, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 2, area_id = 6 },
	{ config_id = 530002, monster_id = 28030401, pos = { x = 1084.605, y = 200.857, z = 767.023 }, rot = { x = 0.000, y = 303.920, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 2, area_id = 6 },
	{ config_id = 530003, monster_id = 28030401, pos = { x = 1081.656, y = 201.017, z = 764.525 }, rot = { x = 0.000, y = 343.353, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 901, area_id = 6 },
	{ config_id = 530004, monster_id = 28030401, pos = { x = 1081.285, y = 200.766, z = 768.079 }, rot = { x = 0.000, y = 276.150, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 2, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
		monsters = { 530001, 530002, 530003, 530004 },
		gadgets = { },
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