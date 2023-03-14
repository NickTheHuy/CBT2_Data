--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 166, monster_id = 20011201, pos = { x = 75.2, y = 0.0, z = -20.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 167, monster_id = 20011201, pos = { x = 74.7, y = 0.0, z = -24.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true },
	{ config_id = 168, monster_id = 20011201, pos = { x = 72.1, y = 0.0, z = -24.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, disableWander = true }
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
	rand_suite = true,
	npcs = { }
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
		monsters = { 166, 167, 168 },
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
