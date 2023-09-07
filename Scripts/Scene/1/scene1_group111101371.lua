-- 基础信息
local base_info = {
	group_id = 111101371
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
	{ config_id = 371001, gadget_id = 70330474, pos = { x = 2759.228, y = 208.453, z = -1806.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 371002, shape = RegionShape.SPHERE, radius = 30, pos = { x = 2758.033, y = 194.307, z = -1812.340 } },
	{ config_id = 371003, shape = RegionShape.SPHERE, radius = 40, pos = { x = 2759.430, y = 194.600, z = -1812.040 } }
}

-- 触发器
triggers = {
	{ config_id = 1371002, name = "ENTER_REGION_371002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_371002", action = "action_EVENT_ENTER_REGION_371002" },
	{ config_id = 1371003, name = "LEAVE_REGION_371003", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_371003", action = "action_EVENT_LEAVE_REGION_371003" }
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
		gadgets = { 371001 },
		regions = { 371002, 371003 },
		triggers = { "ENTER_REGION_371002", "LEAVE_REGION_371003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_371002(context, evt)
	if evt.param1 ~= 371002 then return false end
	
	-- 判断是区域371002
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 371002 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_371002(context, evt)
	-- 将configid为 371001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 371001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_371003(context, evt)
	-- 判断是区域371003
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 371003 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_371003(context, evt)
	-- 将configid为 371001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 371001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V4_0/Undersea_Shooter"