--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 967, monster_id = 21010101, pos = { x = 2769.0, y = 274.5, z = -1457.8 }, rot = { x = 0.0, y = 5.6, z = 0.0 }, level = 19, drop_tag = "丘丘人", pose_id = 9002 },
	{ config_id = 968, monster_id = 21010101, pos = { x = 2769.5, y = 274.6, z = -1460.2 }, rot = { x = 0.0, y = 58.6, z = 0.0 }, level = 19, drop_tag = "丘丘人", pose_id = 9002 }
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
		monsters = { 967, 968 },
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