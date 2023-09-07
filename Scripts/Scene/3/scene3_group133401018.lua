-- 基础信息
local base_info = {
	group_id = 133401018
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 18001, monster_id = 21010101, pos = { x = 3613.859, y = 117.130, z = 4749.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9014 },
	{ config_id = 18002, monster_id = 21010101, pos = { x = 3625.715, y = 117.130, z = 4752.096 }, rot = { x = 0.000, y = 291.094, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9014 },
	{ config_id = 18003, monster_id = 21010101, pos = { x = 3613.802, y = 117.130, z = 4760.455 }, rot = { x = 0.000, y = 167.573, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9014 },
	{ config_id = 18010, monster_id = 21010101, pos = { x = 3616.262, y = 137.130, z = 4751.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9002 },
	{ config_id = 18011, monster_id = 21010101, pos = { x = 3628.118, y = 137.130, z = 4754.240 }, rot = { x = 0.000, y = 291.094, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9002 },
	{ config_id = 18012, monster_id = 21010101, pos = { x = 3616.205, y = 137.130, z = 4762.599 }, rot = { x = 0.000, y = 167.573, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9002 },
	{ config_id = 18014, monster_id = 20050501, pos = { x = 3671.533, y = 127.130, z = 4752.513 }, rot = { x = 0.000, y = 267.567, z = 0.000 }, level = 1, drop_tag = "魔法生物" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 18004, gadget_id = 70710078, pos = { x = 3614.809, y = 127.130, z = 4748.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18005, gadget_id = 70710078, pos = { x = 3622.847, y = 127.130, z = 4743.467 }, rot = { x = 0.000, y = 291.390, z = 0.000 }, level = 1 },
	{ config_id = 18006, gadget_id = 70710078, pos = { x = 3623.848, y = 127.130, z = 4756.481 }, rot = { x = 0.000, y = 61.403, z = 0.000 }, level = 1 },
	{ config_id = 18007, gadget_id = 70350081, pos = { x = 3631.712, y = 127.130, z = 4746.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18008, gadget_id = 70350081, pos = { x = 3632.088, y = 117.130, z = 4745.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18009, gadget_id = 70210102, pos = { x = 3563.294, y = 122.130, z = 4752.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 18013, shape = RegionShape.SPHERE, radius = 5, pos = { x = 3667.118, y = 128.108, z = 4751.610 } }
}

-- 触发器
triggers = {
	{ config_id = 1018013, name = "ENTER_REGION_18013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_18013", action = "action_EVENT_ENTER_REGION_18013" }
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
		monsters = { 18014 },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_18013(context, evt)
	if evt.param1 ~= 18013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_18013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133401018, 2)
	
	return 0
end