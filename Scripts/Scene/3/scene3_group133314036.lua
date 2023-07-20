-- 基础信息
local base_info = {
	group_id = 133314036
}

-- Trigger变量
local defs = {
	pointarray_ID = 331400004,
	pointArrayNum = 2,
	gadget_shooter = 36002,
	gadget_shooterBase_1 = 36001
}

-- DEFS_MISCS
--玩法关注
--发射射线的点
defs.shootPoints={2}
--短暂停留的点
defs.shortStayPointList={}
--短暂停留的时间
defs.stayTime={}

--增删点后关注：
--停留点List
defs.stopPoints = {1,2}
--停留点对应底座
defs.shooterBaseList={
[1]=defs.gadget_shooterBase_1,
[2]=defs.gadget_shooterBase_1
}

--Lua Require所需：
--添加的按钮id
defs.optionID=435
--发射器id
defs.shooterGadgetID=defs.gadget_shooter

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
	{ config_id = 36001, gadget_id = 70330300, pos = { x = -794.495, y = -58.818, z = 4844.472 }, rot = { x = 0.000, y = 189.418, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 36002, gadget_id = 70330280, pos = { x = -794.495, y = -58.818, z = 4844.472 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 32, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "curMoveIndex", value = 1, no_refresh = true }
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
		gadgets = { 36001, 36002 },
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

require "V3_1/ChiWangShooter"