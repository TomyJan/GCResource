-- 基础信息
local base_info = {
	group_id = 111101297
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 297001,
	gadget_Teleport_2 = 297002,
	gadget_Teleport_3 = 297003,
	gadget_Teleport_4 = 297004,
	pointarray_1 = 110100066,
	pointarray_2 = 110100067,
	pointarray_3 = 110100068,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 297005,
	gadget_TeleportOperator_2 = 297006,
	gadget_TeleportOperator_3 = 297007,
	gadget_TeleportOperator_4 = 297008,
	group_ID = 111101297,
	pointarray_Rotate = 110100069,
	rotStep = 180
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10},
	{defs.gadget_Teleport_2,defs.gadget_Teleport_3,defs.pointarray_2,10},
	{defs.gadget_Teleport_1,defs.gadget_Teleport_4,defs.pointarray_3,10}
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
	{ config_id = 297001, gadget_id = 70950095, pos = { x = 2234.871, y = 241.500, z = -1353.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Teleport #2
	{ config_id = 297002, gadget_id = 70950095, pos = { x = 2236.010, y = 240.873, z = -1376.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Teleport #3
	{ config_id = 297003, gadget_id = 70950095, pos = { x = 2212.221, y = 242.493, z = -1376.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Teleport #4
	{ config_id = 297004, gadget_id = 70950095, pos = { x = 2269.116, y = 240.915, z = -1353.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Operator #1
	{ config_id = 297005, gadget_id = 70950145, pos = { x = 2234.881, y = 241.682, z = -1353.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- Operator #2
	{ config_id = 297006, gadget_id = 70950145, pos = { x = 2236.019, y = 241.459, z = -1377.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- Operator #3
	{ config_id = 297007, gadget_id = 70950145, pos = { x = 2212.382, y = 242.776, z = -1376.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- Operator #4
	{ config_id = 297008, gadget_id = 70950145, pos = { x = 2269.002, y = 241.504, z = -1353.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 297009, gadget_id = 70330114, pos = { x = 2234.871, y = 241.500, z = -1353.240 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 297010, gadget_id = 70330114, pos = { x = 2236.010, y = 240.873, z = -1376.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 297011, gadget_id = 70330114, pos = { x = 2236.010, y = 240.873, z = -1376.551 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 297012, gadget_id = 70330114, pos = { x = 2212.221, y = 241.501, z = -1376.203 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 297013, gadget_id = 70330114, pos = { x = 2234.871, y = 241.500, z = -1353.240 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 297014, gadget_id = 70330114, pos = { x = 2269.116, y = 240.915, z = -1353.474 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 297015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 2234.926, y = 241.817, z = -1353.490 } },
	-- Trigger #2
	{ config_id = 297016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 2236.056, y = 241.487, z = -1376.808 } },
	-- Trigger #3
	{ config_id = 297017, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 2212.367, y = 243.060, z = -1376.369 } },
	-- Trigger #4
	{ config_id = 297018, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 2269.036, y = 242.461, z = -1353.682 } }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1297015, name = "ENTER_REGION_297015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297015", action = "action_EVENT_ENTER_REGION_297015", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1297016, name = "ENTER_REGION_297016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297016", action = "action_EVENT_ENTER_REGION_297016", trigger_count = 0, forbid_guest = false },
	-- Trigger #3
	{ config_id = 1297017, name = "ENTER_REGION_297017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297017", action = "action_EVENT_ENTER_REGION_297017", trigger_count = 0, forbid_guest = false },
	-- Trigger #4
	{ config_id = 1297018, name = "ENTER_REGION_297018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_297018", action = "action_EVENT_ENTER_REGION_297018", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 297001, 297002, 297003, 297004, 297005, 297006, 297007, 297008, 297009, 297010, 297011, 297012, 297013, 297014 },
		regions = { 297015, 297016, 297017, 297018 },
		triggers = { "ENTER_REGION_297015", "ENTER_REGION_297016", "ENTER_REGION_297017", "ENTER_REGION_297018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_297015(context, evt)
	if evt.param1 ~= 297015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297016(context, evt)
	if evt.param1 ~= 297016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297017(context, evt)
	if evt.param1 ~= 297017 then return false end
	
	-- 判断变量"gadget_Teleport_3_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_3_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297017(context, evt)
			--gadget_Teleport_3 trigger
			local teleportid = defs["gadget_Teleport_3"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297018(context, evt)
	if evt.param1 ~= 297018 then return false end
	
	-- 判断变量"gadget_Teleport_4_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_4_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297018(context, evt)
			--gadget_Teleport_4 trigger
			local teleportid = defs["gadget_Teleport_4"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"