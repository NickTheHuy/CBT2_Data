--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1131, monster_id = 20010301, pos = { x = 1544.9, y = 256.6, z = -1688.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "史莱姆" },
	{ config_id = 1132, monster_id = 20010301, pos = { x = 1551.8, y = 256.7, z = -1685.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "史莱姆" }
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
		-- description = ,
		monsters = { 1131, 1132 },
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
