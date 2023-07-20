local base_info = {
	group_id = 220179002
}

monsters = {
	{ config_id = 1029, monster_id = 29080104, pos = { x = 298.354, y = 10.271, z = 109.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, title_id = 173, special_name_id = 14, isElite = true }
}

npcs = {
}

gadgets = {
	{ config_id = 2001, gadget_id = 70291045, pos = { x = 300.381, y = 37.317, z = 300.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 90, is_enable_interact = true },
	{ config_id = 2002, gadget_id = 70290986, pos = { x = 300, y = 10.251, z = 300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 90, is_enable_interact = true },
	{ config_id = 2006, gadget_id = 70290964, pos = { x = 299.999, y = 10.2, z = 299.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 90, is_enable_interact = true },
	{ config_id = 2007, gadget_id = 70360001, pos = { x = 299.999, y = 10.2, z = 299.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 90, is_enable_interact = true },
	-- git
	{ config_id = 2008, gadget_id = 70210106, pos = { x = 301.228, y = 10.271, z = 95.719 }, rot = { x = 0, y = 21, z = 0 }, level = 1, drop_tag = "「正机之神」", persistent = true, boss_chest = { monster_config_id=1029, resin=60, life_time = 1800, take_num = 1} }
}

regions = {
}

triggers = {
	{ config_id = 1001029, name = "ANY_MONSTER_DIE_1029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1029", action = "action_EVENT_ANY_MONSTER_DIE_1029", trigger_count = 0 },
	{ config_id = 1001029, name = "ANY_MONSTER_LIVE_1029", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1029", action = "action_EVENT_ANY_MONSTER_LIVE_1029", trigger_count = 0 }
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
		monsters = { 1029 },
		gadgets = { 2006, 2002, 2001, 2007 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_1029", "ANY_MONSTER_DIE_1029" },
		rand_weight = 100
	}
}

function condition_EVENT_ANY_MONSTER_DIE_1029(context, evt)
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set die condition monster 2")	
	return true
end

function action_EVENT_ANY_MONSTER_DIE_1029(context, evt)
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set die action monster 2")
	ScriptLib.CreateGadget(context, { config_id = 2008 }) 
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add")	
	return true
end

function condition_EVENT_ANY_MONSTER_LIVE_1029(context, evt)
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set live condition monster 2")	
	return true
end

function action_EVENT_ANY_MONSTER_LIVE_1029(context, evt)
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set live action monster 2")
	--todo	
	return true
end