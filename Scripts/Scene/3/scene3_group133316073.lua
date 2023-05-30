-- 基础信息
local base_info = {
	group_id = 133316073
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
	{ config_id = 73001, gadget_id = 70590042, pos = { x = 625.116, y = 444.421, z = 6523.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 30 },
	{ config_id = 73002, gadget_id = 70590042, pos = { x = 603.157, y = 350.687, z = 5770.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 30 },
	{ config_id = 73003, gadget_id = 70590042, pos = { x = 1043.845, y = 467.455, z = 6057.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 30 },
	{ config_id = 73004, gadget_id = 70590042, pos = { x = 786.862, y = 268.899, z = 6201.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 30 }
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
		gadgets = { 73001, 73002, 73003, 73004 },
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