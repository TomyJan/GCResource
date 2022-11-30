-- 基础信息
local base_info = {
	group_id = 133301758
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
	{ config_id = 758008, gadget_id = 70290009, pos = { x = -459.235, y = 215.686, z = 3881.509 }, rot = { x = 0.000, y = 49.590, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 758009, gadget_id = 70500000, pos = { x = -459.235, y = 215.686, z = 3881.509 }, rot = { x = 0.000, y = 49.590, z = 0.000 }, level = 33, point_type = 3005, owner = 758008, area_id = 22 },
	{ config_id = 758012, gadget_id = 70290009, pos = { x = -428.578, y = 225.072, z = 3891.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 758013, gadget_id = 70500000, pos = { x = -428.578, y = 225.072, z = 3891.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 3005, owner = 758012, area_id = 22 },
	{ config_id = 758014, gadget_id = 70290009, pos = { x = -465.673, y = 229.198, z = 3973.586 }, rot = { x = 12.414, y = 198.035, z = 342.506 }, level = 33, area_id = 22 },
	{ config_id = 758015, gadget_id = 70500000, pos = { x = -465.673, y = 229.198, z = 3973.586 }, rot = { x = 12.414, y = 198.034, z = 342.506 }, level = 33, point_type = 3005, owner = 758014, area_id = 22 }
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
	monsters = {
		{ config_id = 758001, monster_id = 20011301, pos = { x = -467.073, y = 222.596, z = 3912.621 }, rot = { x = 0.000, y = 192.560, z = 0.000 }, level = 33, drop_tag = "大史莱姆", area_id = 22 },
		{ config_id = 758002, monster_id = 20011201, pos = { x = -467.930, y = 222.882, z = 3914.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", area_id = 22 },
		{ config_id = 758003, monster_id = 20011201, pos = { x = -458.261, y = 221.356, z = 3906.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", area_id = 22 },
		{ config_id = 758004, monster_id = 20011301, pos = { x = -454.957, y = 215.785, z = 3880.740 }, rot = { x = 0.000, y = 270.284, z = 0.000 }, level = 33, drop_tag = "大史莱姆", area_id = 22 },
		{ config_id = 758005, monster_id = 20011201, pos = { x = -417.478, y = 226.057, z = 3892.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", area_id = 22 },
		{ config_id = 758006, monster_id = 20011201, pos = { x = -424.006, y = 225.445, z = 3892.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", area_id = 22 }
	},
	gadgets = {
		{ config_id = 758007, gadget_id = 70210101, pos = { x = -452.534, y = 232.272, z = 3946.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", isOneoff = true, persistent = true, area_id = 22 },
		{ config_id = 758010, gadget_id = 70210101, pos = { x = -422.654, y = 226.432, z = 3888.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", isOneoff = true, persistent = true, area_id = 22 },
		{ config_id = 758011, gadget_id = 70210101, pos = { x = -487.195, y = 228.596, z = 3968.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", isOneoff = true, persistent = true, area_id = 22 }
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
		gadgets = { 758008, 758009, 758012, 758013, 758014, 758015 },
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