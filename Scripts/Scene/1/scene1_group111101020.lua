-- 基础信息
local base_info = {
	group_id = 111101020
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 20001,
	gadget_Teleport_2 = 20002,
	gadget_Teleport_3 = 20003,
	gadget_Teleport_4 = 20004,
	pointarray_1 = 110100051,
	pointarray_2 = 110100052,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 20005,
	gadget_TeleportOperator_2 = 20006,
	gadget_TeleportOperator_3 = 20007,
	gadget_TeleportOperator_4 = 20008,
	group_ID = 111101020,
	pointarray_Rotate = 110100053,
	rotStep = 180
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10},
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
	{ config_id = 20001, gadget_id = 70950095, pos = { x = 2332.531, y = 248.610, z = -1216.265 }, rot = { x = 0.000, y = 21.410, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Teleport #2
	{ config_id = 20002, gadget_id = 70950095, pos = { x = 2415.235, y = 260.662, z = -1229.876 }, rot = { x = 0.000, y = 287.598, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Teleport #3
	{ config_id = 20003, gadget_id = 70950095, pos = { x = 2418.631, y = 260.265, z = -1230.493 }, rot = { x = 0.000, y = 97.351, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Teleport #4
	{ config_id = 20004, gadget_id = 70950095, pos = { x = 2504.023, y = 328.949, z = -1146.669 }, rot = { x = 0.000, y = 164.084, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Operator #1
	{ config_id = 20005, gadget_id = 70950145, pos = { x = 2332.531, y = 248.610, z = -1216.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- Operator #2
	{ config_id = 20006, gadget_id = 70950145, pos = { x = 2415.235, y = 260.662, z = -1229.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- Operator #3
	{ config_id = 20007, gadget_id = 70950145, pos = { x = 2418.631, y = 260.265, z = -1230.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- Operator #4
	{ config_id = 20008, gadget_id = 70950145, pos = { x = 2504.023, y = 328.949, z = -1146.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 20009, gadget_id = 70330114, pos = { x = 2332.531, y = 250.265, z = -1216.265 }, rot = { x = 0.000, y = 22.841, z = 0.000 }, level = 1 },
	{ config_id = 20010, gadget_id = 70330114, pos = { x = 2415.235, y = 260.662, z = -1229.876 }, rot = { x = 0.000, y = 82.137, z = 0.000 }, level = 1 },
	{ config_id = 20011, gadget_id = 70330114, pos = { x = 2418.631, y = 260.265, z = -1230.493 }, rot = { x = 0.000, y = 96.290, z = 0.000 }, level = 1 },
	{ config_id = 20012, gadget_id = 70330114, pos = { x = 2309.881, y = 248.611, z = -1239.228 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 20013, gadget_id = 70330114, pos = { x = 2332.531, y = 248.610, z = -1216.265 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 20014, gadget_id = 70330114, pos = { x = 2366.776, y = 248.025, z = -1216.499 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 20015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 2332.586, y = 249.798, z = -1216.516 } },
	-- Trigger #2
	{ config_id = 20016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 2415.235, y = 261.753, z = -1229.876 } },
	-- Trigger #3
	{ config_id = 20017, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 2418.631, y = 261.325, z = -1230.493 } },
	-- Trigger #4
	{ config_id = 20018, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 2504.023, y = 330.166, z = -1146.669 } }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1020015, name = "ENTER_REGION_20015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20015", action = "action_EVENT_ENTER_REGION_20015", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1020016, name = "ENTER_REGION_20016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20016", action = "action_EVENT_ENTER_REGION_20016", trigger_count = 0, forbid_guest = false },
	-- Trigger #3
	{ config_id = 1020017, name = "ENTER_REGION_20017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20017", action = "action_EVENT_ENTER_REGION_20017", trigger_count = 0, forbid_guest = false },
	-- Trigger #4
	{ config_id = 1020018, name = "ENTER_REGION_20018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20018", action = "action_EVENT_ENTER_REGION_20018", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 20001, 20002, 20003, 20004, 20005, 20006, 20007, 20008, 20009, 20010, 20011, 20012, 20013, 20014 },
		regions = { 20015, 20016, 20017, 20018 },
		triggers = { "ENTER_REGION_20015", "ENTER_REGION_20016", "ENTER_REGION_20017", "ENTER_REGION_20018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_20015(context, evt)
	if evt.param1 ~= 20015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_20016(context, evt)
	if evt.param1 ~= 20016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_20017(context, evt)
	if evt.param1 ~= 20017 then return false end
	
	-- 判断变量"gadget_Teleport_3_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_3_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20017(context, evt)
			--gadget_Teleport_3 trigger
			local teleportid = defs["gadget_Teleport_3"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_20018(context, evt)
	if evt.param1 ~= 20018 then return false end
	
	-- 判断变量"gadget_Teleport_4_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_4_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20018(context, evt)
			--gadget_Teleport_4 trigger
			local teleportid = defs["gadget_Teleport_4"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"