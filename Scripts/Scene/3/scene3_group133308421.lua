-- 基础信息
local base_info = {
	group_id = 133308421
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 421001, monster_id = 25010201, pos = { x = -1911.276, y = 296.317, z = 4359.741 }, rot = { x = 0.000, y = 0.371, z = 0.000 }, level = 32, drop_tag = "盗宝团", pose_id = 9004, area_id = 26 },
	{ config_id = 421002, monster_id = 25030201, pos = { x = -1907.482, y = 296.042, z = 4365.679 }, rot = { x = 0.000, y = 331.219, z = 0.000 }, level = 32, drop_tag = "盗宝团", pose_id = 9006, area_id = 26 },
	{ config_id = 421003, monster_id = 25210402, pos = { x = -1908.817, y = 295.680, z = 4370.194 }, rot = { x = 0.000, y = 141.710, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 421004, gadget_id = 70220048, pos = { x = -1904.659, y = 297.006, z = 4362.834 }, rot = { x = 6.814, y = 313.507, z = 355.431 }, level = 32, area_id = 26 }
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
		monsters = { 421001, 421002, 421003 },
		gadgets = { 421004 },
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