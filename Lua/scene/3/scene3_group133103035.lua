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
	{ config_id = 156, gadget_id = 70310001, pos = { x = 593.0, y = 362.0, z = 1850.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, state = GadgetState.GearStart },
	{ config_id = 157, gadget_id = 70220013, pos = { x = 598.2, y = 361.6, z = 1850.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 158, gadget_id = 70220014, pos = { x = 596.2, y = 362.0, z = 1850.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 }
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
		gadgets = { 156, 157, 158 },
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