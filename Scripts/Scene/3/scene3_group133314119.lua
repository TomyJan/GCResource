-- 基础信息
local base_info = {
	group_id = 133314119
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 119001, monster_id = 28020604, pos = { x = -829.117, y = -58.477, z = 4891.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 32 },
	{ config_id = 119002, monster_id = 26090901, pos = { x = -829.185, y = -59.053, z = 4891.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 119003, monster_id = 28050106, pos = { x = -829.356, y = -58.205, z = 4891.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 32 },
	{ config_id = 119004, monster_id = 28050106, pos = { x = -828.877, y = -58.173, z = 4891.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 32 },
	{ config_id = 119005, monster_id = 28060401, pos = { x = -829.129, y = -59.064, z = 4891.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 119006, gadget_id = 70330266, pos = { x = -829.194, y = -58.763, z = 4891.694 }, rot = { x = 0.000, y = 330.716, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 119007, gadget_id = 70210101, pos = { x = -829.176, y = -58.983, z = 4891.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", isOneoff = true, persistent = true, area_id = 32 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 119013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -828.902, y = -58.343, z = 4891.715 }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1119008, name = "ANY_GADGET_DIE_119008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_119008", action = "action_EVENT_ANY_GADGET_DIE_119008" },
	-- 刷面具鼬
	{ config_id = 1119009, name = "ANY_GADGET_DIE_119009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_119009", action = "action_EVENT_ANY_GADGET_DIE_119009" },
	-- 刷岩蕈兽
	{ config_id = 1119010, name = "ANY_GADGET_DIE_119010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_119010", action = "action_EVENT_ANY_GADGET_DIE_119010" },
	-- 刷草晶蝶
	{ config_id = 1119011, name = "ANY_GADGET_DIE_119011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_119011", action = "action_EVENT_ANY_GADGET_DIE_119011" },
	-- 刷蝎子
	{ config_id = 1119012, name = "ANY_GADGET_DIE_119012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_119012", action = "action_EVENT_ANY_GADGET_DIE_119012" },
	-- 需要伏击怪食用这个
	{ config_id = 1119013, name = "ENTER_REGION_119013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_119013", action = "action_EVENT_ENTER_REGION_119013" }
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
	rand_suite = true
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
		gadgets = { 119006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 119006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_119008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 119006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_119009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 119006 },
		regions = { 119013 },
		triggers = { "ANY_GADGET_DIE_119010", "ENTER_REGION_119013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 119006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_119011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 119006 },
		regions = { 119013 },
		triggers = { "ANY_GADGET_DIE_119012", "ENTER_REGION_119013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_119008(context, evt)
	if 119006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_119008(context, evt)
	-- 创建id为119007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 119007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_119009(context, evt)
	if 119006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_119009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 119001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_119010(context, evt)
	if 119006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_119010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 119002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_119011(context, evt)
	if 119006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_119011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 119003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 119004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_119012(context, evt)
	if 119006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_119012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 119005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_119013(context, evt)
	if evt.param1 ~= 119013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_119013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 119006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end