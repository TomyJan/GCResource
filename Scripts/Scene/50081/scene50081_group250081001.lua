-- 基础信息
local base_info = {
	group_id = 250081001
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 1001,
	gadget_Teleport_2 = 1002,
	gadget_Teleport_3 = 1003,
	gadget_Teleport_4 = 1004,
	pointarray_1 = 2,
	pointarray_2 = 3,
	gadget_TeleportOperator_1 = 1005,
	gadget_TeleportOperator_2 = 1006,
	gadget_TeleportOperator_3 = 1007,
	gadget_TeleportOperator_4 = 1008,
	group_ID = 250081001,
	pointarray_Rotate = 5,
	rotStep = 180
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,25},
	{defs.gadget_Teleport_3,defs.gadget_Teleport_4,defs.pointarray_2,50},
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
	-- Teleport #1
	{ config_id = 1001, gadget_id = 70950095, pos = { x = 375.419, y = 150.110, z = 709.341 }, rot = { x = 0.000, y = 200.765, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Teleport #2
	{ config_id = 1002, gadget_id = 70950095, pos = { x = 458.122, y = 162.162, z = 695.730 }, rot = { x = 0.000, y = 106.789, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Teleport #3
	{ config_id = 1003, gadget_id = 70950095, pos = { x = 461.518, y = 161.765, z = 695.113 }, rot = { x = 0.000, y = 270.949, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Teleport #4
	{ config_id = 1004, gadget_id = 70950095, pos = { x = 546.911, y = 230.449, z = 778.937 }, rot = { x = 0.000, y = 338.370, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Operator #1
	{ config_id = 1005, gadget_id = 70950145, pos = { x = 375.419, y = 150.110, z = 709.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- Operator #2
	{ config_id = 1006, gadget_id = 70950145, pos = { x = 458.122, y = 162.162, z = 695.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- Operator #3
	{ config_id = 1007, gadget_id = 70950145, pos = { x = 461.518, y = 161.765, z = 695.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- Operator #4
	{ config_id = 1008, gadget_id = 70950145, pos = { x = 546.911, y = 230.449, z = 778.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 1009, gadget_id = 70330114, pos = { x = 375.419, y = 151.765, z = 709.341 }, rot = { x = 0.000, y = 22.841, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70330114, pos = { x = 376.557, y = 149.483, z = 686.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70330114, pos = { x = 376.557, y = 149.483, z = 686.030 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70330114, pos = { x = 352.768, y = 150.111, z = 686.378 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70330114, pos = { x = 375.419, y = 150.110, z = 709.341 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70330114, pos = { x = 409.663, y = 149.525, z = 709.107 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 1015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 375.473, y = 150.427, z = 709.090 } },
	-- Trigger #2
	{ config_id = 1016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 458.122, y = 162.162, z = 695.730 } },
	-- Trigger #3
	{ config_id = 1017, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 461.518, y = 161.765, z = 695.113 } },
	-- Trigger #4
	{ config_id = 1018, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 546.911, y = 230.449, z = 778.937 } }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1001015, name = "ENTER_REGION_1015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1015", action = "action_EVENT_ENTER_REGION_1015", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1001016, name = "ENTER_REGION_1016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1016", action = "action_EVENT_ENTER_REGION_1016", trigger_count = 0, forbid_guest = false },
	-- Trigger #3
	{ config_id = 1001017, name = "ENTER_REGION_1017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1017", action = "action_EVENT_ENTER_REGION_1017", trigger_count = 0, forbid_guest = false },
	-- Trigger #4
	{ config_id = 1001018, name = "ENTER_REGION_1018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1018", action = "action_EVENT_ENTER_REGION_1018", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014 },
		regions = { 1015, 1016, 1017, 1018 },
		triggers = { "ENTER_REGION_1015", "ENTER_REGION_1016", "ENTER_REGION_1017", "ENTER_REGION_1018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_1015(context, evt)
	if evt.param1 ~= 1015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1016(context, evt)
	if evt.param1 ~= 1016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1017(context, evt)
	if evt.param1 ~= 1017 then return false end
	
	-- 判断变量"gadget_Teleport_3_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_3_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1017(context, evt)
			--gadget_Teleport_3 trigger
			local teleportid = defs["gadget_Teleport_3"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1018(context, evt)
	if evt.param1 ~= 1018 then return false end
	
	-- 判断变量"gadget_Teleport_4_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_4_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1018(context, evt)
			--gadget_Teleport_4 trigger
			local teleportid = defs["gadget_Teleport_4"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"