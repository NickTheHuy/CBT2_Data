--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 163001, monster_id = 28030401, pos = { x = -863.6, y = 215.6, z = 661.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 163002, monster_id = 28030401, pos = { x = -866.0, y = 217.4, z = 657.1 }, rot = { x = 0.0, y = 285.4, z = 0.0 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 163003, monster_id = 28030401, pos = { x = -862.4, y = 219.0, z = 653.5 }, rot = { x = 0.0, y = 227.9, z = 0.0 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 163004, monster_id = 28030401, pos = { x = -862.1, y = 217.1, z = 657.3 }, rot = { x = 0.0, y = 72.6, z = 0.0 }, level = 32, drop_tag = "鸟类" }
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
		monsters = { 163001, 163002, 163003, 163004 },
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
