-- 基础信息
local base_info = {
	group_id = 133401003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 28050105, pos = { x = 3392.123, y = 393.592, z = 4164.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物" },
	{ config_id = 3002, monster_id = 28050105, pos = { x = 3393.169, y = 392.220, z = 4172.231 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物" },
	{ config_id = 3003, monster_id = 28050105, pos = { x = 3383.339, y = 391.342, z = 4168.885 }, rot = { x = 0.000, y = 128.539, z = 0.000 }, level = 1, drop_tag = "魔法生物" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3004, gadget_id = 70290521, pos = { x = 3201.268, y = 379.039, z = 4123.770 }, rot = { x = 0.000, y = 84.217, z = 0.000 }, level = 1 },
	{ config_id = 3005, gadget_id = 70290522, pos = { x = 3358.123, y = 376.700, z = 4183.665 }, rot = { x = 345.263, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3006, gadget_id = 70290523, pos = { x = 3271.715, y = 366.650, z = 4138.246 }, rot = { x = 331.711, y = 1.428, z = 356.983 }, level = 1 },
	{ config_id = 3007, gadget_id = 70290524, pos = { x = 3225.472, y = 369.998, z = 4121.653 }, rot = { x = 14.600, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 3008, gadget_id = 70290525, pos = { x = 3340.836, y = 377.584, z = 4164.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 340100003 },
	{ config_id = 3009, gadget_id = 70217017, pos = { x = 3358.221, y = 377.168, z = 4183.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 3010, gadget_id = 70290522, pos = { x = 3359.355, y = 374.476, z = 4175.322 }, rot = { x = 356.824, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3011, gadget_id = 70217017, pos = { x = 3359.420, y = 373.767, z = 4175.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 3014, gadget_id = 70290522, pos = { x = 3225.692, y = 370.749, z = 4121.726 }, rot = { x = 17.469, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3018, gadget_id = 70290525, pos = { x = 3334.752, y = 377.584, z = 4158.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 340100002 },
	{ config_id = 3019, gadget_id = 70290525, pos = { x = 3327.871, y = 377.584, z = 4153.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 340100001 },
	{ config_id = 3023, gadget_id = 70217017, pos = { x = 3307.214, y = 368.820, z = 4132.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 3024, gadget_id = 70290523, pos = { x = 3283.837, y = 365.595, z = 4137.557 }, rot = { x = 331.711, y = 1.428, z = 356.983 }, level = 1 },
	{ config_id = 3025, gadget_id = 70290523, pos = { x = 3263.888, y = 366.856, z = 4137.201 }, rot = { x = 331.711, y = 1.428, z = 356.983 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003012, name = "ANY_GADGET_DIE_3012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_3012", action = "action_EVENT_ANY_GADGET_DIE_3012", trigger_count = 0 },
	{ config_id = 1003013, name = "ANY_GADGET_DIE_3013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_3013", action = "action_EVENT_ANY_GADGET_DIE_3013", trigger_count = 0 },
	{ config_id = 1003015, name = "ANY_GADGET_DIE_3015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_3015", action = "action_EVENT_ANY_GADGET_DIE_3015", trigger_count = 0 },
	{ config_id = 1003016, name = "GADGET_STATE_CHANGE_3016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3016", action = "action_EVENT_GADGET_STATE_CHANGE_3016", trigger_count = 0 },
	{ config_id = 1003017, name = "TIMER_EVENT_3017", event = EventType.EVENT_TIMER_EVENT, source = "door", condition = "", action = "action_EVENT_TIMER_EVENT_3017", trigger_count = 0 },
	{ config_id = 1003020, name = "ANY_GADGET_DIE_3020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_3020", action = "action_EVENT_ANY_GADGET_DIE_3020", trigger_count = 0 },
	{ config_id = 1003021, name = "TIMER_EVENT_3021", event = EventType.EVENT_TIMER_EVENT, source = "recreate", condition = "", action = "action_EVENT_TIMER_EVENT_3021", trigger_count = 0 },
	{ config_id = 1003022, name = "VARIABLE_CHANGE_3022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_3022", action = "action_EVENT_VARIABLE_CHANGE_3022", trigger_count = 0 }
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
		monsters = { 3001, 3002, 3003 },
		gadgets = { 3004, 3005, 3006, 3007, 3008, 3010, 3014, 3018, 3019, 3024, 3025 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_3012", "ANY_GADGET_DIE_3013", "ANY_GADGET_DIE_3015", "GADGET_STATE_CHANGE_3016", "TIMER_EVENT_3017", "ANY_GADGET_DIE_3020", "TIMER_EVENT_3021", "VARIABLE_CHANGE_3022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_3012(context, evt)
	if 3005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_3012(context, evt)
	-- 创建id为3009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_3013(context, evt)
	if 3010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_3013(context, evt)
	-- 创建id为3011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_3015(context, evt)
	if 3014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_3015(context, evt)
	-- 将configid为 3007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3016(context, evt)
	if 3007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3016(context, evt)
	-- 将configid为 3004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟3秒后,向groupId为：133401003的对象,请求一次调用,并将string参数："door" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133401003, "door", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3017(context, evt)
	-- 将configid为 3004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_3020(context, evt)
	if 3008 ~= evt.param1 or 3018 ~= evt.param1 or 3019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_3020(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：133401003的对象,请求一次调用,并将string参数："recreate" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133401003, "recreate", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3021(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_3022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3022(context, evt)
	-- 创建id为3023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133401003, "recreate") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end