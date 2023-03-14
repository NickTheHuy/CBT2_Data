--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 173001, monster_id = 28030401, pos = { x = -294.3, y = 230.0, z = 1197.2 }, rot = { x = 2.8, y = 75.6, z = 359.7 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 173002, monster_id = 28030401, pos = { x = -296.7, y = 229.9, z = 1193.4 }, rot = { x = 0.4, y = 1.0, z = 357.2 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 173003, monster_id = 28030401, pos = { x = -293.1, y = 230.0, z = 1189.8 }, rot = { x = 357.9, y = 303.5, z = 358.1 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 173004, monster_id = 28030401, pos = { x = -292.8, y = 229.9, z = 1193.5 }, rot = { x = 1.1, y = 148.3, z = 2.6 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 173005, monster_id = 28030402, pos = { x = -295.5, y = 229.8, z = 1191.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "鸟类" }
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
		monsters = { 173001, 173002, 173003, 173004, 173005 },
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
