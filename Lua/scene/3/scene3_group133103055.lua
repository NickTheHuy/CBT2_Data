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
	{ config_id = 206, gadget_id = 70310006, pos = { x = 942.0, y = 319.8, z = 1586.9 }, rot = { x = 0.0, y = 13.0, z = 0.0 }, level = 24 },
	{ config_id = 208, gadget_id = 70220013, pos = { x = 944.8, y = 319.1, z = 1586.3 }, rot = { x = 0.0, y = 18.6, z = 0.0 }, level = 24 },
	{ config_id = 209, gadget_id = 70220014, pos = { x = 939.4, y = 319.8, z = 1586.8 }, rot = { x = 0.0, y = 13.0, z = 0.0 }, level = 24 }
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
		gadgets = { 206, 208, 209 },
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