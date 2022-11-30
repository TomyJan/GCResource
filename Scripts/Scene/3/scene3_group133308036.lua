-- 基础信息
local base_info = {
	group_id = 133308036
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 36001, monster_id = 28060301, pos = { x = -1934.492, y = 300.948, z = 3962.823 }, rot = { x = 0.000, y = 122.008, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 131, area_id = 26 },
	{ config_id = 36002, monster_id = 28060301, pos = { x = -1974.530, y = 314.398, z = 3965.065 }, rot = { x = 0.000, y = 104.837, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 131, area_id = 26 },
	{ config_id = 36003, monster_id = 28060301, pos = { x = -1972.963, y = 314.007, z = 3961.276 }, rot = { x = 0.000, y = 96.174, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 131, area_id = 26 }
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
		monsters = { 36001, 36002, 36003 },
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