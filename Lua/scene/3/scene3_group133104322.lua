--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 322002, monster_id = 20010101, pos = { x = 179.3, y = 221.9, z = 328.9 }, rot = { x = 9.6, y = 358.9, z = 347.5 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 322003, monster_id = 20010101, pos = { x = 174.2, y = 223.0, z = 325.6 }, rot = { x = 6.9, y = 359.2, z = 346.6 }, level = 18, drop_tag = "史莱姆" },
	{ config_id = 322004, monster_id = 20010101, pos = { x = 176.8, y = 223.2, z = 322.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "史莱姆" }
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
		monsters = { 322002, 322003, 322004 },
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
