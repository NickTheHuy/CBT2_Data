--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 438, monster_id = 28010201, pos = { x = 1771.9, y = 250.8, z = -808.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "采集动物" },
	{ config_id = 439, monster_id = 28010201, pos = { x = 1735.9, y = 257.0, z = -823.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "采集动物" },
	{ config_id = 440, monster_id = 28010201, pos = { x = 1743.3, y = 262.1, z = -856.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "采集动物" }
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
		monsters = { 438, 439, 440 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
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
