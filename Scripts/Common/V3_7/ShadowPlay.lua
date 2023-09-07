--[[======================================
||	filename:       ShadowPlay
||	owner:          juntao.chen
||	description:    3.7影子
||	LogName:        ShadowPlay
||	Protection:     [Protection]
=======================================]]


local temp_Variables = {
	{ name = "SET_TRIGGER", value = 0, no_refresh = false },
}
local temp_Tirgger = {
	{event = EventType.EVENT_SELECT_OPTION, source = "", action = "action_EVENT_SELECT_OPTION"},
}
function action_EVENT_SELECT_OPTION(context,evt)
    ScriptLib.PrintContextLog(context, "## ShadowPlay : action_EVENT_SELECT_OPTION ")
    return 0
end
function SLC_ShadowPlay_Transfer(context)
    ScriptLib.PrintContextLog(context,"## ShadowPlay SLC_ShadowPlay_Transfer:2")
	local _uidlist = ScriptLib.GetSceneUidList(context)
    if _uidlist ~= nil then
        ScriptLib.PrintContextLog(context,"## ShadowPlay SLC_ShadowPlay_Transfer:"..#_uidlist)
    end
    if ScriptLib.GetGroupTempValue(context,"_Is_In_Shadow",{}) ~= 1 then
        ScriptLib.PrintContextLog(context,"## ShadowPlay SLC_ShadowPlay_Transfer:_Is_In_Shadow="..1)
        ScriptLib.SetTeamEntityGlobalFloatValue(context, _uidlist, "SGV_Is_In_Shadow", 1)
        --ScriptLib.TransPlayerToPos(context, {uid_list = _uidlist, pos = {points[1].pos}, radius = 0, rot = {x=0, y=180, z=0},is_skip_ui=true})
        ScriptLib.SetGroupTempValue(context,"_Is_In_Shadow", 1,{})
    else
        ScriptLib.PrintContextLog(context,"## ShadowPlay SLC_ShadowPlay_Transfer:_Is_In_Shadow="..0)
        ScriptLib.SetTeamEntityGlobalFloatValue(context, _uidlist, "SGV_Is_In_Shadow", 0)
        --ScriptLib.TransPlayerToPos(context, {uid_list =_uidlist, pos = {points[2].pos}, radius = 0, rot = {x=0, y=180, z=0},is_skip_ui=true})
        ScriptLib.SetGroupTempValue(context,"_Is_In_Shadow", 0,{})
    end
    return 0
end
--初始化
function Initialize()
	--加触发器
    if temp_Tirgger ~= nil then 
        for k,v in pairs(temp_Tirgger) do
            v.name = v.action
            v.config_id = 40000000 + k
            v.trigger_count = 0
            v.condition = ""
            table.insert(triggers, v)
            table.insert(suites[init_config.suite].triggers, v.name)
        end
    end
	--加变量
    if temp_Variables ~= nil then 
        for k,v in pairs(temp_Variables) do
            v.config_id = 50000000 + k
            table.insert(variables,v)
        end
    end

	return 0
end
Initialize()