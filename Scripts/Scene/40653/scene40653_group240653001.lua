-- This is For Scene: Spire of Solitary Enlightenment (LV 4)
local base_info = {group_id = 240653001}

-- ================================================================
-- 
-- Configure
-- 
-- ================================================================

-- Monster
monsters = {
    {
        config_id = 1008,
        monster_id = 25310101,
        pos = {x = 3.787, y = 0.192, z = -2.572},
        rot = {x = 0.000, y = 0.000, z = 0.000},
        level = 1,
        affix = {1008},
        pose_id = 1
    }, {
        config_id = 1011,
        monster_id = 25310301,
        pos = {x = -0.030, y = 0.192, z = -3.311},
        rot = {x = 0.000, y = 0.000, z = 0.000},
        level = 1,
        affix = {6104, 1008}
    }, {
        config_id = 1012,
        monster_id = 25310201,
        pos = {x = -4.607, y = 0.192, z = -2.466},
        rot = {x = 0.000, y = 0.000, z = 0.000},
        level = 1,
        affix = {1008},
        pose_id = 1
    }
}

-- NPC
npcs = {}

-- Gadgets
gadgets = {
    {
        config_id = 1001,
        gadget_id = 70360010,
        pos = {x = 0.100, y = 0.036, z = 3.216},
        rot = {x = 0.000, y = 0.000, z = 0.000},
        level = 1,
        state = GadgetState.GearStop
    } -- for press start
}

-- Region
regions = {
    {
        config_id = 1002,
        shape = RegionShape.CUBIC,
        size = {x = 50.000, y = 15.000, z = 5.000},
        pos = {x = -0.007, y = 3.752, z = 22.461}
    }
}

-- List of triggers 
triggers = {
    {
        config_id = 1001002,
        name = "ENTER_REGION_1002",
        event = EventType.EVENT_ENTER_REGION,
        source = "",
        condition = "condition_EVENT_ENTER_REGION_1002",
        action = "action_EVENT_ENTER_REGION_1002",
        forbid_guest = false
    }, {
        config_id = 1001003,
        name = "SELECT_OPTION_1003",
        event = EventType.EVENT_SELECT_OPTION,
        source = "",
        condition = "condition_EVENT_SELECT_OPTION_1003",
        action = "action_EVENT_SELECT_OPTION_1003",
        trigger_count = 0
    }, {
        config_id = 1001004,
        name = "CHALLENGE_SUCCESS_1004",
        event = EventType.EVENT_CHALLENGE_SUCCESS,
        source = "",
        condition = "",
        action = "action_EVENT_CHALLENGE_SUCCESS_1004"
    }, {
        config_id = 1001005,
        name = "CHALLENGE_FAIL_1005",
        event = EventType.EVENT_CHALLENGE_FAIL,
        source = "",
        condition = "",
        action = "action_EVENT_CHALLENGE_FAIL_1005"
    }, {
        config_id = 1001023,
        name = "ANY_MONSTER_LIVE_1023",
        event = EventType.EVENT_ANY_MONSTER_LIVE,
        source = "",
        condition = "condition_EVENT_ANY_MONSTER_LIVE_1023",
        action = "action_EVENT_ANY_MONSTER_LIVE_1023",
        trigger_count = 0
    }
}

-- Variable
variables = {{config_id = 1, name = "challenge", value = 0, no_refresh = false}}

-- ================================================================
-- 
-- Initial configuration
-- 
-- ================================================================

-- Created initialization config
init_config = {suite = 1, end_suite = 0, rand_suite = false}

-- ================================================================
-- 
-- Group Configuration
-- 
-- ================================================================

suites = {
    {
        -- suite_id = 1,
        -- description = ,
        monsters = {},
        gadgets = {1001},
        regions = {1002},
        triggers = {"ENTER_REGION_1002", "SELECT_OPTION_1003"}, -- menu start
        rand_weight = 100
    }, {
        -- suite_id = 2,
        -- description = ,
        monsters = {1008, 1011, 1012}, -- 3 monster (challenge #1)
        gadgets = {},
        regions = {},
        triggers = {"CHALLENGE_SUCCESS_1004", "CHALLENGE_FAIL_1005","ANY_MONSTER_LIVE_1023"},
        rand_weight = 100
    }, {
        -- suite_id = 3, ???
        -- description = ,
        monsters = {},
        gadgets = {},
        regions = {},
        triggers = {},
        rand_weight = 100
    }, {
        -- suite_id = 4, ???
        -- description = ,
        monsters = {},
        gadgets = {},
        regions = {},
        triggers = {},
        rand_weight = 100
    }
}

-- ================================================================
-- 
-- Trigger
-- 
-- ================================================================

-- Situation if entering Scene, TODO: if false with region just back to old scene?
function condition_EVENT_ENTER_REGION_1002(context, evt)
    if evt.param1 ~= 1002 then return false end

    -- Check if characters is not less than 1
    if ScriptLib.GetRegionEntityCount(context, {
        region_eid = evt.source_eid,
        entity_type = EntityType.AVATAR
    }) < 1 then return false end

    return true
end

-- If situation enter scene is all right, take action
function action_EVENT_ENTER_REGION_1002(context, evt)
    -- Change state gadget with config_id is 1001 in specified group 240653001 (start)

    LF_Log(context, "Melon :)")

    if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240653001, 1001,GadgetState.Default) then
        ScriptLib.PrintContextLog(context,"@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
        return -1
    end

    -- Set Situation Scene "get ready and lock"
    if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240653001, 1001, {7}) then
        ScriptLib.PrintContextLog(context,"@@ LUA_WARNING : set_wok_options_by_configid")
        return -1
    end

    return 0
end

-- Check if correct gadget player start
function condition_EVENT_SELECT_OPTION_1003(context, evt)
    -- Make sure this is correct gadgetid 1001 and option_id 7
    if 1001 ~= evt.param1 then return false end

    if 7 ~= evt.param2 then return false end

    return true
end

-- If player press start
function action_EVENT_SELECT_OPTION_1003(context, evt)
    -- Change start with configid 1001 to state GadgetState.GearStop aka hide it
    if 0 ~=
        ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStop) then
        ScriptLib.PrintContextLog(context,"@@ LUA_WARNING : set_gadget_state_by_configId")
        return -1
    end

    -- Regenerate specified group and specify suite
    if 0 ~= ScriptLib.RefreshGroup(context, {group_id = 240653002, suite = 2}) then
        ScriptLib.PrintContextLog(context,"@@ LUA_WARNING : refresh_group_to_suite")
        return -1
    end

    -- Add new content for suite2 (why both?) or (this is start eraser effect?)
    ScriptLib.AddExtraGroupSuite(context, 240653001, 2)

    -- Delete specified group 240653001 (start) and specify config 1001 and specify option 7 on object;
    if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240653001, 1001, 7) then
        ScriptLib.PrintContextLog(context,"@@ LUA_WARNING : del_work_options_by_group_configId")
        return -1
    end

    -- Set variable named "challenge" in this group to 1
    if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 1) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
        return -1
    end

    return 0
end

-- If challenge is successful (this should be automatic)
function action_EVENT_CHALLENGE_SUCCESS_1004(context, evt)
    -- Regenerate specified group and specify suite (back to start suite)
    if 0 ~= ScriptLib.RefreshGroup(context, {group_id = 240653002, suite = 1}) then
        ScriptLib.PrintContextLog(context,"@@ LUA_WARNING : refresh_group_to_suite")
        return -1
    end

    return 0
end

-- Call this if challenge fails (maybe with buttons?) (Unimplemented GC)
function action_EVENT_CHALLENGE_FAIL_1005(context, evt)
    -- Regenerate specified group and specify suite (back to start suite)
    if 0 ~= ScriptLib.RefreshGroup(context, {group_id = 240653002, suite = 1}) then
        ScriptLib.PrintContextLog(context,"@@ LUA_WARNING : refresh_group_to_suite")
        return -1
    end

    -- Change object with configid 1001 to state GadgetState.Default
    if 0 ~=
        ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.Default) then
        ScriptLib.PrintContextLog(context,"@@ LUA_WARNING : set_gadget_state_by_configId")
        return -1
    end

    -- Set start
    if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240653001, 1001, {7}) then
        ScriptLib.PrintContextLog(context,"@@ LUA_WARNING : set_wok_options_by_configid")
        return -1
    end

    -- delete all content suite2
    ScriptLib.RemoveExtraGroupSuite(context, 240653001, 2)

    -- Set variable "challenge" is assigned value 0
    ScriptLib.SetGroupVariableValue(context, "challenge", 0)

    return 0
end

-- check start situation
function condition_EVENT_ANY_MONSTER_LIVE_1023(context, evt)

    -- If 1008 monster has appeared starting challenge, other monsters will be ignored for 1011 and 1012 a warning will appear but ignore it. (If it still fails, try order (config_id starting from small to large) spwan monster)
    if 1008 ~= evt.param1 then
        ScriptLib.PrintContextLog(context,"@@ LUA_WARNING : 1008 already there so no need check " ..evt.param1)
        return false
    end

    -- if 1008 monster has appeared check if challenge not 1? why idk, this should be called last but somehow in gc it is first to call so challenge becomes 0, so it takes a little hack for a while in ScripLib (foce 0 to 1 if var challenge)
    if ScriptLib.GetGroupVariableValue(context, "challenge") ~= 1 then
        ScriptLib.PrintContextLog(context,"@@ LUA_WARNING : found challenge 0 what should be a challenge 1")
        return false
    end

    ScriptLib.PrintContextLog(context, "@@ LUA_OK : We did it :)")

    return true
end

-- If starting conditions match/true
function action_EVENT_ANY_MONSTER_LIVE_1023(context, evt)
    -- Create a regional challenge with a number of 1 (identification id challenge) and challenge content type 191. For specific parameter filling method, see notes in DungeonChallengeData table. All filled values must be of type int.
    if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 240653001, 3, 0) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
        return -1
    end

    -- Set variable named "challenge" in this group to 2
    if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 2) then
        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
        return -1
    end

    return 0
end

function LF_Log(context, text)
	ScriptLib.PrintContextLog(context, text)
	return 0
end