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
	{ config_id = 1375, gadget_id = 70310001, pos = { x = 2663.5, y = 220.8, z = -476.6 }, rot = { x = 0.0, y = 282.9, z = 0.0 }, level = 20, state = GadgetState.GearStart },
	{ config_id = 1376, gadget_id = 70310001, pos = { x = 2669.4, y = 222.6, z = -476.8 }, rot = { x = 0.0, y = 264.3, z = 0.0 }, level = 20, state = GadgetState.GearStart },
	{ config_id = 1378, gadget_id = 70310001, pos = { x = 2679.5, y = 240.8, z = -440.9 }, rot = { x = 0.0, y = 346.8, z = 0.0 }, level = 20, state = GadgetState.GearStart },
	{ config_id = 1379, gadget_id = 70310001, pos = { x = 2669.3, y = 246.3, z = -441.8 }, rot = { x = 0.0, y = 76.0, z = 0.0 }, level = 20, state = GadgetState.GearStart }
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
		gadgets = { 1375, 1376, 1378 },
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
