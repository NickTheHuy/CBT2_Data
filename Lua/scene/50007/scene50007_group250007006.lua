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
	{ config_id = 16, gadget_id = 70900281, pos = { x = -226.7, y = -11.0, z = -289.4 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 17, gadget_id = 70900281, pos = { x = -227.3, y = -11.0, z = -295.8 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 18, gadget_id = 70900281, pos = { x = -227.3, y = -10.0, z = -295.8 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 19, gadget_id = 70900281, pos = { x = -227.4, y = -11.1, z = -302.8 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 20, gadget_id = 70900281, pos = { x = -227.4, y = -10.1, z = -302.8 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 21, gadget_id = 70900281, pos = { x = -227.4, y = -9.1, z = -302.8 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 22, gadget_id = 70900281, pos = { x = -226.4, y = -11.0, z = -309.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 23, gadget_id = 70900281, pos = { x = -226.4, y = -10.0, z = -309.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 24, gadget_id = 70900281, pos = { x = -226.4, y = -9.0, z = -309.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 },
	{ config_id = 25, gadget_id = 70900281, pos = { x = -226.5, y = -7.8, z = -309.5 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1 }
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
	rand_suite = false,
	npcs = { }
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
		gadgets = { 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 },
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
