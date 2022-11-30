-- 基础信息
local base_info = {
	group_id = 244003007
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
	{ config_id = 7001, gadget_id = 70220011, pos = { x = -165.329, y = 21.551, z = 36.938 }, rot = { x = 0.000, y = 88.610, z = 0.000 }, level = 1 },
	{ config_id = 7002, gadget_id = 70220013, pos = { x = -168.770, y = 21.580, z = 53.433 }, rot = { x = 0.000, y = 322.399, z = 0.000 }, level = 1 },
	{ config_id = 7003, gadget_id = 70220013, pos = { x = -167.274, y = 21.576, z = 55.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7004, gadget_id = 70220013, pos = { x = -169.992, y = 21.592, z = 56.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7005, gadget_id = 70220013, pos = { x = -150.553, y = 21.552, z = 28.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7006, gadget_id = 70220013, pos = { x = -153.065, y = 21.552, z = 28.288 }, rot = { x = 0.000, y = 313.719, z = 0.000 }, level = 1 },
	{ config_id = 7007, gadget_id = 70220014, pos = { x = -151.809, y = 21.602, z = 30.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7008, gadget_id = 70220055, pos = { x = -196.118, y = 21.563, z = 50.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7009, gadget_id = 70220055, pos = { x = -188.207, y = 21.598, z = 54.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7010, gadget_id = 70220055, pos = { x = -200.621, y = 21.640, z = 79.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7011, gadget_id = 70220055, pos = { x = -192.965, y = 25.516, z = 113.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7012, gadget_id = 70220055, pos = { x = -192.988, y = 25.433, z = 120.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7013, gadget_id = 70220055, pos = { x = -197.209, y = 25.457, z = 128.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7014, gadget_id = 70220043, pos = { x = -172.062, y = 21.651, z = 49.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7015, gadget_id = 70220043, pos = { x = -174.242, y = 21.603, z = 48.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7016, gadget_id = 70220055, pos = { x = -270.784, y = 31.453, z = 161.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7017, gadget_id = 70220055, pos = { x = -279.058, y = 31.542, z = 172.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7018, gadget_id = 70220055, pos = { x = -279.236, y = 31.556, z = 157.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7019, gadget_id = 70220055, pos = { x = -294.586, y = 31.690, z = 167.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7020, gadget_id = 70220055, pos = { x = -292.786, y = 31.545, z = 181.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7021, gadget_id = 70220055, pos = { x = -265.432, y = 31.468, z = 171.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 7001, 7002, 7003, 7004, 7005, 7006, 7007, 7008, 7009, 7010, 7011, 7012, 7013, 7014, 7015, 7016, 7017, 7018, 7019, 7020, 7021 },
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