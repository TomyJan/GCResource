-- this is a group where there are 3 monsters during quest `Going Upon The Breeze: Clear Out the Nearby Hilichurl Camp: Lumine and Amber`
local base_info = {
	group_id = 133003136
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 623, monster_id = 21010201, pos = { x = 2225.105, y = 224.670, z = -1189.090 }, rot = { x = 0.000, y = 292.565, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 1443, monster_id = 21010201, pos = { x = 2219.933, y = 224.445, z = -1189.930 }, rot = { x = 0.000, y = 50.330, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 1444, monster_id = 21010401, pos = { x = 2214.254, y = 227.204, z = -1190.236 }, rot = { x = 0.000, y = 251.832, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 1 },
	{ config_id = 1476, monster_id = 21010201, pos = { x = 2224.217, y = 224.670, z = -1186.167 }, rot = { x = 0.000, y = 232.938, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 1477, monster_id = 21010201, pos = { x = 2220.168, y = 224.437, z = -1187.894 }, rot = { x = 0.000, y = 102.456, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 1478, monster_id = 21010201, pos = { x = 2222.822, y = 224.617, z = -1191.042 }, rot = { x = 0.000, y = 9.297, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 1 },
	{ config_id = 1479, monster_id = 21010401, pos = { x = 2214.342, y = 227.185, z = -1190.517 }, rot = { x = 0.000, y = 261.517, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4116, gadget_id = 70310004, pos = { x = 2222.727, y = 224.630, z = -1188.529 }, rot = { x = 0.000, y = 114.747, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4117, gadget_id = 70220014, pos = { x = 2227.387, y = 224.670, z = -1187.105 }, rot = { x = 0.000, y = 183.667, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4118, gadget_id = 70220014, pos = { x = 2217.394, y = 224.510, z = -1193.924 }, rot = { x = 0.000, y = 183.667, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4119, gadget_id = 70220014, pos = { x = 2226.376, y = 224.670, z = -1186.267 }, rot = { x = 0.000, y = 183.667, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4121, gadget_id = 70220014, pos = { x = 2218.643, y = 224.519, z = -1193.860 }, rot = { x = 0.000, y = 183.667, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4122, gadget_id = 70220013, pos = { x = 2219.114, y = 226.340, z = -1201.547 }, rot = { x = 0.000, y = 309.140, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4123, gadget_id = 70220013, pos = { x = 2221.263, y = 226.157, z = -1201.014 }, rot = { x = 0.000, y = 355.469, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4124, gadget_id = 70220013, pos = { x = 2228.357, y = 224.741, z = -1184.838 }, rot = { x = 354.060, y = 340.173, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4125, gadget_id = 70211012, pos = { x = 2222.418, y = 224.610, z = -1192.918 }, rot = { x = 0.000, y = 357.264, z = 0.000 }, level = 1, chest_drop_id = 1010800, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- trigger
triggers = {
	{ config_id = 1000511, name = "ANY_MONSTER_DIE_511", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_511", action = "action_EVENT_ANY_MONSTER_DIE_511" }
}

-- variable
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- Created at initialization
init_config = {
	suite = 2,
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
		monsters = { 623, 1443, 1444 },
		gadgets = { 4116, 4117, 4118, 4119, 4121, 4122, 4123, 4124, 4125 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_511" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1476, 1477, 1478, 1479 },
		gadgets = { 4116, 4117, 4118, 4119, 4121, 4122, 4123, 4124 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- trigger
-- 
--================================================================

-- Triggering conditions (It will take action if 3 monsters are killed)
function condition_EVENT_ANY_MONSTER_DIE_511(context, evt)
	-- Determine whether the number of remaining monsters is 0
	local count_kill = ScriptLib.GetGroupMonsterCount(context)
    if count_kill > 0 then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : Not all monsters killed. Remaining count: " .. count_kill)
        return false
    end
	
	return true
end

-- trigger action
function action_EVENT_ANY_MONSTER_DIE_511(context, evt)
	-- Unlock target 4125 aka treasure
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 4125, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : skip bacuse treasure here should be here but because we are on a private server and have finished then resetting the quest from the beginning again makes the treasure not appear because we have taken it before.")
		--return -1
	end
	
	-- The notification task system completes the condition type "LUA notification", and the complex parameter is the progress of quest_param +1
	-- maybe need hack QUEST_CONTENT_ADD_QUEST_PROGRESS?
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003136") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- Set the specified Group to be contestable
	    ScriptLib.SetGroupReplaceable(context, 133003136, true)
	
	return 0
end