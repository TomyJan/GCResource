-- 基础信息
local base_info = {
	group_id = 133309703
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
}

-- 区域
regions = {
	{ config_id = 703001, shape = RegionShape.POLYGON, pos = { x = -3071.859, y = 273.827, z = 4740.134 }, height = 60.649, point_array = { { x = -2991.604, y = 4755.512 }, { x = -3002.003, y = 4772.922 }, { x = -3034.304, y = 4791.462 }, { x = -3031.736, y = 4745.996 }, { x = -3138.742, y = 4723.367 }, { x = -3152.114, y = 4688.806 }, { x = -3008.565, y = 4711.845 }, { x = -3011.773, y = 4744.733 } }, area_id = 28, vision_type_list = { 33100019 } }
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
		gadgets = { },
		regions = { 703001 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================