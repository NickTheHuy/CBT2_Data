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
	{ config_id = 238002, npc_id = 20056, pos = { x = -653.5, y = 212.3, z = 1283.8 }, rot = { x = 0.0, y = 5.3, z = 0.0 } }
}

-- 装置
gadgets = {
	{ config_id = 238001, gadget_id = 70290020, pos = { x = -653.5, y = 213.5, z = 1283.6 }, rot = { x = 21.2, y = 6.5, z = 0.0 }, level = 32 }
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
		gadgets = { 238001 },
		regions = { },
		triggers = { },
		npcs = { 238002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================
