local _delay = 10

function OnClientExecuteReq(context, param1, param2, param3)
	if param1 == 0 then
		ScriptLib.SetGadgetState(context, GadgetState.Default)
	elseif param1 == 201 then
		ScriptLib.SetGadgetState(context, GadgetState.GearStart)
	end
end

-- ��ʱ���ص�
function OnTimer(context, now)
	-- ��ȡ���ص�ǰ״̬
	local state = ScriptLib.GetGadgetState(context)
	if state ~= GadgetState.Default then
		-- ��ȡ��ǰ״̬�Ŀ�ʼʱ��
		local state_begin_time = ScriptLib.GetGadgetStateBeginTime(context)
		if now >= state_begin_time + _delay then
			-- �������ʱ�䳬����������ʱ�䣬��ת��ΪDefault״̬
			ScriptLib.SetGadgetState(context, GadgetState.Default)
		end
	end
end
