--- ServerUploadTool Save to [/root/env/data/lua/common/V4_0]  ---
--[[======================================
||  filename:   Undersea_UnderWaterPlat
||  owner:      xudong.sun
||  description:    水下幻影板，有一块主幻影板控制当前group下的分幻影板的创建和显隐
||  LogName:    ## Undersea_UnderWaterPlat
||  Protection: 
=======================================]]

--[[

local CreateOption = 1
local DelOption = 2
local MainPlate = 283007
local SubPlate = {283008,283009}

]]--

local Extra_Triggers = {
    { config_id = 8000001, name = "GadgetStateChange", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_GadgetStateChange", trigger_count = 0 },
	{ config_id = 8000002, name = "SelectOption", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_SelectOption", trigger_count = 0 },
	{ config_id = 8000003, name = "GreateGadget", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_CreateGadget", trigger_count = 0 }, 
}

function action_CreateGadget( context, evt )

	if evt.param1 == MainPlate and ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, evt.param1)==201 then

		if ScriptLib.GetGroupVariableValue(context, "Is_Created") == 0 then

			ScriptLib.SetWorktopOptionsByGroupId(context, 0, MainPlate, {CreateOption})

		elseif ScriptLib.GetGroupVariableValue(context, "Is_Created") == 1 then

			ScriptLib.SetWorktopOptionsByGroupId(context, 0, MainPlate, {DelOption})

		end

	end

	return 0
end


function action_GadgetStateChange( context, evt )

	--主板按键管理
	if evt.param1 == 201 and evt.param2 == MainPlate then
		if ScriptLib.GetGroupVariableValue(context, "Is_Created") == 0 then

			ScriptLib.SetWorktopOptionsByGroupId(context, 0, MainPlate, {CreateOption})

		elseif ScriptLib.GetGroupVariableValue(context, "Is_Created") == 1 then

			ScriptLib.SetWorktopOptionsByGroupId(context, 0, MainPlate, {DelOption})

		end

	elseif evt.param1 == 0 and evt.param2 == MainPlate then

		ScriptLib.SetWorktopOptionsByGroupId(context, 0, MainPlate, {})

	end

	--所有平台状态管理
	if LF_TargetIsPlate( evt.param2 ) then
		LF_SetOtherPlateState(context, evt.param1 )
	end

	return 0
end

function action_SelectOption( context, evt )

	if evt.param2 == CreateOption then

		for i,v in ipairs(SubPlate) do
			ScriptLib.CreateGadget(context, { config_id = v })
		end

		ScriptLib.SetWorktopOptionsByGroupId(context, 0, MainPlate, {DelOption})
		ScriptLib.SetGroupVariableValue(context, "Is_Created", 1)

	elseif evt.param2 == DelOption then

		for i,v in ipairs(SubPlate) do
			ScriptLib.KillEntityByConfigId(context, { group_id = base_info.group_id, config_id = v })
		end	

		ScriptLib.SetWorktopOptionsByGroupId(context, 0, MainPlate, {CreateOption})
		ScriptLib.SetGroupVariableValue(context, "Is_Created", 0)

	end

	return 0
end

function LF_TargetIsPlate( configID )

	if configID == MainPlate then
		return true
	end

	for i,v in ipairs(SubPlate) do
		if v == configID then
			return true
		end
	end

	return false
end

function LF_SetOtherPlateState( context, State )

	ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, MainPlate , State)

	for i,v in ipairs(SubPlate) do
		ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, v , State)
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