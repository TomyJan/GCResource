--[[======================================
||	filename:       RollerCoaster
||	owner:          juntao.chen
||	description:    3.7过山车
||	LogName:        RollerCoaster
||	Protection:     [Protection]
=======================================]]

--需求defs
--[[

local defs = {
	pointarray = 110100071,
	pointcount = 13,
	Start_Operator = 332001,
	End_Operator = 332002,
	speed = 15
}

]]

local temp_Variables = {
	{ name = "Start", value = 0, no_refresh = false },
	{ name = "SET_TRIGGER", value = 0, no_refresh = false },
}
local temp_Tirgger = {
	{event = EventType.EVENT_SELECT_OPTION, source = "", action = "action_EVENT_SELECT_OPTION"},
	{event = EventType.EVENT_GROUP_LOAD, source = "", action = "action_EVENT_GROUP_LOAD"},
	{event = EventType.EVENT_GADGET_CREATE, source = "", action = "action_EVENT_GADGET_CREATE"},
}
function action_EVENT_GROUP_LOAD(context,evt)
    ScriptLib.PrintContextLog(context,"## RollerCoaster action_EVENT_GROUP_LOAD")
    return 0
end
function action_EVENT_GADGET_CREATE(context,evt)
    ScriptLib.PrintContextLog(context,"## RollerCoaster action_EVENT_GADGET_CREATE:evt.param1="..evt.param1)
    if evt.param1 == defs.Start_Operator or evt.param1 == defs.End_Operator then
        ScriptLib.SetWorktopOptions(context, {175})
    end
    return 0
end
function action_EVENT_SELECT_OPTION(context,evt)
    ScriptLib.PrintContextLog(context,"## RollerCoaster action_EVENT_SELECT_OPTION")
    local _list = {}
    --配置合法检测
    if defs.speed == nil then
        ScriptLib.PrintContextLog(context,"## RollerCoaster action_EVENT_SELECT_OPTION:[warning]defs.speed == nil")
        return -1
    end
    if defs.pointarray == nil then
        ScriptLib.PrintContextLog(context,"## RollerCoaster action_EVENT_SELECT_OPTION:[warning]defs.pointarray == nil")
        return -1
    end
    if defs.Start_Operator == nil then
        ScriptLib.PrintContextLog(context,"## RollerCoaster action_EVENT_SELECT_OPTION:[warning]defs.Start_Operator == nil")
        return -1
    end
    if defs.End_Operator == nil then
        ScriptLib.PrintContextLog(context,"## RollerCoaster action_EVENT_SELECT_OPTION:[warning]defs.End_Operator == nil")
        return -1
    end
    if defs.pointcount == nil then
        ScriptLib.PrintContextLog(context,"## RollerCoaster action_EVENT_SELECT_OPTION:[warning]defs.pointcount == nil")
        return -1
    end
    --开始
    if evt.param1 == defs.Start_Operator then 
        ScriptLib.PrintContextLog(context,"## RollerCoaster action_EVENT_SELECT_OPTION：Start_Operator")
        for i = 1 ,defs.pointcount do 
            table.insert(_list,i)
        end
        ScriptLib.PrintContextLog(context,"## RollerCoaster action_EVENT_SELECT_OPTION:#_list = "..#_list)
        ScriptLib.MoveAvatarByPointArray(context,evt.uid,defs.pointarray, _list,{speed = defs.speed }, "{\"MarkType\":1,\"IgnoreCollisionWhenEnter\":true}")
    else
        ScriptLib.PrintContextLog(context,"## RollerCoaster action_EVENT_SELECT_OPTION：End_Operator")
        for i = 1 ,defs.pointcount do 
            table.insert(_list,defs.pointcount + 1 - i)
        end
        ScriptLib.PrintContextLog(context,"## RollerCoaster action_EVENT_SELECT_OPTION:#_list = "..#_list)
        ScriptLib.MoveAvatarByPointArray(context,evt.uid,defs.pointarray, _list, {speed = defs.speed }, "{\"MarkType\":1,\"IgnoreCollisionWhenEnter\":true}")
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