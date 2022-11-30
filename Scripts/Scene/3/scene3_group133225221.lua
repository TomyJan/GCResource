-- 基础信息
local base_info = {
	group_id = 133225221
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 221001, monster_id = 28030401, pos = { x = -6687.567, y = 220.816, z = -2618.608 }, rot = { x = 0.000, y = 341.417, z = 0.000 }, level = 33, drop_tag = "鸟类", area_id = 18 },
	{ config_id = 221002, monster_id = 28030401, pos = { x = -6688.008, y = 220.663, z = -2617.563 }, rot = { x = 0.000, y = 206.534, z = 0.000 }, level = 33, drop_tag = "鸟类", area_id = 18 }
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
		monsters = { 221001, 221002 },
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