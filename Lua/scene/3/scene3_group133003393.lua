--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1278, monster_id = 28030403, pos = { x = 2289.1, y = 207.7, z = -1101.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 1281, monster_id = 28030403, pos = { x = 2287.0, y = 208.0, z = -1098.7 }, rot = { x = 0.0, y = 113.7, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 1285, monster_id = 28030403, pos = { x = 2296.2, y = 207.2, z = -1101.7 }, rot = { x = 0.0, y = 254.9, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 }
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
		monsters = { 1278, 1281, 1285 },
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
