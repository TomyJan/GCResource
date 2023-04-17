local base_info = {
	group_id = 220192001
}

monsters = {
	{ config_id = 1696001, monster_id = 29080101, pos = { x = 100, y = 10.5, z = 99.5 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 100, drop_tag = "大史莱姆", area_id = 19, title_id = 173, special_name_id = 13 }
}

npcs = {}

gadgets = {}

regions = {}

triggers = {
	{ config_id = 1001023, name = "ANY_MONSTER_LIVE_1023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1023", action = "action_EVENT_ANY_MONSTER_LIVE_1023", trigger_count = 0 }
}

variables = {
	{ config_id = 1, name = "challenge", value = 0, no_refresh = false }
}

init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

suites = {
	--Show Monster
	{
		monsters = {1696001},
		gadgets = {},
		regions = {},
		triggers = {"CHALLENGE_SUCCESS_1004", "CHALLENGE_FAIL_1005", "ANY_MONSTER_LIVE_1023"},
		rand_weight = 100
	}
}


-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_1023(context, evt)
	
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : Monster")
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1004(context, evt)

	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : suc")

return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1005(context, evt)

	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : faild")

return 0
end