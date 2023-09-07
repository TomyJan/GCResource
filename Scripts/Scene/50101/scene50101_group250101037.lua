-- 基础信息
local base_info = {
	group_id = 250101037
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 250101037,
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
	{ config_id = 37001, gadget_id = 70211101, pos = { x = 2508.937, y = 231.663, z = 4960.348 }, rot = { x = 358.142, y = 328.837, z = 5.542 }, level = 1, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 37002, gadget_id = 70350093, pos = { x = 2372.889, y = 259.015, z = 4959.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true },
	{ config_id = 37003, gadget_id = 70360001, pos = { x = 2372.889, y = 259.980, z = 4959.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true },
	{ config_id = 37004, gadget_id = 70290150, pos = { x = 2378.851, y = 263.657, z = 4964.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 37005, gadget_id = 70290150, pos = { x = 2394.439, y = 265.018, z = 4969.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 37006, gadget_id = 70290150, pos = { x = 2410.058, y = 260.580, z = 4973.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 37007, gadget_id = 70290150, pos = { x = 2426.124, y = 257.433, z = 4976.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 37008, gadget_id = 70290150, pos = { x = 2452.254, y = 244.061, z = 4978.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 37009, gadget_id = 70290150, pos = { x = 2469.569, y = 239.930, z = 4978.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 37010, gadget_id = 70290150, pos = { x = 2490.316, y = 236.408, z = 4976.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 37011, gadget_id = 70290150, pos = { x = 2505.331, y = 234.935, z = 4967.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1037012, name = "CHALLENGE_SUCCESS_37012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_37012", trigger_count = 0 },
	{ config_id = 1037013, name = "CHALLENGE_FAIL_37013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_37013", trigger_count = 0 },
	{ config_id = 1037014, name = "GADGET_STATE_CHANGE_37014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37014", action = "action_EVENT_GADGET_STATE_CHANGE_37014", trigger_count = 0 },
	{ config_id = 1037015, name = "ANY_GADGET_DIE_37015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1037016, name = "GADGET_CREATE_37016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_37016", action = "action_EVENT_GADGET_CREATE_37016", trigger_count = 0 },
	{ config_id = 1037017, name = "SELECT_OPTION_37017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_37017", action = "action_EVENT_SELECT_OPTION_37017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1037018, name = "GROUP_LOAD_37018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_37018", trigger_count = 0 },
	{ config_id = 1037019, name = "GADGET_STATE_CHANGE_37019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37019", action = "action_EVENT_GADGET_STATE_CHANGE_37019", trigger_count = 0 }
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
		gadgets = { 37002, 37003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_37012", "CHALLENGE_FAIL_37013", "GADGET_STATE_CHANGE_37014", "ANY_GADGET_DIE_37015", "GADGET_CREATE_37016", "SELECT_OPTION_37017", "GROUP_LOAD_37018", "GADGET_STATE_CHANGE_37019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 37004, 37005, 37006, 37007, 37008, 37009, 37010, 37011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 37002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_37019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_37012(context, evt)
	-- 将configid为 37002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 250101037, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 250101037, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为37001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 37001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_37013(context, evt)
	-- 将configid为 37002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为37003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 37003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250101037, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_37014(context, evt)
	if 37002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_37014(context, evt)
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
function condition_EVENT_GADGET_CREATE_37016(context, evt)
	if 37003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_37016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250101037, 37003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_37017(context, evt)
	-- 判断是gadgetid 37003 option_id 177
	if 37003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_37017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 37003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 37002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（2405，255，4972），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2405, y=255, z=4972}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_37018(context, evt)
	-- 将configid为 37002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为37003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 37003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250101037, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_37019(context, evt)
	if 37001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_37019(context, evt)
	ScriptLib.AddQuestProgress(context, "ChestOpen_7904212")
	
	return 0
end