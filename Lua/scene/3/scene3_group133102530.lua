--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 530001, monster_id = 28030401, pos = { x = 1080.8, y = 200.6, z = 770.8 }, rot = { x = 0.0, y = 146.7, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 530002, monster_id = 28030401, pos = { x = 1084.6, y = 200.9, z = 767.0 }, rot = { x = 0.0, y = 303.9, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 530003, monster_id = 28030401, pos = { x = 1081.7, y = 201.0, z = 764.5 }, rot = { x = 0.0, y = 343.4, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 530004, monster_id = 28030401, pos = { x = 1081.3, y = 200.8, z = 768.1 }, rot = { x = 0.0, y = 276.2, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 2 }
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
		monsters = { 530001, 530002, 530003, 530004 },
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
