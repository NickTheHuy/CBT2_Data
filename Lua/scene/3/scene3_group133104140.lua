--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 347, monster_id = 21010101, pos = { x = 743.8, y = 201.2, z = 317.2 }, rot = { x = 0.0, y = 167.0, z = 0.0 }, level = 17, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 348, monster_id = 21010101, pos = { x = 742.8, y = 201.3, z = 316.7 }, rot = { x = 341.0, y = 124.3, z = 20.2 }, level = 17, drop_tag = "丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 140001, gadget_id = 70220003, pos = { x = 744.3, y = 201.5, z = 314.2 }, rot = { x = 359.4, y = 346.2, z = 2.2 }, level = 19 }
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
		monsters = { 347, 348 },
		gadgets = { 140001 },
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
