-- 基础信息
local base_info = {
	group_id = 133310538
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 538001, monster_id = 28060401, pos = { x = -2392.289, y = 351.339, z = 3984.171 }, rot = { x = 0.000, y = 338.737, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 3, area_id = 26 },
	{ config_id = 538002, monster_id = 28060401, pos = { x = -2395.345, y = 351.452, z = 3984.428 }, rot = { x = 0.000, y = 16.296, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 3, area_id = 26 },
	{ config_id = 538003, monster_id = 28060401, pos = { x = -2367.760, y = 355.115, z = 3998.456 }, rot = { x = 0.000, y = 143.627, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 2, area_id = 26 }
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
		monsters = { 538001, 538002, 538003 },
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