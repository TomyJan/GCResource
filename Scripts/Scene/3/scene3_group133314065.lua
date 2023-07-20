-- 基础信息
local base_info = {
	group_id = 133314065
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {431}

--常用ID：
--{431,432} 开/关门
--{433} 启动电梯
--{438,439} 开/关风扇（权限等级3）
--{440} 权限操作台解除物件锁定

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
	{ config_id = 65001, gadget_id = 70330416, pos = { x = -1027.162, y = -148.876, z = 5011.813 }, rot = { x = 0.000, y = 117.469, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 65002, gadget_id = 70330283, pos = { x = -1025.188, y = -148.542, z = 5004.253 }, rot = { x = 0.000, y = 114.563, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 1}, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1065003, name = "SELECT_OPTION_65003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_65003", action = "action_EVENT_SELECT_OPTION_65003", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1065004, name = "GADGET_STATE_CHANGE_65004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_65004", action = "action_EVENT_GADGET_STATE_CHANGE_65004", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1065005, name = "GROUP_LOAD_65005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_65005", action = "action_EVENT_GROUP_LOAD_65005", trigger_count = 0 }
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
		gadgets = { 65001, 65002 },
		regions = { },
		triggers = { "SELECT_OPTION_65003", "GADGET_STATE_CHANGE_65004", "GROUP_LOAD_65005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_65003(context, evt)
	-- 判断是gadgetid 65002 option_id 431
	if 65002 ~= evt.param1 then
		return false	
	end
	
	if 431 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_65003(context, evt)
	-- 将configid为 65002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_65004(context, evt)
	if 65002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_65004(context, evt)
	-- 将configid为 65001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_65005(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133314065, 65002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_65005(context, evt)
	-- 将configid为 65001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/PermissonOperator"