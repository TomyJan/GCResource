-- 基础信息
local base_info = {
	group_id = 111101329
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 329009, monster_id = 28030401, pos = { x = 2895.449, y = 253.879, z = -1747.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 329010, monster_id = 28030401, pos = { x = 2893.255, y = 254.483, z = -1744.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 329011, monster_id = 28030401, pos = { x = 2893.433, y = 254.244, z = -1746.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 329012, monster_id = 28030101, pos = { x = 2932.499, y = 235.180, z = -1758.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true },
	{ config_id = 329013, monster_id = 28030101, pos = { x = 2927.572, y = 235.248, z = -1763.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true },
	{ config_id = 329016, monster_id = 28020201, pos = { x = 2941.506, y = 235.240, z = -1753.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽" },
	{ config_id = 329017, monster_id = 28020201, pos = { x = 2941.684, y = 236.010, z = -1760.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 329001, gadget_id = 70330328, pos = { x = 2967.715, y = 243.012, z = -1737.704 }, rot = { x = 0.000, y = 246.669, z = 0.000 }, level = 1 },
	{ config_id = 329002, gadget_id = 70330328, pos = { x = 2969.510, y = 236.904, z = -1742.497 }, rot = { x = 0.000, y = 260.034, z = 0.000 }, level = 1 },
	{ config_id = 329003, gadget_id = 70330328, pos = { x = 2965.576, y = 234.437, z = -1735.182 }, rot = { x = 0.000, y = 253.725, z = 0.000 }, level = 1 },
	{ config_id = 329004, gadget_id = 70360025, pos = { x = 2992.933, y = 239.343, z = -1732.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 329005, gadget_id = 70330327, pos = { x = 2941.377, y = 236.154, z = -1753.985 }, rot = { x = 0.000, y = 291.022, z = 0.000 }, level = 1 },
	{ config_id = 329006, gadget_id = 70330327, pos = { x = 2941.719, y = 236.924, z = -1760.335 }, rot = { x = 0.000, y = 291.022, z = 0.000 }, level = 1 },
	{ config_id = 329007, gadget_id = 70290522, pos = { x = 2932.478, y = 236.129, z = -1758.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 329008, gadget_id = 70290522, pos = { x = 2927.603, y = 236.065, z = -1763.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1329014, name = "ANY_GADGET_DIE_329014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_329014", action = "action_EVENT_ANY_GADGET_DIE_329014", trigger_count = 0 },
	{ config_id = 1329015, name = "ANY_GADGET_DIE_329015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_329015", action = "action_EVENT_ANY_GADGET_DIE_329015", trigger_count = 0 },
	{ config_id = 1329018, name = "ANY_GADGET_DIE_329018", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_329018", action = "action_EVENT_ANY_GADGET_DIE_329018", trigger_count = 0 },
	{ config_id = 1329019, name = "ANY_GADGET_DIE_329019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_329019", action = "action_EVENT_ANY_GADGET_DIE_329019", trigger_count = 0 }
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
		monsters = { 329009, 329010, 329011 },
		gadgets = { 329001, 329002, 329003, 329004, 329005, 329006, 329007, 329008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_329014", "ANY_GADGET_DIE_329015", "ANY_GADGET_DIE_329018", "ANY_GADGET_DIE_329019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_329014(context, evt)
	if 329007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_329014(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 329012, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_329015(context, evt)
	if 329008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_329015(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 329013, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_329018(context, evt)
	if 329005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_329018(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 329016, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_329019(context, evt)
	if 329006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_329019(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 329017, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end