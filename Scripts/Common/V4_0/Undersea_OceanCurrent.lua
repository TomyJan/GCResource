function SLC_EnterOceanCurrent( context, evt )

	local uid = ScriptLib.GetUidByTeamEntityId(context, context.target_entity_id)

	local configID = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })

	local curveID = gadgets[configID].arguments[1]

	local pointID = gadgets[configID].arguments[2]

	ScriptLib.EnterCurve(context, uid, curveID, pointID, OceanCurrent)

	return 0
end