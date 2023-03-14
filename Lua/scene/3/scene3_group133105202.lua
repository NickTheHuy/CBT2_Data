--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 202001, monster_id = 28030402, pos = { x = 648.4, y = 200.8, z = -22.2 }, rot = { x = 0.0, y = 81.9, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 202002, monster_id = 28030402, pos = { x = 652.0, y = 201.1, z = -25.9 }, rot = { x = 0.0, y = 99.4, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 202003, monster_id = 28030402, pos = { x = 650.5, y = 200.8, z = -22.0 }, rot = { x = 0.0, y = 71.2, z = 0.0 }, level = 19, drop_tag = "鸟类" },
	{ config_id = 202004, monster_id = 28030402, pos = { x = 651.0, y = 201.1, z = -25.5 }, rot = { x = 0.0, y = 129.3, z = 0.0 }, level = 19, drop_tag = "鸟类" }
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
		monsters = { 202001, 202002, 202003, 202004 },
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