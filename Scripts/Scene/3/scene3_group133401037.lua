-- 基础信息
local base_info = {
	group_id = 133401037
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 37001, monster_id = 21010101, pos = { x = 3608.327, y = 115.862, z = 4516.851 }, rot = { x = 0.000, y = 339.651, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9010 },
	{ config_id = 37002, monster_id = 21010101, pos = { x = 3599.681, y = 115.897, z = 4517.685 }, rot = { x = 0.000, y = 46.840, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9015 },
	{ config_id = 37003, monster_id = 21010101, pos = { x = 3606.476, y = 115.870, z = 4524.715 }, rot = { x = 0.000, y = 215.847, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9016 },
	{ config_id = 37007, monster_id = 20050301, pos = { x = 3543.079, y = 104.688, z = 4522.138 }, rot = { x = 0.000, y = 307.469, z = 0.000 }, level = 1, drop_tag = "魔法生物" },
	{ config_id = 37008, monster_id = 20050301, pos = { x = 3546.575, y = 104.688, z = 4530.551 }, rot = { x = 0.000, y = 224.294, z = 0.000 }, level = 1, drop_tag = "魔法生物" },
	{ config_id = 37016, monster_id = 20050501, pos = { x = 3603.875, y = 93.041, z = 4587.105 }, rot = { x = 0.000, y = 265.111, z = 0.000 }, level = 1, drop_tag = "魔法生物" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 37004, gadget_id = 70710078, pos = { x = 3606.765, y = 105.869, z = 4521.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 37005, gadget_id = 70710078, pos = { x = 3602.992, y = 105.885, z = 4518.974 }, rot = { x = 0.000, y = 104.183, z = 0.000 }, level = 1 },
	{ config_id = 37006, gadget_id = 70710078, pos = { x = 3600.743, y = 105.887, z = 4527.671 }, rot = { x = 0.000, y = 192.536, z = 0.000 }, level = 1 },
	{ config_id = 37009, gadget_id = 70290437, pos = { x = 3598.112, y = 93.045, z = 4580.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 37010, gadget_id = 70290437, pos = { x = 3604.673, y = 93.045, z = 4578.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 37011, gadget_id = 70290437, pos = { x = 3610.878, y = 93.045, z = 4583.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 37012, gadget_id = 70290437, pos = { x = 3610.103, y = 93.045, z = 4591.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 37013, gadget_id = 70290437, pos = { x = 3596.856, y = 93.108, z = 4591.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 37014, gadget_id = 70290437, pos = { x = 3603.453, y = 93.108, z = 4595.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 37017, gadget_id = 70350081, pos = { x = 3610.342, y = 92.997, z = 4600.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 37018, gadget_id = 70350081, pos = { x = 3610.342, y = 103.004, z = 4600.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1037015, name = "ANY_GADGET_DIE_37015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_37015", action = "action_EVENT_ANY_GADGET_DIE_37015" }
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
		monsters = { 37001, 37002, 37003, 37007, 37008, 37016 },
		gadgets = { 37004, 37005, 37006, 37009, 37010, 37011, 37012, 37013, 37014, 37017, 37018 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_37015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_37015(context, evt)
	if 37014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_37015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133401037, 2)
	
	return 0
end