--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 387001, monster_id = 28030401, pos = { x = 310.0, y = 195.2, z = 1458.7 }, rot = { x = 0.0, y = 266.4, z = 0.0 }, level = 24, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 387002, monster_id = 28030401, pos = { x = 310.6, y = 195.2, z = 1462.8 }, rot = { x = 0.0, y = 130.8, z = 0.0 }, level = 24, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 387003, monster_id = 28030401, pos = { x = 314.4, y = 195.2, z = 1463.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 387004, monster_id = 28030401, pos = { x = 312.6, y = 195.2, z = 1460.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "鸟类", pose_id = 2 }
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
		monsters = { 387001, 387002, 387003, 387004 },
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
