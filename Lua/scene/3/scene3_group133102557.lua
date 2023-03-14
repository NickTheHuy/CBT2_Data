--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 557001, monster_id = 28030401, pos = { x = 1247.1, y = 200.7, z = 910.6 }, rot = { x = 0.0, y = 146.7, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 557002, monster_id = 28030401, pos = { x = 1250.9, y = 200.5, z = 906.8 }, rot = { x = 0.0, y = 303.9, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 557003, monster_id = 28030401, pos = { x = 1248.0, y = 200.5, z = 904.3 }, rot = { x = 0.0, y = 343.4, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 557004, monster_id = 28030401, pos = { x = 1247.6, y = 200.6, z = 907.9 }, rot = { x = 0.0, y = 276.2, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 2 }
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
		monsters = { 557001, 557002, 557003, 557004 },
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