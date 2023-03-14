--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 107, monster_id = 21030301, pos = { x = 2590.0, y = 249.3, z = 121.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 108, monster_id = 21010701, pos = { x = 2592.9, y = 248.5, z = 125.4 }, rot = { x = 0.0, y = 225.7, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 109, monster_id = 21010701, pos = { x = 2588.5, y = 249.3, z = 124.8 }, rot = { x = 0.0, y = 122.9, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 246, gadget_id = 70220013, pos = { x = 2594.5, y = 248.5, z = 120.1 }, rot = { x = 0.0, y = 151.5, z = 0.0 }, level = 23 },
	{ config_id = 247, gadget_id = 70220013, pos = { x = 2584.4, y = 249.3, z = 132.8 }, rot = { x = 0.0, y = 19.7, z = 0.0 }, level = 23 },
	{ config_id = 248, gadget_id = 70220005, pos = { x = 2595.0, y = 248.5, z = 122.6 }, rot = { x = 0.0, y = 359.1, z = 0.0 }, level = 23 },
	{ config_id = 249, gadget_id = 70220005, pos = { x = 2593.3, y = 248.5, z = 122.6 }, rot = { x = 0.0, y = 285.8, z = 0.0 }, level = 23 },
	{ config_id = 250, gadget_id = 70310006, pos = { x = 2590.3, y = 249.3, z = 123.5 }, rot = { x = 0.0, y = 160.4, z = 0.0 }, level = 23, state = GadgetState.GearStart }
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
		monsters = { 107, 108, 109 },
		gadgets = { 246, 247, 248, 249, 250 },
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