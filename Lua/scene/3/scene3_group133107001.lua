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
	{ config_id = 1, npc_id = 1205, pos = { x = 1282.7, y = 204.7, z = 251.8 }, rot = { x = 0.0, y = 72.7, z = 0.0 }, pointID = 72 },
	{ config_id = 2, npc_id = 1206, pos = { x = -10.5, y = 271.9, z = 253.6 }, rot = { x = 0.0, y = 19.6, z = 0.0 }, pointID = 73 },
	{ config_id = 3, npc_id = 1207, pos = { x = 762.5, y = 409.6, z = 1472.1 }, rot = { x = 0.0, y = 33.1, z = 0.0 }, pointID = 74 },
	{ config_id = 4, npc_id = 1208, pos = { x = -345.7, y = 286.5, z = 987.6 }, rot = { x = 356.8, y = 24.7, z = 358.5 }, pointID = 75 }
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
		npcs = { 1, 2, 3, 4 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================
