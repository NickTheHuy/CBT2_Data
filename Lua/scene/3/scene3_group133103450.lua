--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 450002, monster_id = 21010201, pos = { x = 455.5, y = 216.0, z = 1051.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "丘丘人" },
	{ config_id = 450003, monster_id = 21010201, pos = { x = 458.7, y = 216.2, z = 1056.1 }, rot = { x = 0.0, y = 178.4, z = 0.0 }, level = 19, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 450001, gadget_id = 70210063, pos = { x = 457.5, y = 216.0, z = 1053.7 }, rot = { x = 4.6, y = 260.8, z = 354.8 }, level = 19, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		monsters = { 450002, 450003 },
		gadgets = { 450001 },
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
