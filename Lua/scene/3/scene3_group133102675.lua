--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 675001, monster_id = 28010301, pos = { x = 1362.9, y = 200.1, z = 928.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 675002, monster_id = 28010301, pos = { x = 1379.9, y = 201.2, z = 938.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 675003, monster_id = 28010301, pos = { x = 1384.0, y = 201.5, z = 935.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 675004, monster_id = 28010301, pos = { x = 1383.0, y = 201.2, z = 937.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "采集动物" },
	{ config_id = 675005, monster_id = 28010301, pos = { x = 1381.7, y = 200.8, z = 940.3 }, rot = { x = 0.0, y = 203.3, z = 0.0 }, level = 19, drop_tag = "采集动物" }
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
		monsters = { 675001, 675002, 675003, 675004, 675005 },
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