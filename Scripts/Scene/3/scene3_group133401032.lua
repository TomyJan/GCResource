-- 基础信息
local base_info = {
	group_id = 133401032
}

-- Trigger变量
local defs = {
	gadget_id = 32004
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
	{ config_id = 32001, gadget_id = 70330328, pos = { x = 3086.482, y = 349.354, z = 4320.721 }, rot = { x = 0.000, y = 224.525, z = 0.000 }, level = 32, persistent = true },
	{ config_id = 32002, gadget_id = 70330328, pos = { x = 3079.600, y = 349.354, z = 4324.858 }, rot = { x = 0.000, y = 224.525, z = 0.000 }, level = 32, persistent = true },
	{ config_id = 32003, gadget_id = 70330328, pos = { x = 3081.614, y = 355.551, z = 4319.855 }, rot = { x = 0.000, y = 224.525, z = 0.000 }, level = 32, persistent = true },
	{ config_id = 32004, gadget_id = 70211111, pos = { x = 3088.394, y = 343.193, z = 4327.994 }, rot = { x = 0.000, y = 233.299, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 } }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1032005, name = "GADGET_STATE_CHANGE_32005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32005", action = "action_EVENT_GADGET_STATE_CHANGE_32005", trigger_count = 0 },
	{ config_id = 1032006, name = "GADGET_STATE_CHANGE_32006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_32006" },
	{ config_id = 1032007, name = "GADGET_CREATE_32007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_32007", action = "action_EVENT_GADGET_CREATE_32007" }
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
		gadgets = { 32001, 32002, 32003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_32005", "GADGET_STATE_CHANGE_32006", "GADGET_CREATE_32007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32005(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_32006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_32007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_32007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end