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
	{ config_id = 931, gadget_id = 70211101, pos = { x = 2154.4, y = 210.3, z = -13.4 }, rot = { x = 0.0, y = 195.0, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 932, gadget_id = 70211101, pos = { x = 2055.5, y = 219.6, z = -44.5 }, rot = { x = 1.8, y = 13.3, z = 350.4 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 933, gadget_id = 70211101, pos = { x = 2336.5, y = 233.1, z = -80.0 }, rot = { x = 9.3, y = 13.3, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 934, gadget_id = 70211101, pos = { x = 2352.0, y = 248.0, z = -87.0 }, rot = { x = 9.3, y = 13.3, z = 0.0 }, level = 20, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true }
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
		gadgets = { 931, 932, 933, 934 },
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
