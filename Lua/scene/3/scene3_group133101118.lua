--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 118001, monster_id = 20010801, pos = { x = 1381.5, y = 209.5, z = 1105.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "史莱姆" },
	{ config_id = 118002, monster_id = 20010801, pos = { x = 1386.0, y = 209.5, z = 1104.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "史莱姆" },
	{ config_id = 118003, monster_id = 20010801, pos = { x = 1393.4, y = 209.5, z = 1106.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "史莱姆" }
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
		monsters = { 118001, 118002, 118003 },
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