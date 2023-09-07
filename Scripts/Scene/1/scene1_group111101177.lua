-- 基础信息
local base_info = {
	group_id = 111101177
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 177001, monster_id = 28030401, pos = { x = 2964.191, y = 242.018, z = -1684.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 177002, monster_id = 28030401, pos = { x = 2962.764, y = 240.170, z = -1683.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 177003, monster_id = 28030401, pos = { x = 2964.769, y = 240.165, z = -1685.526 }, rot = { x = 0.000, y = 128.539, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 177029, monster_id = 28030101, pos = { x = 2996.907, y = 238.687, z = -1721.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 177030, monster_id = 28030101, pos = { x = 2995.016, y = 238.699, z = -1719.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 177031, monster_id = 28020201, pos = { x = 2856.329, y = 254.707, z = -1731.945 }, rot = { x = 0.000, y = 119.408, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true },
	{ config_id = 177032, monster_id = 28020201, pos = { x = 2859.707, y = 254.710, z = -1732.135 }, rot = { x = 0.000, y = 250.549, z = 0.000 }, level = 1, drop_tag = "走兽" },
	{ config_id = 177041, monster_id = 28030101, pos = { x = 2965.610, y = 240.177, z = -1693.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 177043, monster_id = 28030101, pos = { x = 2931.668, y = 229.321, z = -1679.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 177046, monster_id = 28030401, pos = { x = 2906.075, y = 234.326, z = -1698.205 }, rot = { x = 0.000, y = 128.539, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 177047, monster_id = 28030401, pos = { x = 2904.070, y = 234.331, z = -1696.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 177004, gadget_id = 70290521, pos = { x = 2887.360, y = 239.089, z = -1715.669 }, rot = { x = 0.000, y = 235.742, z = 0.000 }, level = 1 },
	{ config_id = 177005, gadget_id = 70290522, pos = { x = 2968.689, y = 241.059, z = -1708.118 }, rot = { x = 4.960, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 177006, gadget_id = 70290523, pos = { x = 2907.795, y = 228.135, z = -1711.080 }, rot = { x = 0.000, y = 0.668, z = 0.000 }, level = 1 },
	{ config_id = 177007, gadget_id = 70290524, pos = { x = 2894.619, y = 233.861, z = -1707.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 177008, gadget_id = 70290525, pos = { x = 2942.567, y = 241.227, z = -1695.741 }, rot = { x = 0.000, y = 18.670, z = 0.000 }, level = 1, route_id = 110100135 },
	{ config_id = 177009, gadget_id = 70217017, pos = { x = 2968.787, y = 241.052, z = -1708.098 }, rot = { x = 19.697, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 177010, gadget_id = 70290522, pos = { x = 2969.576, y = 241.051, z = -1715.651 }, rot = { x = 356.824, y = 283.472, z = 0.000 }, level = 1 },
	{ config_id = 177011, gadget_id = 70217017, pos = { x = 2969.583, y = 240.730, z = -1715.586 }, rot = { x = 0.000, y = 283.472, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 177012, gadget_id = 70290522, pos = { x = 2894.839, y = 233.861, z = -1707.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 177013, gadget_id = 70290525, pos = { x = 2935.084, y = 241.227, z = -1698.880 }, rot = { x = 0.000, y = 18.670, z = 0.000 }, level = 1, route_id = 110100136 },
	{ config_id = 177014, gadget_id = 70290525, pos = { x = 2926.955, y = 241.227, z = -1701.445 }, rot = { x = 0.000, y = 18.670, z = 0.000 }, level = 1, route_id = 110100137 },
	{ config_id = 177015, gadget_id = 70217017, pos = { x = 2922.379, y = 235.171, z = -1704.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 177016, gadget_id = 70290523, pos = { x = 2909.917, y = 226.948, z = -1716.185 }, rot = { x = 0.000, y = 0.668, z = 0.000 }, level = 1 },
	{ config_id = 177017, gadget_id = 70290523, pos = { x = 2904.826, y = 228.671, z = -1714.252 }, rot = { x = 0.000, y = 0.668, z = 0.000 }, level = 1 },
	{ config_id = 177026, gadget_id = 70900426, pos = { x = 2977.539, y = 239.495, z = -1704.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 177027, gadget_id = 70900426, pos = { x = 2927.539, y = 239.495, z = -1704.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 177028, gadget_id = 70900426, pos = { x = 2877.539, y = 239.495, z = -1704.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 177033, gadget_id = 70900426, pos = { x = 2977.539, y = 239.495, z = -1754.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 177034, gadget_id = 70900426, pos = { x = 2927.539, y = 239.495, z = -1754.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 177035, gadget_id = 70900426, pos = { x = 2877.539, y = 239.495, z = -1754.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 177036, gadget_id = 70290282, pos = { x = 2960.010, y = 244.164, z = -1685.349 }, rot = { x = 0.000, y = 268.807, z = 0.000 }, level = 1 },
	{ config_id = 177037, gadget_id = 70290282, pos = { x = 2964.389, y = 244.164, z = -1681.218 }, rot = { x = 0.000, y = 180.097, z = 0.000 }, level = 1 },
	{ config_id = 177038, gadget_id = 70290282, pos = { x = 2964.660, y = 249.711, z = -1685.132 }, rot = { x = 270.775, y = 180.095, z = 358.549 }, level = 1 },
	{ config_id = 177039, gadget_id = 70330325, pos = { x = 2964.513, y = 244.279, z = -1689.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 177040, gadget_id = 70290282, pos = { x = 2969.067, y = 244.164, z = -1685.160 }, rot = { x = 0.000, y = 268.807, z = 0.000 }, level = 1 },
	{ config_id = 177042, gadget_id = 70330327, pos = { x = 2916.047, y = 232.618, z = -1685.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 177044, gadget_id = 70211002, pos = { x = 2916.163, y = 231.900, z = -1685.338 }, rot = { x = 0.000, y = 92.167, z = 0.000 }, level = 26, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1177018, name = "ANY_GADGET_DIE_177018", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_177018", action = "action_EVENT_ANY_GADGET_DIE_177018", trigger_count = 0 },
	{ config_id = 1177019, name = "ANY_GADGET_DIE_177019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_177019", action = "action_EVENT_ANY_GADGET_DIE_177019", trigger_count = 0 },
	{ config_id = 1177020, name = "ANY_GADGET_DIE_177020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_177020", action = "action_EVENT_ANY_GADGET_DIE_177020", trigger_count = 0 },
	{ config_id = 1177021, name = "GADGET_STATE_CHANGE_177021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_177021", action = "action_EVENT_GADGET_STATE_CHANGE_177021", trigger_count = 0 },
	{ config_id = 1177022, name = "TIMER_EVENT_177022", event = EventType.EVENT_TIMER_EVENT, source = "door", condition = "", action = "action_EVENT_TIMER_EVENT_177022", trigger_count = 0 },
	{ config_id = 1177023, name = "ANY_GADGET_DIE_177023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_177023", action = "action_EVENT_ANY_GADGET_DIE_177023", trigger_count = 0 },
	{ config_id = 1177024, name = "TIMER_EVENT_177024", event = EventType.EVENT_TIMER_EVENT, source = "recreate", condition = "", action = "action_EVENT_TIMER_EVENT_177024", trigger_count = 0 },
	{ config_id = 1177025, name = "VARIABLE_CHANGE_177025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_177025", action = "action_EVENT_VARIABLE_CHANGE_177025", trigger_count = 0 },
	{ config_id = 1177045, name = "ANY_GADGET_DIE_177045", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_177045", action = "action_EVENT_ANY_GADGET_DIE_177045", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
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
		monsters = { 177001, 177002, 177003, 177029, 177030, 177031, 177032, 177041, 177043, 177046, 177047 },
		gadgets = { 177004, 177005, 177006, 177007, 177008, 177010, 177012, 177013, 177014, 177016, 177017, 177026, 177027, 177028, 177033, 177034, 177035, 177036, 177037, 177038, 177039, 177040, 177042, 177044 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_177018", "ANY_GADGET_DIE_177019", "ANY_GADGET_DIE_177020", "GADGET_STATE_CHANGE_177021", "TIMER_EVENT_177022", "ANY_GADGET_DIE_177023", "TIMER_EVENT_177024", "VARIABLE_CHANGE_177025", "ANY_GADGET_DIE_177045" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_177018(context, evt)
	if 177005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_177018(context, evt)
	-- 创建id为177009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 177009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_177019(context, evt)
	if 177010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_177019(context, evt)
	-- 创建id为177011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 177011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_177020(context, evt)
	if 177012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_177020(context, evt)
	-- 将configid为 177007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_177021(context, evt)
	if 177007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_177021(context, evt)
	-- 将configid为 177004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟3秒后,向groupId为：111101177的对象,请求一次调用,并将string参数："door" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101177, "door", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_177022(context, evt)
	-- 将configid为 177004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_177023(context, evt)
	if 177008 ~= evt.param1 or 177013 ~= evt.param1 or 177014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_177023(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：111101177的对象,请求一次调用,并将string参数："recreate" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101177, "recreate", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_177024(context, evt)
	-- 创建id为3008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	end
	
	-- 创建id为3018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	end
	
	-- 创建id为3019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	end
	
	-- 变量"count"赋值为0
	ScriptLib.SetGroupVariableValue(context, "count", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_177025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_177025(context, evt)
	-- 创建id为177015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 177015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101177, "recreate") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_177045(context, evt)
	if 177042 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_177045(context, evt)
	-- 将configid为 177044 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177044, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end