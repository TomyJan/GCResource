-- 地图配置
scene_config = {
	begin_pos = { x = -2048.0, z = -2048.0 },
	size = { x = 3072.0, z = 3072.0 },
	born_pos = { x = 791.353, y = 131.196, z = 723.572 },
	born_rot = { x = 0.000, y = 241.741, z = 0.000 },
	die_y = -20,
	vision_anchor = { x = -3000.0, z = -3000.0 }
}

-- 所有的区块
blocks = { 1, 2, 3, 4 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = 0.0, z = 0.0 }, max = { x = 1024.0, z = 1024.0 } },
	{ min = { x = 0.0, z = -1024.0 }, max = { x = 1024.0, z = 0.0 } },
	{ min = { x = -1024.0, z = 0.0 }, max = { x = 0.0, z = 1024.0 } },
	{ min = { x = -1024.0, z = -1024.0 }, max = { x = 0.0, z = 0.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { }