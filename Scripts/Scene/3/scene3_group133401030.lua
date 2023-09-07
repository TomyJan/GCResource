-- 基础信息
local base_info = {
	group_id = 133401030
}

-- Trigger变量
local defs = {
	gadget_id = 30004
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
	{ config_id = 30001, gadget_id = 70290524, pos = { x = 3047.617, y = 293.367, z = 4385.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true },
	{ config_id = 30002, gadget_id = 70290524, pos = { x = 3058.616, y = 293.367, z = 4373.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true },
	{ config_id = 30003, gadget_id = 70290524, pos = { x = 3038.288, y = 293.367, z = 4366.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true },
	{ config_id = 30004, gadget_id = 70211111, pos = { x = 3046.935, y = 293.367, z = 4372.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 } }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1030005, name = "GADGET_STATE_CHANGE_30005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_30005", action = "action_EVENT_GADGET_STATE_CHANGE_30005", trigger_count = 0 },
	{ config_id = 1030006, name = "GADGET_STATE_CHANGE_30006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_30006" },
	{ config_id = 1030007, name = "GADGET_CREATE_30007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_30007", action = "action_EVENT_GADGET_CREATE_30007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
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
		gadgets = { 30001, 30002, 30003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_30005", "GADGET_STATE_CHANGE_30006", "GADGET_CREATE_30007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_30005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_30005(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_id })
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_30006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_30007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_30007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end