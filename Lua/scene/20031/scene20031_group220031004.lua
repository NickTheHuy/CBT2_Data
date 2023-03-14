--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 20011401, pos = { x = 110.8, y = 39.5, z = 122.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4002, monster_id = 20011401, pos = { x = 109.0, y = 39.6, z = 118.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4003, monster_id = 20011401, pos = { x = 71.1, y = 39.5, z = 124.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4004, monster_id = 20011401, pos = { x = 73.2, y = 39.5, z = 116.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4005, monster_id = 20011401, pos = { x = 113.7, y = 39.4, z = 119.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 4006, monster_id = 21010901, pos = { x = 33.0, y = 42.0, z = 120.2 }, rot = { x = 0.0, y = 226.5, z = 0.0 }, level = 1, pose_id = 32 },
	{ config_id = 4007, monster_id = 20011401, pos = { x = 147.6, y = 39.5, z = 124.0 }, rot = { x = 0.0, y = 265.5, z = 0.0 }, level = 1 },
	{ config_id = 4008, monster_id = 20011401, pos = { x = 147.4, y = 39.5, z = 118.1 }, rot = { x = 0.0, y = 274.2, z = 0.0 }, level = 1 }
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
		monsters = { 4001, 4002, 4003, 4004, 4005, 4006, 4007, 4008 },
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
