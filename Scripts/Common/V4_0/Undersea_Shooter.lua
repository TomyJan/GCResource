--- ServerUploadTool Save to [/root/env/data/lua/common/V4_0]  ---
--[[======================================
||  filename:   Undersea_Shoter
||  owner:      xudong.sun
||  description:    泪水大炮命中玩家触发传送
||  LogName:    ## Undersea_Shoter
||  Protection: 
=======================================]]

local pointArray = 340100002
local pointList = {1,2}

function SLC_BackToStartPoint( context )

	local uid = ScriptLib.GetUidByTeamEntityId(context, context.target_entity_id) 

	ScriptLib.MoveAvatarByPointArray(context, uid, pointArray, pointList, {speed=10}, "{\"MarkType\":1}")
	return 0 
end