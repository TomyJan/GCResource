-- 基础信息
local base_info = {
	group_id = 220192001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1696001, monster_id = 29080101, pos = { x = 100, y = 10.5, z = 99.5 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 100, drop_tag = "大史莱姆", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
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
		monsters = { 1696001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================


function PrintLog(context, content)
	local log = "## [Boss_Battle_Process_Apep_Quest]"
	ScriptLib.PrintContextLog(context, log)
end

function LF_Initialize_Level()
    --- TRIGGER
	ScriptLib.CreateMonster(context, {config_id=1696001, delay_time=0})
	--table.insert(variables,{ config_id=51000000,name = "bossCreated", value = 0, no_refresh = true})
    return 0
end

LF_Initialize_Level()
--ScriptLib.CreateMonster(context, {config_id=1696001, delay_time=0})
PrintLog(context, "monster alive: apep")