-- 基础信息
local base_info = {
	group_id = 251008007
}

-- DEFS_MISCS
local defs = {

        way_point = 
        {
            [28001] = 5,
            [28002] = 5,
            [28003] = 3,
            [28004] = 3,
            [28005] = 6,
            [28006] = 6,
            [28007] = 4,
            [28008] = 4,
            [28009] = 2,
            [28010] = 2,
            [28011] = 1,
            [28012] = 1,
            [28013] = 3,
            [28014] = 3,
            [28015] = 3,
            [28016] = 3,
            [28017] = 3,
            [28018] = 3,
        },
  --每个房间传送点坐标列表,key为GalleryID
  transpoint_list = 
  {
        --躲弹球
        [28001] = 
        {
                [1] = {pos = {x = 775, y = 0, z = 775}, rot = {x = 0, y = 45, z = 0}},
                [2] = {pos = {x = 774, y = 0, z = 775}, rot = {x = 0, y = 45, z = 0}},
                [3] = {pos = {x = 775, y = 0, z = 774}, rot = {x = 0, y = 45, z = 0}},
                [4] = {pos = {x = 774, y = 0, z = 774}, rot = {x = 0, y = 45, z = 0}},
        },
        --躲弹球
        [28002] = 
        {
                [1] = {pos = {x = 775, y = 0, z = 775}, rot = {x = 0, y = 45, z = 0}},
                [2] = {pos = {x = 774, y = 0, z = 775}, rot = {x = 0, y = 45, z = 0}},
                [3] = {pos = {x = 775, y = 0, z = 774}, rot = {x = 0, y = 45, z = 0}},
                [4] = {pos = {x = 774, y = 0, z = 774}, rot = {x = 0, y = 45, z = 0}},
        },
        --打桩
        [28003] = 
        {
                [1] = {pos = {x = 399, y = 1, z = 399}, rot = {x = 0, y = 0, z = 0}},
                [2] = {pos = {x = 401, y = 1, z = 399}, rot = {x = 0, y = 0, z = 0}},
                [3] = {pos = {x = 399, y = 1, z = 401}, rot = {x = 0, y = 0, z = 0}},
                [4] = {pos = {x = 401, y = 1, z = 401}, rot = {x = 0, y = 0, z = 0}}
        }, 
        --打桩       
        [28004] = 
        {
                [1] = {pos = {x = 399, y = 1, z = 399}, rot = {x = 0, y = 0, z = 0}},
                [2] = {pos = {x = 401, y = 1, z = 399}, rot = {x = 0, y = 0, z = 0}},
                [3] = {pos = {x = 399, y = 1, z = 401}, rot = {x = 0, y = 0, z = 0}},
                [4] = {pos = {x = 401, y = 1, z = 401}, rot = {x = 0, y = 0, z = 0}}
        },
        --水上漂
        [28005] = 
        {
                [1] = {pos = {x = 949, y = 0, z = 949}, rot = {x = 0, y = 0, z = 0}},
                [2] = {pos = {x = 951, y = 0, z = 949}, rot = {x = 0, y = 0, z = 0}},
                [3] = {pos = {x = 949, y = 0, z = 951}, rot = {x = 0, y = 0, z = 0}},
                [4] = {pos = {x = 951, y = 0, z = 951}, rot = {x = 0, y = 0, z = 0}}
        },
        --水上漂
        [28006] = 
        {
                [1] = {pos = {x = 949, y = 0, z = 949}, rot = {x = 0, y = 0, z = 0}},
                [2] = {pos = {x = 951, y = 0, z = 949}, rot = {x = 0, y = 0, z = 0}},
                [3] = {pos = {x = 949, y = 0, z = 951}, rot = {x = 0, y = 0, z = 0}},
                [4] = {pos = {x = 951, y = 0, z = 951}, rot = {x = 0, y = 0, z = 0}}
        },
        --打棒球
        [28007] = 
        {
                [1] = {pos = {x = 595, y = 0, z = 583}, rot = {x = 0, y = 0, z = 0}},
                [2] = {pos = {x = 605, y = 0, z = 583}, rot = {x = 0, y = 0, z = 0}},
                [3] = {pos = {x = 590, y = 0, z = 583}, rot = {x = 0, y = 0, z = 0}},
                [4] = {pos = {x = 610, y = 0, z = 583}, rot = {x = 0, y = 0, z = 0}}
        },   
        --打棒球     
        [28008] = 
        {
                [1] = {pos = {x = 595, y = 0, z = 583}, rot = {x = 0, y = 0, z = 0}},
                [2] = {pos = {x = 605, y = 0, z = 583}, rot = {x = 0, y = 0, z = 0}},
                [3] = {pos = {x = 590, y = 0, z = 583}, rot = {x = 0, y = 0, z = 0}},
                [4] = {pos = {x = 610, y = 0, z = 583}, rot = {x = 0, y = 0, z = 0}}
        },   
        --踢史莱姆
        [28009] = 
        {
                [1] = {pos = {x = 199, y = 0, z = 199}, rot = {x = 0, y = 0, z = 0}},
                [2] = {pos = {x = 201, y = 0, z = 199}, rot = {x = 0, y = 0, z = 0}},
                [3] = {pos = {x = 199, y = 0, z = 201}, rot = {x = 0, y = 0, z = 0}},
                [4] = {pos = {x = 201, y = 0, z = 201}, rot = {x = 0, y = 0, z = 0}}
        },
        --踢史莱姆
        [28010] = 
        {
                [1] = {pos = {x = 199, y = 0, z = 199}, rot = {x = 0, y = 0, z = 0}},
                [2] = {pos = {x = 201, y = 0, z = 199}, rot = {x = 0, y = 0, z = 0}},
                [3] = {pos = {x = 199, y = 0, z = 201}, rot = {x = 0, y = 0, z = 0}},
                [4] = {pos = {x = 201, y = 0, z = 201}, rot = {x = 0, y = 0, z = 0}}
        },
        --消消乐
        [28011] = 
        {
                [1] = {pos = {x = -1, y = 0, z = -6}, rot = {x = 0, y = 0, z = 0}},
                [2] = {pos = {x = 1, y = 0, z = -6}, rot = {x = 0, y = 0, z = 0}},
                [3] = {pos = {x = -1, y = 0, z = -8}, rot = {x = 0, y = 0, z = 0}},
                [4] = {pos = {x = 1, y = 0, z = -8}, rot = {x = 0, y = 0, z = 0}}
        },
        --消消乐        
        [28012] = 
        {
                [1] = {pos = {x = -1, y = 0, z = -6}, rot = {x = 0, y = 0, z = 0}},
                [2] = {pos = {x = 1, y = 0, z = -6}, rot = {x = 0, y = 0, z = 0}},
                [3] = {pos = {x = -1, y = 0, z = -8}, rot = {x = 0, y = 0, z = 0}},
                [4] = {pos = {x = 1, y = 0, z = -8}, rot = {x = 0, y = 0, z = 0}}
        },
         --破盾
        [28013] = 
        {
                [1] = {pos = {x = 399, y = -1.66, z = 399}, rot = {x = 0, y = 0, z = 0}},
                [2] = {pos = {x = 399, y = -1.66, z = 401}, rot = {x = 0, y = 0, z = 0}},
                [3] = {pos = {x = 401, y = -1.66, z = 399}, rot = {x = 0, y = 0, z = 0}},
                [4] = {pos = {x = 401, y = -1.66, z = 401}, rot = {x = 0, y = 0, z = 0}}
        },
        --破盾
        [28014] = 
        {
                [1] = {pos = {x = 399, y = -1.66, z = 399}, rot = {x = 0, y = 0, z = 0}},
                [2] = {pos = {x = 399, y = -1.66, z = 401}, rot = {x = 0, y = 0, z = 0}},
                [3] = {pos = {x = 401, y = -1.66, z = 399}, rot = {x = 0, y = 0, z = 0}},
                [4] = {pos = {x = 401, y = -1.66, z = 401}, rot = {x = 0, y = 0, z = 0}}
        },
        --激化感电落雷
        [28015] = 
        {
                [1] = {pos = {x = 399, y = -1.66, z = 399}, rot = {x = 0, y = 0, z = 0}},
                [2] = {pos = {x = 399, y = -1.66, z = 401}, rot = {x = 0, y = 0, z = 0}},
                [3] = {pos = {x = 401, y = -1.66, z = 399}, rot = {x = 0, y = 0, z = 0}},
                [4] = {pos = {x = 401, y = -1.66, z = 401}, rot = {x = 0, y = 0, z = 0}}
        },  
        --激化感电落雷      
        [28016] = 
        {
                [1] = {pos = {x = 399, y = -1.66, z = 399}, rot = {x = 0, y = 0, z = 0}},
                [2] = {pos = {x = 399, y = -1.66, z = 401}, rot = {x = 0, y = 0, z = 0}},
                [3] = {pos = {x = 401, y = -1.66, z = 399}, rot = {x = 0, y = 0, z = 0}},
                [4] = {pos = {x = 401, y = -1.66, z = 401}, rot = {x = 0, y = 0, z = 0}}
        },
        --冲击波
        [28017] = 
        {
                [1] = {pos = {x = 399, y = -1.66, z = 399}, rot = {x = 0, y = 0, z = 0}},
                [2] = {pos = {x = 399, y = -1.66, z = 401}, rot = {x = 0, y = 0, z = 0}},
                [3] = {pos = {x = 401, y = -1.66, z = 399}, rot = {x = 0, y = 0, z = 0}},
                [4] = {pos = {x = 401, y = -1.66, z = 401}, rot = {x = 0, y = 0, z = 0}}
        },   
        --冲击波     
        [28018] = 
        {
                [1] = {pos = {x = 399, y = -1.66, z = 399}, rot = {x = 0, y = 0, z = 0}},
                [2] = {pos = {x = 399, y = -1.66, z = 401}, rot = {x = 0, y = 0, z = 0}},
                [3] = {pos = {x = 401, y = -1.66, z = 399}, rot = {x = 0, y = 0, z = 0}},
                [4] = {pos = {x = 401, y = -1.66, z = 401}, rot = {x = 0, y = 0, z = 0}}
        },
  },

  --每个小活动关卡Group列表
  group_list = 
  {
    [28001] = 251008004,
    [28002] = 251008004,
    [28003] = 251008012,
    [28004] = 251008012,
    [28005] = 251008002,
    [28006] = 251008002,
    [28007] = 251008006,
    [28008] = 251008006,
    [28009] = 251008011,
    [28010] = 251008011,
    [28011] = 251008001,
    [28012] = 251008001,
    [28013] = 251008008,
    [28014] = 251008008,
    [28015] = 251008009,
    [28016] = 251008009,
    [28017] = 251008010,
    [28018] = 251008010,
  }
}

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
	{ config_id = 7002, gadget_id = 70320010, pos = { x = 400.000, y = -5.123, z = 400.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- Group视距保持
	{ config_id = 7001, shape = RegionShape.SPHERE, radius = 800, pos = { x = 499.224, y = 0.500, z = 467.758 } }
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
		monsters = { },
		gadgets = { 7002 },
		regions = { 7001 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V3_2/CharAmuse_Main"