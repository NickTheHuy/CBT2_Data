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
	{ config_id = 242, gadget_id = 70210101, pos = { x = 2711.0, y = 258.8, z = 99.8 }, rot = { x = 0.0, y = 222.4, z = 0.0 }, level = 23, drop_tag = "搜刮点解谜通用蒙德" },
	{ config_id = 243, gadget_id = 70210101, pos = { x = 2720.8, y = 249.3, z = 130.1 }, rot = { x = 0.0, y = 179.4, z = 0.0 }, level = 23, drop_tag = "搜刮点解谜通用蒙德" },
	{ config_id = 287, gadget_id = 70220014, pos = { x = 2720.7, y = 249.3, z = 129.9 }, rot = { x = 0.0, y = 303.0, z = 0.0 }, level = 23 },
	{ config_id = 288, gadget_id = 70220014, pos = { x = 2711.1, y = 258.8, z = 99.7 }, rot = { x = 0.0, y = 232.0, z = 0.0 }, level = 23 }
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
		gadgets = { 242, 243, 287, 288 },
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
