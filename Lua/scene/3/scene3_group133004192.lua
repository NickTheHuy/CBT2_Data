--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1116, gadget_id = 70220024, pos = { x = 2551.8, y = 217.5, z = -434.4 }, rot = { x = 0.0, y = 39.2, z = 0.0 }, level = 20, isOneoff = true },
	{ config_id = 1117, gadget_id = 70500000, pos = { x = 2553.6, y = 220.0, z = -432.8 }, rot = { x = 0.0, y = 36.4, z = 0.0 }, level = 20, point_type = 4001001, isOneoff = true }
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
		monsters = { },
		gadgets = { 1116, 1117 },
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
