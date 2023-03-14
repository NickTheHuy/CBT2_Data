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
	{ config_id = 384001, npc_id = 2206, pos = { x = 902.2, y = 212.9, z = 315.6 }, rot = { x = 0.0, y = 102.5, z = 0.0 } },
	{ config_id = 384002, npc_id = 2200, pos = { x = 932.8, y = 212.8, z = 339.1 }, rot = { x = 0.0, y = 70.8, z = 0.0 } },
	{ config_id = 384003, npc_id = 2207, pos = { x = 939.0, y = 212.8, z = 340.9 }, rot = { x = 0.0, y = 49.4, z = 0.0 } },
	{ config_id = 384004, npc_id = 2201, pos = { x = 942.4, y = 201.9, z = 400.7 }, rot = { x = 0.0, y = 43.8, z = 0.0 } },
	{ config_id = 384005, npc_id = 2204, pos = { x = 889.3, y = 255.6, z = 324.9 }, rot = { x = 0.0, y = 222.8, z = 0.0 } },
	{ config_id = 384007, npc_id = 2209, pos = { x = 925.1, y = 208.0, z = 310.8 }, rot = { x = 0.0, y = 233.8, z = 0.0 } },
	{ config_id = 384008, npc_id = 2202, pos = { x = 927.4, y = 259.0, z = 364.3 }, rot = { x = 0.0, y = 42.7, z = 0.0 } },
	{ config_id = 384009, npc_id = 2208, pos = { x = 910.8, y = 259.7, z = 346.5 }, rot = { x = 0.0, y = 282.8, z = 0.0 } },
	{ config_id = 384010, npc_id = 2203, pos = { x = 898.6, y = 259.0, z = 367.2 }, rot = { x = 0.0, y = 50.7, z = 0.0 } },
	{ config_id = 384011, npc_id = 2205, pos = { x = 958.7, y = 208.3, z = 346.5 }, rot = { x = 0.0, y = 81.5, z = 0.0 } },
	{ config_id = 384014, npc_id = 2409, pos = { x = 217.4, y = 230.4, z = 494.3 }, rot = { x = 0.0, y = 292.3, z = 0.0 } }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 384001, 384002, 384003, 384004, 384005, 384007, 384008, 384009, 384010, 384011, 384014 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================
