-- 基础信息
local base_info = {
	group_id = 133401028
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133401028,
	collectable_sum = 8
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 28001, gadget_id = 70211121, pos = { x = 3015.644, y = 352.980, z = 4370.294 }, rot = { x = 0.000, y = 17.428, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 } },
	{ config_id = 28002, gadget_id = 70350093, pos = { x = 3024.334, y = 348.667, z = 4442.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true },
	{ config_id = 28003, gadget_id = 70360001, pos = { x = 3024.334, y = 349.632, z = 4442.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true },
	{ config_id = 28004, gadget_id = 70290150, pos = { x = 3015.758, y = 350.274, z = 4439.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	{ config_id = 28005, gadget_id = 70290150, pos = { x = 3015.122, y = 350.406, z = 4433.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	{ config_id = 28006, gadget_id = 70290150, pos = { x = 3015.184, y = 350.804, z = 4419.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	{ config_id = 28007, gadget_id = 70290150, pos = { x = 3014.670, y = 350.103, z = 4407.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	{ config_id = 28008, gadget_id = 70290150, pos = { x = 3007.096, y = 349.437, z = 4400.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	{ config_id = 28009, gadget_id = 70290150, pos = { x = 3002.720, y = 349.347, z = 4393.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	{ config_id = 28010, gadget_id = 70290150, pos = { x = 3007.061, y = 349.875, z = 4384.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 },
	{ config_id = 28011, gadget_id = 70290150, pos = { x = 3011.461, y = 352.976, z = 4379.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1028012, name = "CHALLENGE_SUCCESS_28012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_28012", trigger_count = 0 },
	{ config_id = 1028013, name = "CHALLENGE_FAIL_28013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_28013", trigger_count = 0 },
	{ config_id = 1028014, name = "GADGET_STATE_CHANGE_28014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_28014", action = "action_EVENT_GADGET_STATE_CHANGE_28014", trigger_count = 0 },
	{ config_id = 1028015, name = "ANY_GADGET_DIE_28015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1028016, name = "GADGET_CREATE_28016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_28016", action = "action_EVENT_GADGET_CREATE_28016", trigger_count = 0 },
	{ config_id = 1028017, name = "SELECT_OPTION_28017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_28017", action = "action_EVENT_SELECT_OPTION_28017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1028018, name = "GROUP_LOAD_28018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_28018", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { 28002, 28003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_28012", "CHALLENGE_FAIL_28013", "GADGET_STATE_CHANGE_28014", "ANY_GADGET_DIE_28015", "GADGET_CREATE_28016", "SELECT_OPTION_28017", "GROUP_LOAD_28018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 28004, 28005, 28006, 28007, 28008, 28009, 28010, 28011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 28002 },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_28012(context, evt)
	-- 将configid为 28002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133401028, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133401028, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为28001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 28001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_28013(context, evt)
	-- 将configid为 28002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为28003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 28003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133401028, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_28014(context, evt)
	if 28002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_28014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 218, defs.collectable_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_28016(context, evt)
	if 28003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_28016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133401028, 28003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_28017(context, evt)
	-- 判断是gadgetid 28003 option_id 177
	if 28003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_28017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 28003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 28002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=3015.758, y=350.2736, z=4439.096}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=3015.758, y=350.2736, z=4439.096}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_28018(context, evt)
	-- 将configid为 28002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为28003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 28003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133401028, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end