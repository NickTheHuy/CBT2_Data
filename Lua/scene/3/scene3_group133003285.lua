--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 947, monster_id = 20010801, pos = { x = 2206.9, y = 235.9, z = -1404.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "史莱姆" },
	{ config_id = 948, monster_id = 20010801, pos = { x = 2213.1, y = 236.0, z = -1401.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "史莱姆" },
	{ config_id = 949, monster_id = 20010801, pos = { x = 2208.4, y = 235.8, z = -1400.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10, drop_tag = "史莱姆" }
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
		monsters = { 947, 948, 949 },
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
