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
	{ config_id = 326001, gadget_id = 70900340, pos = { x = 1638.9, y = 228.9, z = -509.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10 },
	{ config_id = 326002, gadget_id = 70900340, pos = { x = 1619.0, y = 229.6, z = -518.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10 },
	{ config_id = 326003, gadget_id = 70900340, pos = { x = 1617.0, y = 228.8, z = -500.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 10 }
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
		monsters = { },
		gadgets = { 326001, 326002, 326003 },
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