-- 基础信息
local base_info = {
	group_id = 133401046
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
	{ config_id = 46001, gadget_id = 70360106, pos = { x = 3536.638, y = -42.310, z = 4653.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 46002, gadget_id = 70290141, pos = { x = 3595.615, y = -35.300, z = 4711.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 46003, gadget_id = 70290141, pos = { x = 3537.964, y = -26.401, z = 4653.609 }, rot = { x = 0.000, y = 86.664, z = 0.000 }, level = 1 },
	{ config_id = 46004, gadget_id = 70290141, pos = { x = 3595.631, y = -25.300, z = 4710.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 46005, gadget_id = 70290141, pos = { x = 3535.040, y = -13.802, z = 4729.556 }, rot = { x = 0.000, y = 177.434, z = 0.000 }, level = 1 },
	{ config_id = 46006, gadget_id = 70210102, pos = { x = 3536.379, y = -37.092, z = 4652.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 46007, gadget_id = 70350081, pos = { x = 3604.165, y = -45.090, z = 4721.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 46009, gadget_id = 70290521, pos = { x = 3599.847, y = -22.285, z = 4653.505 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 46010, gadget_id = 70290521, pos = { x = 3599.847, y = -22.069, z = 4653.505 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 46008, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = 3537.406, y = -10.522, z = 4723.662 } }
}

-- 触发器
triggers = {
	{ config_id = 1046008, name = "ENTER_REGION_46008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_46008", action = "action_EVENT_ENTER_REGION_46008" }
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
		gadgets = { },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_46008(context, evt)
	if evt.param1 ~= 46008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_46008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 46009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 46010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end