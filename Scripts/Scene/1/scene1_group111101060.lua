-- 基础信息
local base_info = {
	group_id = 111101060
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 60004, monster_id = 21010101, pos = { x = 2224.742, y = 244.084, z = -1551.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 60005, monster_id = 21010101, pos = { x = 2225.299, y = 243.990, z = -1552.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 60006, monster_id = 21010101, pos = { x = 2224.131, y = 243.790, z = -1554.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 60011, monster_id = 21010101, pos = { x = 2219.698, y = 244.011, z = -1551.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 60012, monster_id = 21010101, pos = { x = 2219.148, y = 243.854, z = -1552.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 60013, monster_id = 21010101, pos = { x = 2219.813, y = 243.648, z = -1554.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 60014, monster_id = 21010101, pos = { x = 2223.168, y = 243.670, z = -1555.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 60015, monster_id = 21010101, pos = { x = 2221.285, y = 243.578, z = -1555.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 60016, monster_id = 21010101, pos = { x = 2223.386, y = 243.982, z = -1552.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 60017, monster_id = 21010101, pos = { x = 2220.585, y = 243.949, z = -1551.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 60001, gadget_id = 70350082, pos = { x = 2221.521, y = 243.860, z = -1553.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 60002, gadget_id = 70360001, pos = { x = 2221.105, y = 244.796, z = -1553.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 60003, gadget_id = 70211001, pos = { x = 2221.573, y = 244.118, z = -1550.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1060007, name = "GADGET_CREATE_60007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_60007", action = "action_EVENT_GADGET_CREATE_60007" },
	{ config_id = 1060008, name = "SELECT_OPTION_60008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_60008", action = "action_EVENT_SELECT_OPTION_60008", trigger_count = 0 },
	{ config_id = 1060009, name = "CHALLENGE_SUCCESS_60009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_60009", trigger_count = 0 },
	{ config_id = 1060010, name = "CHALLENGE_FAIL_60010", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_60010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		monsters = { },
		gadgets = { 60001, 60002 },
		regions = { },
		triggers = { "GADGET_CREATE_60007", "SELECT_OPTION_60008", "CHALLENGE_SUCCESS_60009", "CHALLENGE_FAIL_60010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 60004, 60005, 60006, 60011, 60012, 60013, 60014, 60015, 60016, 60017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 60001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_60007(context, evt)
	if 60002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_60007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101060, 60002, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_60008(context, evt)
	-- 判断是gadgetid 60002 option_id 177
	if 60002 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_60008(context, evt)
	-- 创建编号为180（该挑战的识别id),挑战内容为180的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 120, 111101060, 10, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101060, 2)
	
	-- 将configid为 60001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 60002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_60009(context, evt)
	-- 将configid为 60001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为60003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 60003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "finish" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 改变指定group组111101029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101029, 29001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "open1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "open1", 1, 111101029) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 111101060, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_60010(context, evt)
	-- 将configid为 60001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为60002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 60002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 111101060, 2)
	
	return 0
end