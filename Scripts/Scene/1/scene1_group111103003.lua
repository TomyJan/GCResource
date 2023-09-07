-- 基础信息
local base_info = {
	group_id = 111103003
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
	{ config_id = 3001, gadget_id = 70900438, pos = { x = 2707.561, y = 225.216, z = -2834.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3002, gadget_id = 70290059, pos = { x = 2728.265, y = 196.291, z = -2827.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3003, gadget_id = 70290059, pos = { x = 2728.265, y = 204.115, z = -2827.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3004, gadget_id = 70290059, pos = { x = 2728.265, y = 209.879, z = -2827.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, gadget_id = 70900039, pos = { x = 2725.452, y = 215.950, z = -2828.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3007, gadget_id = 70290059, pos = { x = 2699.058, y = 239.674, z = -2835.615 }, rot = { x = 0.000, y = 183.052, z = 0.000 }, level = 1 },
	{ config_id = 3008, gadget_id = 70900039, pos = { x = 2699.544, y = 245.857, z = -2834.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3010, gadget_id = 70900438, pos = { x = 2691.286, y = 257.936, z = -2815.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3011, gadget_id = 70290059, pos = { x = 2671.269, y = 310.883, z = -2757.189 }, rot = { x = 0.000, y = 162.859, z = 0.000 }, level = 1 },
	{ config_id = 3012, gadget_id = 70500000, pos = { x = 2671.081, y = 317.084, z = -2756.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2006 },
	{ config_id = 3013, gadget_id = 70900426, pos = { x = 2688.988, y = 285.872, z = -2775.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3014, gadget_id = 70290059, pos = { x = 2701.965, y = 293.554, z = -2800.929 }, rot = { x = 0.000, y = 183.052, z = 0.000 }, level = 1 },
	{ config_id = 3015, gadget_id = 70290059, pos = { x = 2701.651, y = 293.554, z = -2806.823 }, rot = { x = 0.000, y = 183.052, z = 0.000 }, level = 1 },
	{ config_id = 3016, gadget_id = 70290059, pos = { x = 2701.366, y = 293.554, z = -2812.165 }, rot = { x = 0.000, y = 183.052, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003006, name = "GADGET_STATE_CHANGE_3006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3006", action = "action_EVENT_GADGET_STATE_CHANGE_3006", trigger_count = 0 },
	{ config_id = 1003009, name = "GADGET_STATE_CHANGE_3009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3009", action = "action_EVENT_GADGET_STATE_CHANGE_3009", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 3001, 3002, 3003, 3004, 3005, 3007, 3008, 3010, 3011, 3012, 3013, 3014, 3015, 3016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_3006", "GADGET_STATE_CHANGE_3009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3006(context, evt)
	if 3005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3006(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3009(context, evt)
	if 3008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3009(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end