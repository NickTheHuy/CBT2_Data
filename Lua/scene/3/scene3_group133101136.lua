--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 136001, monster_id = 25040201, pos = { x = 1315.6, y = 214.8, z = 1083.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 23, drop_tag = "盗宝团" },
	{ config_id = 136002, monster_id = 25010201, pos = { x = 1313.1, y = 214.9, z = 1084.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 23, drop_tag = "盗宝团" }
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
		monsters = { 136001, 136002 },
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
