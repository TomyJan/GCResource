-- 基础信息
local base_info = {
	group_id = 133316008
}

-- Trigger变量
local defs = {
	group_ID = 133316008,
	gadget_thunderThelfID = 8001,
	pointarray_ID = 331600002,
	maxPointCount = 14,
	gadget_Reward_1 = 8002,
	pointInfo = {5,10,14} 
}

-- DEFS_MISCS
function GetNextPath(context)
	local path = {}
	local index = ScriptLib.GetGroupVariableValue(context,"nextRouteIndex")
	local stoppoint = defs.pointInfo[index]
	ScriptLib.PrintLog(context, "stop point : "..stoppoint)
	local currentNodeIndex = ScriptLib.GetGroupVariableValue(context,"currentPathNodeIndex")
	for i=currentNodeIndex + 1,stoppoint do
		table.insert(path,i)
	end
	return path
end


function MovePlatform(context)
	ScriptLib.PrintLog(context, "platform to move")
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isMoving", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end


	ScriptLib.SetPlatformPointArray(context, defs.gadget_thunderThelfID, defs.pointarray_ID, GetNextPath(context), { route_type = 0 })
	ScriptLib.PrintLog(context, "platform to move : start platform")
	return 0
end

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
	{ config_id = 8001, gadget_id = 70350292, pos = { x = 653.961, y = 192.686, z = 6611.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, start_route = false, persistent = true, is_use_point_array = true, area_id = 30 },
	{ config_id = 8002, gadget_id = 70211121, pos = { x = 661.265, y = 209.682, z = 6535.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 30 },
	{ config_id = 8003, gadget_id = 70350292, pos = { x = 660.425, y = 210.135, z = 6537.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, start_route = false, persistent = true, is_use_point_array = true, area_id = 30 },
	{ config_id = 8006, gadget_id = 70220007, pos = { x = 662.369, y = 208.521, z = 6539.156 }, rot = { x = 0.000, y = 337.517, z = 0.000 }, level = 32, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinished", value = 0, no_refresh = true },
	{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
	{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
	{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
	{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
	{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1008004, name = "PLATFORM_REACH_POINT_8004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8004", action = "action_EVENT_PLATFORM_REACH_POINT_8004", trigger_count = 0 },
		{ config_id = 1008005, name = "AVATAR_NEAR_PLATFORM_8005", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_8005", action = "action_EVENT_AVATAR_NEAR_PLATFORM_8005", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 8001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } },
			{ config_id = 8006, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isFinished", value = 0, no_refresh = true },
			{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
			{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
			{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
			{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
			{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 8002, state = 0 },
			{ config_id = 8003, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isFinished", value = 0, no_refresh = true },
			{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
			{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
			{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
			{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
			{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================