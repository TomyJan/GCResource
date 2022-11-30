-- 基础信息
local base_info = {
	group_id = 111102009
}

-- DEFS_MISCS
local	defs = 
{
	group_id = 111102009,
	--起始操作台
	start_operator = 9005,

	--每个阶段的所有演员物件config_id。用于统一设置状态
	actor_list = 
	{
		[1] = {9001, 9002, 9003},
		[2] = {9001, 9002, 9003}
	},
	--可拾取的gadget列表，即not in any suite的夜鸦雕像
	pickable_gadget = 
	{
		9001, 9002
	},
	--行动序列
	actions = 
	{
		{
	   		[1] = { config_id = 9001, reminder_id = 31021109, point_array = 0, point_id_list = {}, duration = 5},
		},
		{
	  		[1] = { config_id = 9002, reminder_id = 31021107, point_array = 0, point_id_list = {}, duration = 3},
		},
	},

	--每段剧情结束时加载的对应suite(放聚光灯和操作台用),和正确的放置槽位config_id
	--key是阶段id
	question_suits =  
	{
   		[1] = { add_suite = 3, correct_slot = 9010, correct_gadget = 9001},
   		[2] = { add_suite = 4, correct_slot = 9009, correct_gadget = 9002},
	},

	--玩法范围，主机出圈则重置
	play_region = 9012,

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
	[9001] = { config_id = 9001, gadget_id = 70310173, pos = { x = 1323.071, y = 330.084, z = -1962.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9002] = { config_id = 9002, gadget_id = 70310173, pos = { x = 1326.484, y = 330.091, z = -1961.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9003] = { config_id = 9003, gadget_id = 70310173, pos = { x = 1324.727, y = 330.099, z = -1964.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9004] = { config_id = 9004, gadget_id = 70310175, pos = { x = 1324.083, y = 330.012, z = -1958.109 }, rot = { x = 0.000, y = 186.013, z = 0.000 }, level = 1 },
	-- 起始操作台
	[9005] = { config_id = 9005, gadget_id = 70360001, pos = { x = 1324.083, y = 330.012, z = -1958.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 24 } } },
	[9006] = { config_id = 9006, gadget_id = 70310174, pos = { x = 1320.903, y = 330.012, z = -1961.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9007] = { config_id = 9007, gadget_id = 70310174, pos = { x = 1320.563, y = 330.079, z = -1963.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9008] = { config_id = 9008, gadget_id = 70310174, pos = { x = 1325.079, y = 330.080, z = -1960.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 放置点
	[9009] = { config_id = 9009, gadget_id = 70360001, pos = { x = 1320.569, y = 330.159, z = -1963.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 35 } } },
	-- 放置点
	[9010] = { config_id = 9010, gadget_id = 70360001, pos = { x = 1320.936, y = 330.092, z = -1961.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 35 } } },
	-- 放置点
	[9011] = { config_id = 9011, gadget_id = 70360001, pos = { x = 1325.005, y = 330.160, z = -1960.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 35 } } }
}

-- 区域
regions = {
	[9012] = { config_id = 9012, shape = RegionShape.SPHERE, radius = 12, pos = { x = 1323.647, y = 330.011, z = -1960.951 } }
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
		gadgets = { 9003, 9004, 9005, 9006, 9007, 9008 },
		regions = { 9012 },
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
		gadgets = { 9009, 9010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 9011 },
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

require "V2_8/CrowTheatre_Howdunit"