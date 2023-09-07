-- 基础信息
local base_info = {
	group_id = 250101035
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
	{ config_id = 35001, gadget_id = 70290525, pos = { x = 2655.907, y = 223.332, z = 5027.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, route_id = 20, persistent = true },
	{ config_id = 35002, gadget_id = 70290525, pos = { x = 2644.116, y = 231.207, z = 5002.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, route_id = 21, persistent = true },
	{ config_id = 35003, gadget_id = 70290525, pos = { x = 2680.424, y = 237.026, z = 4989.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, route_id = 22, persistent = true },
	{ config_id = 35004, gadget_id = 70290281, pos = { x = 2655.528, y = 239.259, z = 5014.947 }, rot = { x = 14.464, y = 288.931, z = 148.686 }, level = 1 },
	{ config_id = 35005, gadget_id = 70290281, pos = { x = 2667.536, y = 243.110, z = 5011.356 }, rot = { x = 14.464, y = 288.931, z = 148.686 }, level = 1 },
	{ config_id = 35006, gadget_id = 70290281, pos = { x = 2659.218, y = 243.827, z = 5008.243 }, rot = { x = 30.186, y = 27.321, z = 199.533 }, level = 1 },
	{ config_id = 35007, gadget_id = 70290281, pos = { x = 2663.687, y = 238.752, z = 5017.794 }, rot = { x = 30.186, y = 27.321, z = 199.533 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1035008, name = "ANY_GADGET_DIE_35008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_35008", trigger_count = 0 },
	{ config_id = 1035009, name = "VARIABLE_CHANGE_35009", event = EventType.EVENT_VARIABLE_CHANGE, source = "activecount", condition = "condition_EVENT_VARIABLE_CHANGE_35009", action = "action_EVENT_VARIABLE_CHANGE_35009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "activecount", value = 0, no_refresh = true }
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
		gadgets = { 35001, 35002, 35003, 35004, 35005, 35006, 35007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_35008", "VARIABLE_CHANGE_35009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_35008(context, evt)
	-- 针对当前group内变量名为 "activecount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "activecount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_35009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activecount"为3
	if ScriptLib.GetGroupVariableValue(context, "activecount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_35009(context, evt)
	-- 将configid为 35004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 35005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 35006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 35007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end