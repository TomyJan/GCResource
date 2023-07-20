-- 基础信息
local base_info = {
	group_id = 233100003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20010501, pos = { x = 6.062, y = 0.013, z = -5.098 }, rot = { x = 0.000, y = 346.531, z = 0.000 }, level = 1 },
	{ config_id = 3002, monster_id = 20010501, pos = { x = -7.213, y = 0.013, z = -5.111 }, rot = { x = 0.000, y = 21.465, z = 0.000 }, level = 1 },
	{ config_id = 3003, monster_id = 20010501, pos = { x = -4.678, y = 0.013, z = -6.616 }, rot = { x = 0.000, y = 18.562, z = 0.000 }, level = 1 },
	{ config_id = 3004, monster_id = 20010501, pos = { x = 0.091, y = 0.013, z = -6.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, monster_id = 20010501, pos = { x = 3.888, y = 0.013, z = -4.970 }, rot = { x = 0.000, y = 343.731, z = 0.000 }, level = 1 },
	{ config_id = 3006, monster_id = 20010501, pos = { x = -6.849, y = 0.013, z = -1.008 }, rot = { x = 0.000, y = 64.828, z = 0.000 }, level = 1 },
	{ config_id = 3007, monster_id = 20010701, pos = { x = 7.499, y = 0.013, z = -1.344 }, rot = { x = 0.000, y = 270.084, z = 0.000 }, level = 1 },
	{ config_id = 3008, monster_id = 20010501, pos = { x = 1.928, y = 0.013, z = 7.287 }, rot = { x = 0.000, y = 182.789, z = 0.000 }, level = 1 },
	{ config_id = 3009, monster_id = 20010501, pos = { x = -2.576, y = 0.013, z = 5.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3010, monster_id = 20010501, pos = { x = -5.618, y = 0.013, z = 2.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3011, monster_id = 20010501, pos = { x = 5.700, y = 0.013, z = 2.579 }, rot = { x = 0.000, y = 234.100, z = 0.000 }, level = 1 },
	{ config_id = 3012, monster_id = 20010501, pos = { x = 5.628, y = 0.013, z = -2.446 }, rot = { x = 0.000, y = 322.134, z = 0.000 }, level = 1 },
	{ config_id = 3013, monster_id = 20010701, pos = { x = -2.773, y = 0.127, z = -3.835 }, rot = { x = 0.000, y = 20.514, z = 0.000 }, level = 1 },
	{ config_id = 3014, monster_id = 20010501, pos = { x = -4.465, y = 0.013, z = 4.223 }, rot = { x = 0.000, y = 50.168, z = 0.000 }, level = 1 },
	{ config_id = 3015, monster_id = 20010501, pos = { x = -0.926, y = 0.013, z = 6.855 }, rot = { x = 0.000, y = 126.700, z = 0.000 }, level = 1 },
	{ config_id = 3016, monster_id = 20010501, pos = { x = -4.060, y = 0.013, z = 5.583 }, rot = { x = 0.000, y = 101.360, z = 0.000 }, level = 1 },
	{ config_id = 3017, monster_id = 20010501, pos = { x = 4.963, y = 0.013, z = 5.303 }, rot = { x = 0.000, y = 274.510, z = 0.000 }, level = 1 },
	{ config_id = 3018, monster_id = 20010501, pos = { x = -8.606, y = 0.013, z = 1.441 }, rot = { x = 0.000, y = 133.400, z = 0.000 }, level = 1 },
	{ config_id = 3019, monster_id = 20010501, pos = { x = -3.216, y = 0.013, z = 8.302 }, rot = { x = 0.000, y = 203.110, z = 0.000 }, level = 1 },
	{ config_id = 3020, monster_id = 20010701, pos = { x = -0.049, y = 0.013, z = -8.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3021, monster_id = 20010601, pos = { x = -7.951, y = 0.013, z = -6.782 }, rot = { x = 0.000, y = 43.800, z = 0.000 }, level = 1 },
	{ config_id = 3022, monster_id = 20010701, pos = { x = 7.011, y = 0.013, z = -6.157 }, rot = { x = 0.000, y = 320.900, z = 0.000 }, level = 1 },
	{ config_id = 3023, monster_id = 20010501, pos = { x = 4.379, y = 0.013, z = 7.574 }, rot = { x = 0.000, y = 230.800, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3024, gadget_id = 70900205, pos = { x = 6.060, y = -1.446, z = 3.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003025, name = "MONSTER_TIDE_DIE_3025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_3025", action = "action_EVENT_MONSTER_TIDE_DIE_3025" },
	{ config_id = 1003026, name = "CHALLENGE_FAIL_3026", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3026" },
	{ config_id = 1003027, name = "ANY_MONSTER_LIVE_3027", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3027", action = "action_EVENT_ANY_MONSTER_LIVE_3027" },
	{ config_id = 1003028, name = "CHALLENGE_SUCCESS_3028", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3028" }
}

-- variable
variables = {
	{ config_id = 1, name = "monster_wave", value = 0, no_refresh = false }
}

-- obsolete data
garbages = {
	triggers = {
		{ config_id = 1003029, name = "CHALLENGE_FAIL_3029", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3029" }
	}
}

--================================================================
-- 
-- Initial configuration
-- 
--================================================================

-- Created at initialization
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- group configuration
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 3024 },
		regions = { },
		triggers = { "MONSTER_TIDE_DIE_3025", "CHALLENGE_FAIL_3026", "ANY_MONSTER_LIVE_3027", "CHALLENGE_SUCCESS_3028" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- trigger
-- 
--================================================================

-- Triggering conditions
function condition_EVENT_MONSTER_TIDE_DIE_3025(context, evt)
	if 20 ~= evt.param1 then
		ScriptLib.PrintContextLog(context, "failed: " .. evt.param1)
		return false
	end
	
	return true
end

-- trigger action (this only takes effect if 19 (aka 20) monsters are killed)?
function action_EVENT_MONSTER_TIDE_DIE_3025(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3020, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3021, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3022, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3026(context, evt)
		-- Regenerate the specified group and specified suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233100003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- Dungeon failure settlement
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

-- Triggering conditions
function condition_EVENT_ANY_MONSTER_LIVE_3027(context, evt)
	if 3001 ~= evt.param1 then
		ScriptLib.PrintContextLog(context, "no start yet: " .. evt.param1)
		return false
	end
	
	return true
end

-- trigger action
function action_EVENT_ANY_MONSTER_LIVE_3027(context, evt)
	-- Create an area challenge with the number 1 (the identification id of the challenge) and the challenge content as 1000. For the specific parameter filling method, see the notes in the DungeonChallengeData table. All the filled values must be of type int
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1000, 300, 233100003, 23, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- Three-star timing for climbing the tower (is_stop: 0: start timing, 1: stop timing)
	if 0 ~= ScriptLib.TowerCountTimeStatus(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_time_status")
		return -1
	end
	
	return 0
end

-- trigger action
function action_EVENT_CHALLENGE_SUCCESS_3028(context, evt)
	-- Change the state of the gadget whose configid is 1002 in the specified group 233100001
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233100001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- Three-star timing for climbing the tower (is_stop: 0: start timing, 1: stop timing)
	if 0 ~= ScriptLib.TowerCountTimeStatus(context, 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_time_status")
		return -1
	end
	
	return 0
end