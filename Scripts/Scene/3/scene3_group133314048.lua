-- 基础信息
local base_info = {
	group_id = 133314048
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 48001, monster_id = 21010301, pos = { x = -365.458, y = 216.556, z = 4288.832 }, rot = { x = 0.000, y = 67.747, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9003, area_id = 32 },
	{ config_id = 48002, monster_id = 21010301, pos = { x = -362.409, y = 216.533, z = 4287.910 }, rot = { x = 0.000, y = 324.073, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9003, area_id = 32 },
	{ config_id = 48003, monster_id = 21010301, pos = { x = -360.962, y = 216.583, z = 4291.027 }, rot = { x = 0.000, y = 203.588, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9003, area_id = 32 },
	{ config_id = 48005, monster_id = 20011201, pos = { x = -363.100, y = 216.577, z = 4289.726 }, rot = { x = 0.000, y = 158.677, z = 0.000 }, level = 32, drop_tag = "史莱姆", disableWander = true, area_id = 32 },
	{ config_id = 48008, monster_id = 21010101, pos = { x = -377.562, y = 212.144, z = 4296.499 }, rot = { x = 0.000, y = 291.165, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9011, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 48004, gadget_id = 70300087, pos = { x = -363.097, y = 216.526, z = 4289.735 }, rot = { x = 0.000, y = 18.407, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 48006, gadget_id = 70300086, pos = { x = -365.324, y = 215.966, z = 4279.758 }, rot = { x = 17.166, y = 9.476, z = 358.175 }, level = 32, area_id = 32 },
	{ config_id = 48007, gadget_id = 70300086, pos = { x = -355.524, y = 215.080, z = 4286.561 }, rot = { x = 28.563, y = 231.869, z = 331.924 }, level = 32, area_id = 32 }
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
		monsters = { 48001, 48002, 48003, 48005, 48008 },
		gadgets = { 48004, 48006, 48007 },
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