--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 242002, monster_id = 28030101, pos = { x = 625.2, y = 330.5, z = -251.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 25, drop_tag = "鸟类" },
	{ config_id = 242003, monster_id = 28030101, pos = { x = 627.3, y = 330.7, z = -252.3 }, rot = { x = 0.0, y = 70.1, z = 0.0 }, level = 25, drop_tag = "鸟类" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 242001, gadget_id = 70211111, pos = { x = 630.1, y = 329.8, z = -266.1 }, rot = { x = 356.3, y = 344.2, z = 358.5 }, level = 25, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		monsters = { 242002, 242003 },
		gadgets = { 242001 },
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