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
	{ config_id = 345001, gadget_id = 70220013, pos = { x = 63.3, y = 270.3, z = 92.7 }, rot = { x = 0.0, y = 334.0, z = 0.0 }, level = 19 },
	{ config_id = 345002, gadget_id = 70220013, pos = { x = 53.7, y = 270.3, z = 96.4 }, rot = { x = 0.0, y = 110.3, z = 0.0 }, level = 19 },
	{ config_id = 345003, gadget_id = 70220026, pos = { x = 60.8, y = 270.2, z = 76.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 345004, gadget_id = 70220026, pos = { x = 59.5, y = 270.1, z = 78.0 }, rot = { x = 0.0, y = 187.2, z = 0.0 }, level = 19 },
	{ config_id = 345005, gadget_id = 70220014, pos = { x = 61.0, y = 270.1, z = 78.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 }
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
		gadgets = { 345001, 345002, 345003, 345004, 345005 },
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
