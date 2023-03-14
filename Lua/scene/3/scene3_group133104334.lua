--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 334001, monster_id = 21010601, pos = { x = 492.6, y = 198.2, z = 310.4 }, rot = { x = 0.0, y = 36.6, z = 0.0 }, level = 17, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 334002, monster_id = 21010101, pos = { x = 496.7, y = 197.9, z = 307.8 }, rot = { x = 0.0, y = 11.9, z = 0.0 }, level = 17, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 },
	{ config_id = 334004, monster_id = 21010101, pos = { x = 490.7, y = 199.4, z = 304.4 }, rot = { x = 0.0, y = 326.1, z = 0.0 }, level = 17, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 }
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
		monsters = { 334001, 334002, 334004 },
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
