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
	{ config_id = 452001, gadget_id = 70500000, pos = { x = 901.1, y = 261.1, z = 350.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 9047, isOneoff = true },
	{ config_id = 452002, gadget_id = 70500000, pos = { x = 937.3, y = 213.5, z = 347.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 9059, isOneoff = true }
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
		gadgets = { 452001, 452002 },
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