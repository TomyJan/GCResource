-- 基础信息
local base_info = {
	group_id = 133220200
}

-- DEFS_MISCS
--第一次交互触发CS
function SLC_PlayCutScene_UnlockSakura(context)
	--标记值为0播CS
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : CallPlayCutScene")
	if 0 == ScriptLib.GetGroupVariableValue(context, "HasPlayedCS") then
		ScriptLib.PlayCutScene(context, 25, 0)
		ScriptLib.SetGroupVariableValue(context, "HasPlayedCS", 1)
	end
	return 0
end

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
	{ config_id = 200001, gadget_id = 70290094, pos = { x = -2465.643, y = 449.196, z = -4422.203 }, rot = { x = 0.000, y = 332.221, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 200004, gadget_id = 70290149, pos = { x = -2463.980, y = 442.290, z = -4426.020 }, rot = { x = 0.000, y = 296.759, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "HasPlayedCS", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作