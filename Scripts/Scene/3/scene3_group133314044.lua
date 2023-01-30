-- 基础信息
local base_info = {
	group_id = 133314044
}

-- Trigger变量
local defs = {
	point_sum = 25,
	route_2 = 331400010,
	gadget_seelie = 44002
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
	{ config_id = 44001, gadget_id = 70330331, pos = { x = -846.369, y = -62.105, z = 5085.577 }, rot = { x = 0.000, y = 271.586, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 44002, gadget_id = 70710010, pos = { x = -906.358, y = -34.351, z = 5009.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331400011, area_id = 32 },
	{ config_id = 44003, gadget_id = 70710007, pos = { x = -849.017, y = -61.996, z = 5085.766 }, rot = { x = 5.848, y = 92.212, z = 358.120 }, level = 32, area_id = 32 },
	{ config_id = 44004, gadget_id = 70211101, pos = { x = -848.902, y = -62.068, z = 5089.103 }, rot = { x = 0.000, y = 216.341, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 44007, shape = RegionShape.SPHERE, radius = 4, pos = { x = -906.288, y = -34.255, z = 5009.214 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1044005, name = "PLATFORM_ARRIVAL_44005", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_44005", action = "action_EVENT_PLATFORM_ARRIVAL_44005", trigger_count = 0 },
	{ config_id = 1044006, name = "AVATAR_NEAR_PLATFORM_44006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_44006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_44006", trigger_count = 0 },
	{ config_id = 1044007, name = "ENTER_REGION_44007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_44007", action = "action_EVENT_ENTER_REGION_44007", trigger_count = 0 },
	{ config_id = 1044008, name = "GADGET_STATE_CHANGE_44008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_44008", action = "action_EVENT_GADGET_STATE_CHANGE_44008" },
	{ config_id = 1044009, name = "GADGET_CREATE_44009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_44009", action = "action_EVENT_GADGET_CREATE_44009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "door_open", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 44001, 44002, 44003 },
		regions = { 44007 },
		triggers = { "PLATFORM_ARRIVAL_44005", "AVATAR_NEAR_PLATFORM_44006", "ENTER_REGION_44007", "GADGET_STATE_CHANGE_44008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 44001, 44004 },
		regions = { },
		triggers = { "GADGET_CREATE_44009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_44005(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if  defs.final_point ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_44005(context, evt)
	-- 将configid为 44001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 44002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 44002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_44006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	if 3 == evt.param3 and ScriptLib.GetGroupVariableValue(context, "door_open") == 0 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_44006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 44002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_44007(context, evt)
	if evt.param1 ~= 44007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_44007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 44002, 331400010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 44003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_44008(context, evt)
	if 44001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_44008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133314044, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_44009(context, evt)
	if 44001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_44009(context, evt)
	-- 将configid为 44001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end