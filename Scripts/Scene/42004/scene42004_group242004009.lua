-- 基础信息
local base_info = {
	group_id = 242004009
}

-- Trigger变量
local defs = {
	group_id = 242004009,
	gear_group_id = 242004002
}

-- DEFS_MISCS
tide_defs = {
	[1] = { {sum = 20, min = 6, max = 6,suite=2},{sum = 20, min = 6, max = 6,suite=3},},
		
}
package_tide_defs={
        [1]={{monster_package={12001,12002,12003},route=1,route_points={1,2,3,4,5,6,7,8},tags=2,count=100,max=6,min=5},{monster_package={12001,12002,12003},route=2,route_points={1,2,3,4,5,6,7,8,9,10},tags=4,count=20,max=6,min=5}},
        
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
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 9005, pos = { x = -52.508, y = 58.780, z = 47.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 9006, pos = { x = -52.551, y = 58.779, z = 45.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 9007, pos = { x = -50.598, y = 58.774, z = 45.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 9008, pos = { x = -52.565, y = 58.780, z = 43.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 9009, pos = { x = -49.875, y = 58.778, z = 44.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 9010, pos = { x = -49.926, y = 58.778, z = 47.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 9011, pos = { x = 22.109, y = 44.815, z = 78.482 }, rot = { x = 0.000, y = 240.678, z = 0.000 }, tag = 4 },
	{ config_id = 9012, pos = { x = 23.568, y = 44.807, z = 80.876 }, rot = { x = 0.000, y = 240.678, z = 0.000 }, tag = 4 },
	{ config_id = 9013, pos = { x = 21.781, y = 44.819, z = 82.853 }, rot = { x = 0.000, y = 240.678, z = 0.000 }, tag = 4 },
	{ config_id = 9014, pos = { x = 23.542, y = 44.815, z = 77.968 }, rot = { x = 0.000, y = 240.678, z = 0.000 }, tag = 4 },
	{ config_id = 9015, pos = { x = 23.802, y = 44.815, z = 84.551 }, rot = { x = 0.000, y = 240.678, z = 0.000 }, tag = 4 },
	{ config_id = 9016, pos = { x = 24.956, y = 44.814, z = 78.873 }, rot = { x = 0.000, y = 240.678, z = 0.000 }, tag = 4 },
	{ config_id = 9017, pos = { x = -52.130, y = 28.648, z = 36.323 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 9018, pos = { x = -50.671, y = 28.670, z = 38.717 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 9019, pos = { x = -52.459, y = 28.634, z = 40.694 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 9020, pos = { x = -50.697, y = 28.647, z = 35.809 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 9021, pos = { x = -48.604, y = 28.671, z = 40.301 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 9022, pos = { x = -49.283, y = 28.652, z = 36.714 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 }
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
	},
	{
		-- suite_id = 3,
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

require "TowerDefense_Monster02"