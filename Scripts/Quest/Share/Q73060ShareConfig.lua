-- 任务配置数据开始-----------------------------

main_id = 73060sub_ids = {	7306001,	7306002,	7306003,	7306004,}-- 任务配置数据结束----------------------------------- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-- 父任务执行项数据开始-----------------------------finish_action = {	CLIENT = { },	SERVER = { },}fail_action = {	CLIENT = { },	SERVER = { },}cancel_action = {	CLIENT = { },	SERVER = { },}-- 父任务执行项数据结束------------------------------- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-- Actor模块数据开始---------------------------------- 空-- Actor模块数据结束---------------------------------- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-- 文本模块数据开始----------------------------------- 空-- 文本模块数据结束----------------------------------- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-- 路点模块数据开始----------------------------------- 空-- 路点模块数据结束----------------------------------- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-- 断线重连生成内容 开始------------------------------ 和questdata配的存档点对应rewind_data = {	["7306001"] = { },	["7306002"] = { },	["7306003"] = { },	["7306004"] = { },}-- 断线重连生成内容 结束------------------------------ >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-- 校验数据 开始------------------------------------ 和任务lua中生成NPC/Monster/Gadget/Item等对应quest_data = {	["7306001"] = 	{		npcs = 		{			{				id = 20605,				alias = "Npc20605",				script = "Actor/Npc/TempNPC",				pos = "guide_Q7301801",				scene_id = 3,				room_id = 0,				data_index = 1,			},			{				id = 4187,				alias = "Npc4187",				script = "Actor/Npc/NpcFSMBehaviour",				pos = "guide_Q7301801",				scene_id = 3,				room_id = 0,				data_index = 2,			},		},	},	["7306002"] = 	{		npcs = 		{			{				id = 20607,				alias = "Npc20607",				script = "Actor/Npc/TempNPC",				pos = "guide_Q7301801_3",				scene_id = 3,				room_id = 0,				data_index = 1,			},			{				id = 4189,				alias = "Npc4189",				script = "Actor/Npc/NpcFSMBehaviour",				pos = "guide_Q7301801_3",				scene_id = 3,				room_id = 0,				data_index = 2,			},		},	},	["7306003"] = 	{		npcs = 		{			{				id = 20606,				alias = "Npc20606",				script = "Actor/Npc/TempNPC",				pos = "guide_Q7301801_2",				scene_id = 3,				room_id = 0,				data_index = 1,			},			{				id = 4188,				alias = "Npc4188",				script = "Actor/Npc/NpcFSMBehaviour",				pos = "guide_Q7301801_2",				scene_id = 3,				room_id = 0,				data_index = 2,			},		},	},	["7306004"] = 	{		npcs = 		{			{				id = 20608,				alias = "Npc20608",				script = "Actor/Npc/TempNPC",				pos = "guide_Q7301801_4",				scene_id = 3,				room_id = 0,				data_index = 1,			},			{				id = 4190,				alias = "Npc4190",				script = "Actor/Npc/NpcFSMBehaviour",				pos = "guide_Q7301801_4",				scene_id = 3,				room_id = 0,				data_index = 2,			},		},	},}-- 校验数据 结束------------------------------------ >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>