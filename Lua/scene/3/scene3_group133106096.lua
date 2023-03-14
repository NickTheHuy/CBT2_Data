--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 96001, monster_id = 21020201, pos = { x = -251.3, y = 197.7, z = 1071.6 }, rot = { x = 0.0, y = 304.1, z = 0.0 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true },
	{ config_id = 96002, monster_id = 21010201, pos = { x = -247.9, y = 197.5, z = 1071.4 }, rot = { x = 0.0, y = 307.7, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 96003, monster_id = 21010201, pos = { x = -250.8, y = 197.3, z = 1068.1 }, rot = { x = 0.0, y = 309.4, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true }
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
		monsters = { 96001, 96002, 96003 },
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