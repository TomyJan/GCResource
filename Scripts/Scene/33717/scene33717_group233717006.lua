-- Basic information
local base_info = {
	group_id = 233717006
}

--================================================================
-- 
-- Configure
-- 
--================================================================

-- Monster
monsters = {
}

-- NPC
npcs = {
}

-- Equipment/Gadget
gadgets = {
	{ config_id = 6001, gadget_id = 70360010, pos = { x = 0.000, y = -0.160, z = 0.000 }, rot = { x = 0.000, y = 0.150, z = 0.000 }, level = 1 },
	{ config_id = 6002, gadget_id = 70330113, pos = { x = 0.000, y = -0.034, z = 0.000 }, rot = { x = 0.000, y = 0.150, z = 0.000 }, level = 1 }
}

-- Region
regions = {
}

-- Trigger
triggers = {
	{ config_id = 1006003, name = "GADGET_CREATE_6003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_6003", action = "action_EVENT_GADGET_CREATE_6003" },
	{ config_id = 1006004, name = "SELECT_OPTION_6004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6004", action = "action_EVENT_SELECT_OPTION_6004", trigger_count = 0 },
	{ config_id = 1006005, name = "SELECT_OPTION_6005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6005", action = "action_EVENT_SELECT_OPTION_6005", trigger_count = 0 }
}

-- Variable
variables = {
}

--================================================================
-- 
-- Initial Configuration
-- 
--================================================================

-- Created at initialization
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- Group configuration
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 6001 },
		regions = { },
		triggers = { "GADGET_CREATE_6003", "SELECT_OPTION_6004", "SELECT_OPTION_6005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- Trigger
-- 
--================================================================

-- Triggering conditions (First time)
function condition_EVENT_GADGET_CREATE_6003(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- Triggering Action (1)
function action_EVENT_GADGET_CREATE_6003(context, evt)
	-- Set options

	ScriptLib.PrintContextLog(context, "First time")

	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 233717006, 6001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- Triggering conditions
function condition_EVENT_SELECT_OPTION_6004(context, evt)
	-- if Match gadgetid 6001 and option_id 175 set false
	if 6001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	-- Check if variable "stage" is 0
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage", 233717005) ~= 0 then
			return false
	end
	
	return true
end

-- Triggering Action (2)
function action_EVENT_SELECT_OPTION_6004(context, evt)

	ScriptLib.PrintContextLog(context, "2x time")

	-- Create a gadget with id 6002
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 6002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- Set tower is allowed to use skills (is_allow_use_skill=0 or 1, which means that active skills are not allowed or allowed)
	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end
	
	-- Delete specified group: 233717006; config: 6001; option: 175 on object;
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 233717006, 6001, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- Change state gadget whose configid is 6001 in specified group 233717006
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233717006, 6001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- Change state gadget whose configid is 6002 in specified group 233717006
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233717006, 6002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- Add new content for suite2
	    ScriptLib.AddExtraGroupSuite(context, 233717007, 2)
	
	-- Change state gadget whose configid is 9001 in specified group 233717009
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233717009, 9001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- Change state gadget whose configid is 9002 in specified group 233717009
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233717009, 9002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- Triggering Condition (3)
function condition_EVENT_SELECT_OPTION_6005(context, evt)
	-- Check if gadgetid 6001 and option_id 176
	if 6001 ~= evt.param1 then
		return false	
	end
	
	if 176 ~= evt.param2 then
		return false
	end
	
	
	-- Check if stage is 1
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage", 233717005) ~= 1 then
			return false
	end
	
	return true
end

-- Triggering Action (3)
function action_EVENT_SELECT_OPTION_6005(context, evt)

	ScriptLib.PrintContextLog(context, "3x time")

	-- 创建id为6002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 6002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 爬塔是否允许使用技能（ is_allow_use_skill=0或1,表示不允许或允许使用主动技能）
	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end
	
	-- 删除指定group： 233717006 ；指定config：6001；物件身上指定option：176；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 233717006, 6001, 176) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组233717006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233717006, 6001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233717006中， configid为6002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233717006, 6002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 233717008, 2)
	
	-- 改变指定group组233717009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233717009, 9001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233717009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233717009, 9002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end