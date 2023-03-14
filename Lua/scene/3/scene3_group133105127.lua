--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 212, monster_id = 20010201, pos = { x = 1003.0, y = 251.1, z = -268.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "史莱姆" },
	{ config_id = 238, monster_id = 20010201, pos = { x = 860.1, y = 202.4, z = -2.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "史莱姆" },
	{ config_id = 239, monster_id = 20010201, pos = { x = 1048.9, y = 220.6, z = -112.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "史莱姆" },
	{ config_id = 240, monster_id = 20010201, pos = { x = 792.9, y = 263.8, z = -350.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "史莱姆" },
	{ config_id = 242, monster_id = 20010201, pos = { x = 768.6, y = 253.3, z = -168.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "史莱姆" },
	{ config_id = 243, monster_id = 20010201, pos = { x = 647.3, y = 291.8, z = -319.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "史莱姆" }
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
		monsters = { 212, 238, 239, 240, 242, 243 },
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