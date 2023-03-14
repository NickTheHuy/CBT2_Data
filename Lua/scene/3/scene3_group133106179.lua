--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 179001, monster_id = 28030401, pos = { x = -664.2, y = 220.6, z = 844.5 }, rot = { x = 2.8, y = 75.6, z = 359.7 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 179002, monster_id = 28030401, pos = { x = -666.6, y = 220.5, z = 840.6 }, rot = { x = 0.4, y = 1.0, z = 357.2 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 179003, monster_id = 28030401, pos = { x = -663.0, y = 221.2, z = 837.0 }, rot = { x = 357.9, y = 303.5, z = 358.1 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 179004, monster_id = 28030401, pos = { x = -662.7, y = 220.9, z = 840.7 }, rot = { x = 1.1, y = 148.3, z = 2.6 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 179005, monster_id = 28030402, pos = { x = -665.4, y = 220.6, z = 838.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "鸟类" }
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
		monsters = { 179001, 179002, 179003, 179004, 179005 },
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
