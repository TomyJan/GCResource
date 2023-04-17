function OnClientExecuteReq(context, param1, param2, param3)
    local gather_config_ids = ScriptLib.GetGatherConfigIdList(context)
    local length = #gather_config_ids
    ScriptLib.PrintLog("gather_config_ids length: " ..length)
    if length > 0 then
        if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, gather_config_ids[1], GadgetState.GearStart) then
            ScriptLib.PrintLog("Drop config_id:" .. gather_config_ids[1] .." failed")
        end 
    end 
end

function OnBeHurt(context, element_type, strike_type, is_host)
    local gather_config_ids = ScriptLib.GetGatherConfigIdList(context)
    local length = #gather_config_ids
    ScriptLib.PrintLog("gather_config_ids length: " ..length)
    if length > 0 then
        if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, gather_config_ids[1], GadgetState.GearStart) then
            ScriptLib.PrintLog("Drop config_id:" .. gather_config_ids[1] .." failed")
        end 
    end 
end