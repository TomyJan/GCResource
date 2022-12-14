-- 基础信息
local base_info = {
	group_id = 133315030
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

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 30001, gadget_id = 70360363, pos = { x = -90.879, y = 270.128, z = 2745.078 }, rot = { x = 0.000, y = 317.246, z = 0.000 }, level = 27, interact_id = 123, area_id = 20 },
		{ config_id = 30002, gadget_id = 70211131, pos = { x = -90.938, y = 270.895, z = 2744.948 }, rot = { x = 0.034, y = 315.283, z = 0.054 }, level = 26, drop_tag = "灵龛须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
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