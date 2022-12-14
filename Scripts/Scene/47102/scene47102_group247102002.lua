-- 基础信息
local base_info = {
	group_id = 247102002
}

-- Trigger变量
local defs = {
	battle_group = 247102001,
	reborn_gear = 2005
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
	{ config_id = 2005, gadget_id = 70290662, pos = { x = 723.342, y = 90.714, z = 775.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 2001, pos = { x = 724.303, y = 90.183, z = 782.096 }, rot = { x = 0.000, y = 334.500, z = 0.000 } },
	{ config_id = 2002, pos = { x = 723.856, y = 90.184, z = 779.151 }, rot = { x = 0.000, y = 334.500, z = 0.000 } },
	{ config_id = 2003, pos = { x = 720.654, y = 90.183, z = 777.319 }, rot = { x = 0.000, y = 334.500, z = 0.000 } },
	{ config_id = 2004, pos = { x = 717.744, y = 90.184, z = 778.228 }, rot = { x = 0.000, y = 334.500, z = 0.000 } }
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
		gadgets = { 2005 },
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

require "V3_2/Activity_BattleMushroomMonster_FugusInitialize"
require "V3_2/Activity_BattleMushroomMonster_FungusGroup"