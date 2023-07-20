-- 基础信息
local base_info = {
	group_id = 133314320
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
}

-- 区域
regions = {
	{ config_id = 320001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -160.426, y = -1.935, z = 4869.798 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1320001, name = "ENTER_REGION_320001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_320001", action = "action_EVENT_ENTER_REGION_320001", trigger_count = 0 }
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
		regions = { 320001 },
		triggers = { "ENTER_REGION_320001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_320001(context, evt)
	if evt.param1 ~= 320001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_320001(context, evt)
	ScriptLib.AddQuestProgress(context, "Q7328140")
	
	return 0
end