-- 基础信息
local base_info = {
	group_id = 133309346
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 346001, monster_id = 25210203, pos = { x = -2960.004, y = 209.633, z = 5665.216 }, rot = { x = 0.000, y = 329.733, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9003, area_id = 27 },
	{ config_id = 346002, monster_id = 25210402, pos = { x = -2961.701, y = 208.569, z = 5674.281 }, rot = { x = 0.000, y = 185.676, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9503, area_id = 27 },
	{ config_id = 346004, monster_id = 25210501, pos = { x = -2968.854, y = 209.302, z = 5664.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 27 }
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
		monsters = { 346001, 346002, 346004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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