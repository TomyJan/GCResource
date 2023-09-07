-- 基础信息
local base_info = {
	group_id = 510010004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 20011101, pos = { x = 129.581, y = 339.977, z = 661.987 }, rot = { x = 0.000, y = 65.876, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4002, monster_id = 20011001, pos = { x = 132.618, y = 339.977, z = 660.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4003, monster_id = 20011001, pos = { x = 131.692, y = 339.977, z = 662.359 }, rot = { x = 0.000, y = 27.195, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4004, monster_id = 20011101, pos = { x = 114.119, y = 324.720, z = 685.181 }, rot = { x = 0.000, y = 272.555, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4005, monster_id = 20011001, pos = { x = 116.412, y = 325.902, z = 684.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4006, monster_id = 20011001, pos = { x = 117.799, y = 326.644, z = 683.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4007, monster_id = 20011001, pos = { x = 120.561, y = 328.126, z = 684.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4008, monster_id = 20011501, pos = { x = 80.216, y = 319.686, z = 684.980 }, rot = { x = 0.000, y = 108.908, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4009, monster_id = 20011501, pos = { x = 83.306, y = 319.686, z = 683.152 }, rot = { x = 0.000, y = 348.543, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4010, monster_id = 20010101, pos = { x = 52.853, y = 264.384, z = 637.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, pose_id = 101, isBlockOneoff = true },
	{ config_id = 4011, monster_id = 20010101, pos = { x = 51.559, y = 264.384, z = 635.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, pose_id = 101, isBlockOneoff = true },
	{ config_id = 4012, monster_id = 20010201, pos = { x = 35.946, y = 282.546, z = 644.839 }, rot = { x = 0.000, y = 148.578, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, pose_id = 101, isBlockOneoff = true },
	{ config_id = 4013, monster_id = 20010401, pos = { x = 16.907, y = 300.752, z = 615.805 }, rot = { x = 0.000, y = 61.291, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4014, monster_id = 20010301, pos = { x = 19.113, y = 295.202, z = 616.363 }, rot = { x = 0.000, y = 334.645, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4015, monster_id = 20010301, pos = { x = 17.873, y = 295.202, z = 617.350 }, rot = { x = 0.000, y = 105.922, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4016, monster_id = 20011101, pos = { x = 1.248, y = 287.137, z = 631.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4017, monster_id = 20011001, pos = { x = 1.471, y = 287.137, z = 634.038 }, rot = { x = 0.000, y = 157.833, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4018, monster_id = 20011401, pos = { x = -0.521, y = 293.228, z = 606.528 }, rot = { x = 0.000, y = 83.960, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4019, monster_id = 20011401, pos = { x = -0.185, y = 293.229, z = 605.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4020, monster_id = 20011501, pos = { x = -0.371, y = 293.342, z = 597.596 }, rot = { x = 0.000, y = 10.082, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4021, monster_id = 20011101, pos = { x = 62.837, y = 315.265, z = 592.799 }, rot = { x = 0.000, y = 104.246, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4022, monster_id = 20011101, pos = { x = 64.971, y = 315.265, z = 594.513 }, rot = { x = 0.000, y = 134.005, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4023, monster_id = 20010201, pos = { x = 46.205, y = 323.931, z = 627.854 }, rot = { x = 0.000, y = 317.243, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, pose_id = 101, isBlockOneoff = true },
	{ config_id = 4024, monster_id = 20010401, pos = { x = 78.826, y = 322.567, z = 609.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4025, monster_id = 20011501, pos = { x = 62.899, y = 337.291, z = 589.129 }, rot = { x = 0.000, y = 107.866, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4026, monster_id = 20011201, pos = { x = 65.338, y = 328.840, z = 565.809 }, rot = { x = 0.000, y = 73.847, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4027, monster_id = 20011201, pos = { x = 60.446, y = 338.590, z = 551.307 }, rot = { x = 0.000, y = 304.520, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4028, monster_id = 20010401, pos = { x = 44.309, y = 337.750, z = 567.996 }, rot = { x = 0.000, y = 182.918, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4029, monster_id = 20010401, pos = { x = 46.549, y = 337.750, z = 571.586 }, rot = { x = 0.000, y = 144.302, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, isBlockOneoff = true },
	{ config_id = 4030, monster_id = 20010201, pos = { x = 8.037, y = 349.866, z = 563.698 }, rot = { x = 0.000, y = 17.189, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, pose_id = 101, isBlockOneoff = true },
	{ config_id = 4031, monster_id = 20010101, pos = { x = 7.390, y = 349.866, z = 560.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true, pose_id = 101, isBlockOneoff = true },
	{ config_id = 4032, monster_id = 21010101, pos = { x = 9.674, y = 349.866, z = 566.078 }, rot = { x = 0.000, y = 216.979, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9010 },
	{ config_id = 4038, monster_id = 21010101, pos = { x = 42.437, y = 337.750, z = 566.225 }, rot = { x = 0.000, y = 32.616, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 4039, monster_id = 21010101, pos = { x = 46.523, y = 337.750, z = 566.729 }, rot = { x = 0.000, y = 317.580, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 4040, monster_id = 21010101, pos = { x = 48.407, y = 337.750, z = 568.850 }, rot = { x = 0.000, y = 333.930, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 4041, monster_id = 21010101, pos = { x = 58.774, y = 338.590, z = 551.852 }, rot = { x = 0.000, y = 111.748, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 4042, monster_id = 21010101, pos = { x = 67.057, y = 328.840, z = 564.078 }, rot = { x = 0.000, y = 328.595, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 4043, monster_id = 21010101, pos = { x = 66.173, y = 328.840, z = 567.169 }, rot = { x = 0.000, y = 206.325, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 4044, monster_id = 21010101, pos = { x = 76.209, y = 322.567, z = 609.439 }, rot = { x = 0.000, y = 88.230, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 4045, monster_id = 21010101, pos = { x = 79.801, y = 322.567, z = 612.584 }, rot = { x = 0.000, y = 226.359, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 4046, monster_id = 21010101, pos = { x = 67.383, y = 315.265, z = 591.965 }, rot = { x = 0.000, y = 318.976, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 4047, monster_id = 21010101, pos = { x = 11.025, y = 315.580, z = 643.406 }, rot = { x = 0.000, y = 86.122, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 4048, monster_id = 20010101, pos = { x = 13.314, y = 315.580, z = 643.620 }, rot = { x = 0.000, y = 265.374, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 201 },
	{ config_id = 4049, monster_id = 20010101, pos = { x = 14.413, y = 315.580, z = 642.563 }, rot = { x = 0.000, y = 295.202, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 201 }
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
		monsters = { 4001, 4002, 4003, 4004, 4005, 4006, 4007, 4008, 4009, 4010, 4011, 4012, 4013, 4014, 4015, 4016, 4017, 4018, 4019, 4020, 4021, 4022, 4023, 4024, 4025, 4026, 4027, 4028, 4029, 4030, 4031, 4032, 4038, 4039, 4040, 4041, 4042, 4043, 4044, 4045, 4046, 4047, 4048, 4049 },
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