-- 基础信息
local base_info = {
	group_id = 220154001
}

-- Trigger变量
local defs = {
	transTarget = 1004,
	phaseOneBoss = 1001,
	phaseTwoBoss = 1002,
	bossBattleTransPoint = 1007,
	phaseOneRegion = 1008,
	gadget_music_change = 1014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 29070103, pos = { x = 0.000, y = 5.800, z = 1.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, title_id = 161, special_name_id = 12, isElite = true },
	{ config_id = 1002, monster_id = 29070104, pos = { x = 0.000, y = -58.140, z = -30.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, title_id = 161, special_name_id = 12, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1005, gadget_id = 70290651, pos = { x = 0.000, y = 2.700, z = -1.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70290834, pos = { x = 1.500, y = 5.530, z = 66.900 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70360001, pos = { x = -0.941, y = -58.149, z = -1.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70210106, pos = { x = 0.000, y = -58.149, z = 0.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "「正机之神」", persistent = true, boss_chest = { monster_config_id=1002, resin=60, life_time = 1800, take_num = 1} },
	{ config_id = 1014, gadget_id = 70290868, pos = { x = 13.671, y = -58.149, z = -25.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70290869, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1008, shape = RegionShape.CYLINDER, radius = 28, pos = { x = 0.000, y = 2.700, z = -1.500 }, height = 100.000 }
}

-- 触发器
triggers = {
	{ config_id = 1001003, name = "ANY_MONSTER_DIE_1003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1003", action = "action_EVENT_ANY_MONSTER_DIE_1003" },
	{ config_id = 1001010, name = "ANY_MONSTER_DIE_1010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1010", action = "action_EVENT_ANY_MONSTER_DIE_1010" },
	{ config_id = 1001011, name = "GADGET_STATE_CHANGE_1011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1011", action = "action_EVENT_GADGET_STATE_CHANGE_1011" }
}

-- 点位
points = {
	-- 二阶段传送位置
	{ config_id = 1004, pos = { x = 0.000, y = -58.149, z = 37.354 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
	-- 开战传送位置
	{ config_id = 1007, pos = { x = 0.000, y = 5.800, z = 23.125 }, rot = { x = 0.000, y = 180.000, z = 0.000 } }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 1013, gadget_id = 70290652, pos = { x = 0.000, y = -58.900, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
	}
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
		monsters = { 1001 },
		gadgets = { 1005, 1006, 1015 },
		regions = { 1008 },
		triggers = { "ANY_MONSTER_DIE_1003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1002 },
		gadgets = { 1009, 1015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1010", "GADGET_STATE_CHANGE_1011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1003(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1003(context, evt)
	    ScriptLib.SetWeatherAreaState(context, 10142, 1)
	
	    -- 重新生成指定group，指定suite
	    if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220154001, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	        return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1010(context, evt)
	--判断死亡怪物的configid是否为 1002
	if evt.param1 ~= 1002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1010(context, evt)
	-- 将configid为 1009 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1009, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1011(context, evt)
	if 1009 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1011(context, evt)
	-- 创建id为1012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

local bossMonsterId=
{
	29070101,
	29070102,
	29070103,
	29070104,
	29070105
}

local extraTriggers = 
{
    { config_id = 40000001, name = "monster_die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE", trigger_count = 0 },
	{ config_id = 40000002, name = "time_axis_pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS", trigger_count = 0},
	{ config_id = 40000003, name = "monster_alive", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE", trigger_count = 0 },
	{ config_id = 40000004, name = "monster_battle", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE", trigger_count = 0 },
	{ config_id = 40000005, name = "enter_region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION", forbid_guest = false,trigger_count = 0 },
}

------ Local Functions -----------
function LF_Initialize_Level()
    --- TRIGGER
	for i, _suite in ipairs(suites) do
		for _, _trigger in pairs(extraTriggers) do
			table.insert(_suite.triggers, _trigger.name)
		end
	end
	for _, _trigger in pairs(extraTriggers) do
		table.insert(triggers, _trigger)
	end
    return 0
end

function LF_IsBossMonster(context,monsterId)
	for k,v in pairs(bossMonsterId) do
		if v==monsterId then
			return true
		end
	end
	return false
end

------ Server Lua Call Functions -----------



------ conditions & actions ------
--时间轴触发传送
function action_EVENT_TIME_AXIS_PASS(context, evt)
	if evt.source_name=="PlayCutScene" then
		for k,v in pairs(points) do
			if v.config_id==defs.transTarget then
				ScriptLib.TransPlayerToPos(context, {uid_list = ScriptLib.GetSceneUidList(context), pos = v.pos, radius = 2, rot = v.rot})
				ScriptLib.DelSceneTag(context, 20154, 1179)
				ScriptLib.AddSceneTag(context, 20154 ,1180)
			end
		end
		ScriptLib.InitTimeAxis(context,"YAxisCheck",{5},true)
	end
	if evt.source_name=="ShowReminder" then
		local uidList=ScriptLib.GetSceneUidList(context)
		local transUid={}
		for k,v in pairs(uidList) do
			if ScriptLib.IsInRegion(context, v, defs.phaseOneRegion)==false then
				table.insert(transUid,v)
			end
		end	
		for a,b in pairs(points) do
			if b.config_id==defs.bossBattleTransPoint then
				if #transUid>0 then
					ScriptLib.TransPlayerToPos(context, {uid_list = transUid, pos = b.pos, radius = 2, rot = b.rot})
				end	
			end
		end	
	end

	if evt.source_name=="YAxisCheck" then
		local uidList=ScriptLib.GetSceneUidList(context)
		for a,b in pairs(uidList) do
			local entity=ScriptLib.GetAvatarEntityIdByUid(context, b)
			local pos=ScriptLib.GetPosByEntityId(context, entity)
			if pos.y>= 0 then
				for k,v in pairs(points) do
					if v.config_id==defs.transTarget then
						ScriptLib.TransPlayerToPos(context, {uid_list = {b}, pos = v.pos, radius = 2, rot = v.rot})
					end
				end
			end
		end
	end
	return 0
end

function action_EVENT_MONSTER_BATTLE(context, evt)
	if evt.param1==defs.phaseOneBoss then
		--起提示
		local uidList=ScriptLib.GetSceneUidList(context)
		for k,v in pairs(uidList) do
			if ScriptLib.IsInRegion(context, v, defs.phaseOneRegion)==false then
				ScriptLib.AssignPlayerShowTemplateReminder(context,214,{param_uid_vec={},param_vec={},uid_vec={v}})
			end
		end	
		--起时间轴
		ScriptLib.InitTimeAxis(context,"ShowReminder",{10},true)
	end
	return 0
end

function action_EVENT_ENTER_REGION(context, evt)
	ScriptLib.RevokePlayerShowTemplateReminder(context, 214, {context.uid})
	return 0
end

function action_EVENT_ANY_MONSTER_LIVE(context, evt)
	--进入方法的log
	local monsterEntityId=ScriptLib.GetEntityIdByConfigId(context, evt.param1)
    local monsterId=ScriptLib.GetMonsterIdByEntityId(context, monsterEntityId)
	if LF_IsBossMonster(context,monsterId) then
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, evt.param1, "SGV_MONSTER_NADA", 1)
	end
	return 0
end

--boss一阶段死亡传到下面去
function action_EVENT_ANY_MONSTER_DIE(context, evt)
	if evt.param1==defs.phaseOneBoss then
		local uidList=ScriptLib.GetSceneUidList(context)
		if #uidList<=1 then
			ScriptLib.PlayCutScene(context, 201520002, 0)
		end
		ScriptLib.InitTimeAxis(context,"PlayCutScene",{2},false)
		--回收一阶段的时间轴
		ScriptLib.EndTimeAxis(context,"ShowReminder")
		--回收所有的reminder
		for k,v in pairs(uidList) do
			ScriptLib.RevokePlayerShowTemplateReminder(context, 214, {v})
		end	
	end
	return 0
end

LF_Initialize_Level()
