local base_info = {
	group_id = 220179001
}

monsters = {
	{ config_id = 1028, monster_id = 29080103, pos = { x = 100, y = 10.271, z = 100 }, rot = { x = 0.000, y = 161.345, z = 0.000 }, level = 32, title_id = 171, special_name_id = 13, isElite = true }
}

npcs = {
}

gadgets = {
	{ config_id = 1001, gadget_id = 70291046, pos = { x = 100, y = 10.271, z = 100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 90, is_enable_interact = true },
	{ config_id = 1025, gadget_id = 70291045, pos = { x = 100.381, y = 37.317, z = 100.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 90, is_enable_interact = true },
	{ config_id = 1026, gadget_id = 70290986, pos = { x = 100, y = 10.251, z = 100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 90, is_enable_interact = true },
	{ config_id = 1027, gadget_id = 70290987, pos = { x = 100, y = 10.251, z = 100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 90, is_enable_interact = true },
	{ config_id = 1029, gadget_id = 70290954, pos = { x = 100, y = 10.2, z = 100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 90, is_enable_interact = true },
	{ config_id = 1039, gadget_id = 70290995, pos = { x = 204.242, y = 10.001, z = 115.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 90, is_enable_interact = true },
}

regions = {
}

triggers = {
	{ config_id = 1001028, name = "ANY_MONSTER_DIE_1028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1028", action = "action_EVENT_ANY_MONSTER_DIE_1028", trigger_count = 0 }
}

variables = {
}

init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

suites = {
	{
		monsters = { 1028 },
		gadgets = { 1001, 1025, 1026, 1027, 1029, 1039 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1028" },
		rand_weight = 100
	}
}

function condition_EVENT_ANY_MONSTER_DIE_1028(context, evt)
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set condition monster 1")	
	return true
end

function action_EVENT_ANY_MONSTER_DIE_1028(context, evt)
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set die action monster 1 and refresh group 2")
	ScriptLib.PlayCutScene(context, 121, 0)
	ScriptLib.RefreshGroup(context, { group_id = 220179002, suite = 1 })
	return true
end