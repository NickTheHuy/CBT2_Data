--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 467001, monster_id = 20030201, pos = { x = 1383.6, y = 205.2, z = 621.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "雷萤" },
	{ config_id = 467002, monster_id = 20030201, pos = { x = 1378.3, y = 205.2, z = 621.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "雷萤" },
	{ config_id = 467003, monster_id = 20030201, pos = { x = 1378.1, y = 205.2, z = 615.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "雷萤" },
	{ config_id = 467004, monster_id = 20030201, pos = { x = 1382.8, y = 205.2, z = 614.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "雷萤" }
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
		monsters = { 467001, 467002, 467003, 467004 },
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