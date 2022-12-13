-- 基础信息
local base_info = {
	group_id = 111101022
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22002, monster_id = 21010201, pos = { x = 2237.696, y = 244.488, z = -1559.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 22003, monster_id = 21010201, pos = { x = 2237.666, y = 245.192, z = -1551.705 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 22004, monster_id = 21010201, pos = { x = 2241.990, y = 244.925, z = -1555.807 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 22005, monster_id = 21010201, pos = { x = 2233.186, y = 245.031, z = -1555.837 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 22006, monster_id = 21010301, pos = { x = 2242.399, y = 244.862, z = -1555.750 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 22007, monster_id = 21010301, pos = { x = 2232.589, y = 244.958, z = -1555.777 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 22008, monster_id = 21010401, pos = { x = 2242.923, y = 244.200, z = -1560.528 }, rot = { x = 0.000, y = 315.727, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 22009, monster_id = 21010401, pos = { x = 2233.118, y = 244.537, z = -1551.083 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 22010, monster_id = 21020101, pos = { x = 2241.512, y = 244.841, z = -1552.117 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 22011, monster_id = 21020101, pos = { x = 2233.395, y = 244.811, z = -1559.745 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 22001, gadget_id = 70350082, pos = { x = 2237.725, y = 245.187, z = -1555.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 22012, gadget_id = 70211011, pos = { x = 2236.001, y = 245.099, z = -1554.681 }, rot = { x = 3.284, y = 304.751, z = 356.840 }, level = 11, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true },
	{ config_id = 22013, gadget_id = 70360001, pos = { x = 2237.097, y = 245.234, z = -1556.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 操作台Trigger
	{ config_id = 1022014, name = "GADGET_CREATE_22014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_22014", action = "action_EVENT_GADGET_CREATE_22014", trigger_count = 0 },
	-- 销毁操作台
	{ config_id = 1022015, name = "SELECT_OPTION_22015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_22015", action = "action_EVENT_SELECT_OPTION_22015", trigger_count = 0 },
	-- 第一波怪物是否死完
	{ config_id = 1022016, name = "ANY_MONSTER_DIE_22016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_22016", action = "action_EVENT_ANY_MONSTER_DIE_22016" },
	-- 第二波怪物是否死完
	{ config_id = 1022017, name = "ANY_MONSTER_DIE_22017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_22017", action = "action_EVENT_ANY_MONSTER_DIE_22017" },
	-- 挑战成功
	{ config_id = 1022018, name = "CHALLENGE_SUCCESS_22018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_22018", trigger_count = 0 },
	-- 挑战失败
	{ config_id = 1022019, name = "CHALLENGE_FAIL_22019", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_22019", trigger_count = 0 },
	-- 解锁宝箱，则D区域方碑解锁一个
	{ config_id = 1022020, name = "GADGET_STATE_CHANGE_22020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_22020", action = "action_EVENT_GADGET_STATE_CHANGE_22020" }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish1", value = 0, no_refresh = false }
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
		gadgets = { 22001, 22013 },
		regions = { },
		triggers = { "GADGET_CREATE_22014", "SELECT_OPTION_22015", "CHALLENGE_SUCCESS_22018", "CHALLENGE_FAIL_22019", "GADGET_STATE_CHANGE_22020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 22002, 22003, 22004, 22005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_22016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 22006, 22007, 22008, 22009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_22017" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 22010, 22011 },
		gadgets = { },
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
function condition_EVENT_GADGET_CREATE_22014(context, evt)
	if 22013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_22014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101022, 22013, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_22015(context, evt)
	-- 判断是gadgetid 22013 option_id 177
	if 22013 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_22015(context, evt)
	-- 创建编号为180（该挑战的识别id),挑战内容为180的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 120, 111101022, 10, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101022, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 22013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 22013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_22016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_22016(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101022, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101022, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_22017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_22017(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101022, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101022, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_22018(context, evt)
	-- 将configid为 22001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为22012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 22012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_22019(context, evt)
	-- 将configid为 22001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为22013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 22013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
		ScriptLib.GoBackGroupSuite(context, 111101022)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_22020(context, evt)
	-- 检测config_id为22012的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 22012 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_22020(context, evt)
	-- 改变指定group组111101029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101029, 29001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "open1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "open1", 1, 111101022) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "finish1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end