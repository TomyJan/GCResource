--- ServerUploadTool Save to [/root/env/data/lua/common/V4_0]  ---
--[[======================================
||  filename:   Undersea_Pensieve
||  owner:      xudong.sun
||  description:    冥想盆玩法，根据提交的内容不同，触发不同的关卡事件
||  LogName:    ## Undersea_Pensieve
||  Protection: 
=======================================]]

--[[
未交付不可交互 - 没特定State
未交付（可交互） - 0
交付不可取回（不可交互） - 101
交付可取回 - 102
]]

local pensieveConfigID = 285001

local giving_Triggers = {
    { config_id = 8800001, name = "Gadget_Giving_Finished", event = EventType.EVENT_GADGET_GIVING_FINISHED, source = "", condition = "", action = "action_Gadget_Giving_Finished", trigger_count = 0 },
    { config_id = 8800002, name = "Gadget_Giving_TakeBack", event = EventType.EVENT_GADGET_GIVING_TAKEBACK, source = "", condition = "", action = "action_Gadget_Giving_TakeBack", trigger_count = 0 },
    { config_id = 8800003, name = "Group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },    
}

local Pensieve_Action= {
    [102009] = function ( context)

        ScriptLib.PrintContextLog(context, "## Undersea_Pensieve : 播放CS")

        return 0
    end,
    [102010] = function ( context)

        ScriptLib.PrintContextLog(context, "## Undersea_Pensieve : 注目镜头")

        return 0
    end,
    [102011] = function ( context)

        ScriptLib.PrintContextLog(context, "## Undersea_Pensieve : 玩家传送")

        return 0
    end,
}


function LF_Initialize_GadgetGiving(triggers, suites)
    for i=1,#giving_Triggers do
        table.insert(triggers, giving_Triggers[i])
        table.insert(suites[init_config.suite].triggers,giving_Triggers[i].name)
    end
    --table.insert(variables,{ config_id=50000001, name = "conch_puzzle_success", value = 0})
end

--监听Gadget交付完成事件
--evt.param1: 交付Gadget的config_id
--evt.param2: 使用的giving_id
function action_Group_Load( context, evt)

    ScriptLib.PrintContextLog(context, "## Undersea_Pensieve : group 加载")

    ScriptLib.ActiveGadgetItemGiving(context, 10000118, base_info.group_id, pensieveConfigID)

    return 0
end


function action_Gadget_Giving_Finished(context, evt)
    --evt.param1物件的configID   evt.param2物件的GivingID

    --获取当前提交的materialID
    local _materialID = ScriptLib.GetGivingItemList(context, evt.param2)[1]

    ScriptLib.PrintContextLog(context, "## Undersea_Pensieve : 交付成功, _materialID = ".._materialID)

    Pensieve_Action[_materialID](context)

    return 0

end

function action_Gadget_Giving_TakeBack(context, evt)

    return 0
end



LF_Initialize_GadgetGiving(triggers, suites)