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
	{ config_id = 1583, gadget_id = 70210101, pos = { x = 1954.2, y = 219.3, z = -958.0 }, rot = { x = 0.0, y = 323.4, z = 0.0 }, level = 10, drop_tag = "搜刮点解谜通用蒙德" },
	{ config_id = 1584, gadget_id = 70210101, pos = { x = 1917.6, y = 224.6, z = -939.2 }, rot = { x = 0.0, y = 323.4, z = 0.0 }, level = 10, drop_tag = "搜刮点解谜通用蒙德" },
	{ config_id = 1585, gadget_id = 70210101, pos = { x = 1916.5, y = 224.1, z = -887.0 }, rot = { x = 0.0, y = 323.4, z = 0.0 }, level = 10, drop_tag = "搜刮点解谜通用蒙德" },
	{ config_id = 1586, gadget_id = 70210101, pos = { x = 1931.0, y = 219.8, z = -877.3 }, rot = { x = 0.0, y = 323.4, z = 0.0 }, level = 10, drop_tag = "搜刮点解谜通用蒙德" },
	{ config_id = 1587, gadget_id = 70210101, pos = { x = 1940.8, y = 219.9, z = -874.7 }, rot = { x = 0.0, y = 323.4, z = 0.0 }, level = 10, drop_tag = "搜刮点解谜通用蒙德" },
	{ config_id = 1588, gadget_id = 70210101, pos = { x = 1922.2, y = 206.2, z = -769.9 }, rot = { x = 0.0, y = 323.4, z = 0.0 }, level = 10, drop_tag = "搜刮点解谜通用蒙德" },
	{ config_id = 1589, gadget_id = 70210101, pos = { x = 1924.6, y = 210.3, z = -706.6 }, rot = { x = 0.0, y = 323.4, z = 0.0 }, level = 10, drop_tag = "搜刮点解谜通用蒙德" },
	{ config_id = 1600, gadget_id = 70210101, pos = { x = 1908.6, y = 227.9, z = -870.1 }, rot = { x = 0.0, y = 323.4, z = 0.0 }, level = 10, drop_tag = "搜刮点解谜通用蒙德" }
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
		gadgets = { 1583, 1584, 1585, 1586, 1587, 1588, 1589, 1600 },
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
