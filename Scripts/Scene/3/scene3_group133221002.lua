-- 基础信息
local base_info = {
	group_id = 133221002
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
	{ config_id = 2006, npc_id = 20405, pos = { x = -3114.039, y = 247.609, z = -4388.918 }, rot = { x = 0.000, y = 160.150, z = 0.000 }, area_id = 11 },
	{ config_id = 2010, npc_id = 20407, pos = { x = -3068.043, y = 247.556, z = -4400.430 }, rot = { x = 0.000, y = 175.850, z = 0.000 }, area_id = 11 },
	{ config_id = 2011, npc_id = 20406, pos = { x = -3085.462, y = 251.985, z = -4427.278 }, rot = { x = 0.000, y = 333.320, z = 0.000 }, area_id = 11 },
	{ config_id = 2012, npc_id = 20404, pos = { x = -3098.701, y = 252.267, z = -4438.353 }, rot = { x = 0.000, y = 314.700, z = 0.000 }, area_id = 11 },
	{ config_id = 2013, npc_id = 20403, pos = { x = -3124.002, y = 253.998, z = -4457.274 }, rot = { x = 0.000, y = 130.700, z = 0.000 }, area_id = 11 },
	{ config_id = 2014, npc_id = 20402, pos = { x = -3124.205, y = 253.964, z = -4479.800 }, rot = { x = 0.000, y = 294.600, z = 0.000 }, area_id = 11 },
	{ config_id = 2015, npc_id = 20400, pos = { x = -3148.463, y = 253.149, z = -4493.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 11 },
	{ config_id = 2016, npc_id = 20412, pos = { x = -3109.385, y = 252.628, z = -4427.415 }, rot = { x = 0.000, y = 52.310, z = 0.000 }, area_id = 11 }
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70710443, pos = { x = -3114.054, y = 246.919, z = -4388.861 }, rot = { x = 0.000, y = 165.090, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 2002, gadget_id = 70710443, pos = { x = -3068.104, y = 246.830, z = -4400.400 }, rot = { x = 0.000, y = 143.300, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 2003, gadget_id = 70710443, pos = { x = -3085.413, y = 251.193, z = -4427.318 }, rot = { x = 0.000, y = 323.300, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 2004, gadget_id = 70710443, pos = { x = -3097.945, y = 251.193, z = -4437.754 }, rot = { x = 0.000, y = 316.910, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 2005, gadget_id = 70710443, pos = { x = -3124.040, y = 253.212, z = -4457.219 }, rot = { x = 0.000, y = 121.300, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 2007, gadget_id = 70710443, pos = { x = -3124.172, y = 253.205, z = -4479.870 }, rot = { x = 0.000, y = 300.560, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 2008, gadget_id = 70710443, pos = { x = -3148.447, y = 252.429, z = -4493.778 }, rot = { x = 0.000, y = 4.800, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 2009, gadget_id = 70710468, pos = { x = -3109.506, y = 251.177, z = -4427.460 }, rot = { x = 0.000, y = 48.100, z = 0.000 }, level = 1, area_id = 11 }
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
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2007, 2008, 2009 },
		regions = { },
		triggers = { },
		npcs = { 2006, 2010, 2011, 2012, 2013, 2014, 2015, 2016 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2007, 2008, 2009 },
		regions = { },
		triggers = { },
		npcs = { 2006, 2010, 2011, 2012, 2013, 2014, 2015 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================