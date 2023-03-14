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
	{ config_id = 4, npc_id = 1479, pos = { x = 2171.2, y = 207.8, z = -1091.9 }, rot = { x = 0.0, y = 343.5, z = 0.0 } },
	{ config_id = 6, npc_id = 1255, pos = { x = 2180.6, y = 260.4, z = -1739.8 }, rot = { x = 0.0, y = 15.0, z = 0.0 } },
	{ config_id = 14, npc_id = 1553, pos = { x = 2066.4, y = 197.2, z = -1186.7 }, rot = { x = 0.0, y = 73.8, z = 0.0 } },
	{ config_id = 15, npc_id = 1589, pos = { x = 2354.8, y = 298.5, z = -1644.5 }, rot = { x = 0.0, y = 192.7, z = 0.0 } },
	{ config_id = 16, npc_id = 1591, pos = { x = 2352.7, y = 298.5, z = -1644.6 }, rot = { x = 0.0, y = 183.5, z = 0.0 } },
	{ config_id = 17, npc_id = 1581, pos = { x = 2828.3, y = 264.2, z = -1875.8 }, rot = { x = 0.0, y = 246.6, z = 0.0 } },
	{ config_id = 18, npc_id = 1583, pos = { x = 2847.2, y = 256.6, z = -1666.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 } },
	{ config_id = 19, npc_id = 1609, pos = { x = 2647.8, y = 382.5, z = -1734.4 }, rot = { x = 0.0, y = 94.5, z = 0.0 } },
	{ config_id = 20, npc_id = 1610, pos = { x = 2647.6, y = 382.5, z = -1735.3 }, rot = { x = 0.0, y = 95.6, z = 0.0 } }
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
	rand_suite = true
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = NPC,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 4, 6, 14, 15, 16, 17, 18, 19, 20 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================
