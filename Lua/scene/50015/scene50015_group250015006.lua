--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22, monster_id = 21010101, pos = { x = 11.1, y = 0.5, z = 44.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, pose_id = 9013 },
	{ config_id = 23, monster_id = 21010101, pos = { x = 5.6, y = 0.5, z = 40.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, pose_id = 9013 },
	{ config_id = 24, monster_id = 21010101, pos = { x = 5.0, y = 0.5, z = 33.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, pose_id = 9013 },
	{ config_id = 25, monster_id = 21010101, pos = { x = 6.0, y = 0.5, z = 43.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 26, monster_id = 21010101, pos = { x = 7.9, y = 0.5, z = 34.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 27, monster_id = 21010101, pos = { x = 8.8, y = 0.5, z = 28.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7, gadget_id = 70300100, pos = { x = 13.5, y = 0.5, z = 39.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 8, gadget_id = 70300100, pos = { x = 12.8, y = 0.5, z = 31.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
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
		monsters = { 22, 23, 24, 25, 26, 27 },
		gadgets = { 7, 8 },
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
