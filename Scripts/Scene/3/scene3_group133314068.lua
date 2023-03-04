-- 基础信息
local base_info = {
	group_id = 133314068
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
	{ config_id = 68001, gadget_id = 71700434, pos = { x = -971.021, y = 16.879, z = 4789.344 }, rot = { x = 0.000, y = 0.000, z = 8.279 }, level = 32, area_id = 32 },
	{ config_id = 68002, gadget_id = 70310018, pos = { x = -974.936, y = 16.420, z = 4787.828 }, rot = { x = 10.717, y = 0.609, z = 9.755 }, level = 32, state = GadgetState.GearStart, area_id = 32 }
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
		gadgets = { 68001, 68002 },
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