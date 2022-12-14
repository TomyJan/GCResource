-- 基础信息
local base_info = {
	group_id = 133308441
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
	{ config_id = 441001, gadget_id = 70500000, pos = { x = -2092.512, y = 103.006, z = 4379.964 }, rot = { x = 34.514, y = 353.551, z = 339.442 }, level = 32, point_type = 1002, area_id = 26 },
	{ config_id = 441002, gadget_id = 70500000, pos = { x = -2095.542, y = 104.643, z = 4379.767 }, rot = { x = 359.697, y = 126.460, z = 45.181 }, level = 32, point_type = 1002, area_id = 26 },
	{ config_id = 441004, gadget_id = 70500000, pos = { x = -2089.090, y = 102.118, z = 4380.054 }, rot = { x = 349.131, y = 114.686, z = 36.535 }, level = 32, point_type = 1003, area_id = 26 },
	{ config_id = 441006, gadget_id = 70500000, pos = { x = -2026.885, y = 100.929, z = 4455.485 }, rot = { x = 14.372, y = 223.953, z = 334.565 }, level = 32, point_type = 1003, area_id = 26 },
	{ config_id = 441007, gadget_id = 70500000, pos = { x = -2028.740, y = 98.819, z = 4462.949 }, rot = { x = 5.788, y = 9.132, z = 32.864 }, level = 32, point_type = 1003, area_id = 26 }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 441003, gadget_id = 70500000, pos = { x = -2097.523, y = 103.202, z = 4383.190 }, rot = { x = 331.157, y = 171.452, z = 25.357 }, level = 32, point_type = 1002, area_id = 26 },
		{ config_id = 441005, gadget_id = 70500000, pos = { x = -2099.367, y = 106.418, z = 4379.987 }, rot = { x = 341.683, y = 278.158, z = 319.994 }, level = 32, point_type = 1003, area_id = 26 }
	}
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
		gadgets = { 441001, 441002, 441004, 441006, 441007 },
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