--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 189001, monster_id = 28030401, pos = { x = -1004.4, y = 256.7, z = 1101.2 }, rot = { x = 353.6, y = 76.2, z = 352.5 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 189002, monster_id = 28030401, pos = { x = -1006.7, y = 255.3, z = 1097.5 }, rot = { x = 351.1, y = 0.9, z = 4.3 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 189003, monster_id = 28030401, pos = { x = -1003.1, y = 255.5, z = 1093.9 }, rot = { x = 358.8, y = 303.6, z = 9.8 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 189004, monster_id = 28030401, pos = { x = -1002.8, y = 256.0, z = 1097.6 }, rot = { x = 5.2, y = 148.1, z = 351.6 }, level = 32, drop_tag = "鸟类" },
	{ config_id = 189005, monster_id = 28030402, pos = { x = -1005.5, y = 255.3, z = 1095.4 }, rot = { x = 350.7, y = 359.8, z = 7.2 }, level = 32, drop_tag = "鸟类" }
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
		monsters = { 189001, 189002, 189003, 189004, 189005 },
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