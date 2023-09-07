-- 基础信息
local base_info = {
	group_id = 133401035
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
	{ config_id = 35001, gadget_id = 70500000, pos = { x = 3611.869, y = 124.219, z = 4574.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2012 },
	{ config_id = 35002, gadget_id = 70500000, pos = { x = 3603.802, y = 104.246, z = 4574.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2012 },
	{ config_id = 35003, gadget_id = 70500000, pos = { x = 3605.095, y = 105.876, z = 4521.977 }, rot = { x = 296.681, y = 299.904, z = 318.981 }, level = 1, point_type = 2012 },
	{ config_id = 35005, gadget_id = 70690027, pos = { x = 3604.215, y = 102.961, z = 4586.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1035004, name = "GATHER_35004", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_35004", action = "action_EVENT_GATHER_35004" }
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
		gadgets = { 35001, 35002, 35003 },
		regions = { },
		triggers = { "GATHER_35004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_35004(context, evt)
	if 35002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_35004(context, evt)
	-- 创建id为35005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 35005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end