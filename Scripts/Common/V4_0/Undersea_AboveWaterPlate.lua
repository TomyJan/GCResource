--- ServerUploadTool Save to [/root/env/data/lua/common/V4_0]  ---
--[[======================================
||  filename:   Undersea_AboveWaterPlat
||  owner:      xudong.sun
||  description:    水上幻影板，有一块主幻影板控制当前group下的分幻影板的创建
||  LogName:    ## Undersea_AboveWaterPlat
||  Protection: 
=======================================]]

--[[

local MainPlate = 283007
local SubPlate = {283008,283009}

]]--

local Extra_Triggers = {
    { config_id = 8000001, name = "CreatePlateTimer", event = EventType.EVENT_TIME_AXIS_PASS, source = "createplate_timer", condition = "", action = "action_CreatePlate", trigger_count = 0 },
	{ config_id = 8000002, name = "EnterRegion", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EnterRegion", trigger_count = 0 },
	{ config_id = 8000001, name = "DeletePlateTimer", event = EventType.EVENT_TIME_AXIS_PASS, source = "deleteplate_timer", condition = "", action = "action_DeletePlate", trigger_count = 0 },

}


function SLC_TriggerPlate( context )

	--重置到suite1
	ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 1})

	ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, MainPlate , 201)

	--设置时间轴，定时创建幻影板
	ScriptLib.InitTimeAxis(context, "createplate_timer", {1}, true)

	--设置查询index
	ScriptLib.SetGroupTempValue(context, "CreatePlateIndex", 1, {})

	return 0
end

function action_CreatePlate( context, evt )

	ScriptLib.CreateGadget(context, { config_id = SubPlate[ScriptLib.GetGroupTempValue(context, "CreatePlateIndex", {})] })

	--查询index + 1 
	ScriptLib.ChangeGroupTempValue(context, "CreatePlateIndex", 1, {})

	if ScriptLib.GetGroupTempValue(context, "CreatePlateIndex", {}) >= #SubPlate then
		ScriptLib.EndTimeAxis(context, "createplate_timer")
	end

	return 0
end

function action_EnterRegion( context, evt )

	--停止创建
	ScriptLib.EndTimeAxis(context, "createplate_timer")

	--设置时间轴，删除幻影板
	ScriptLib.InitTimeAxis(context, "deleteplate_timer", {1}, true)

	return 0
end

function action_DeletePlate( context, evt )

	ScriptLib.KillEntityByConfigId(context, { group_id = base_info.group_id, config_id = SubPlate[ScriptLib.GetGroupTempValue(context, "CreatePlateIndex", {})] })

	--查询index + 1 
	ScriptLib.ChangeGroupTempValue(context, "CreatePlateIndex", 1, {})

	if ScriptLib.GetGroupTempValue(context, "CreatePlateIndex", {}) >= #SubPlate then
		ScriptLib.EndTimeAxis(context, "deleteplate_timer")
	end

	return 0
end



function LF_Initialize_GroupTrigger(triggers, suites)
    for i=1,#Extra_Triggers do
        table.insert(triggers, Extra_Triggers[i])
        table.insert(suites[init_config.suite].triggers,Extra_Triggers[i].name)
    end
end

LF_Initialize_GroupTrigger(triggers, suites)