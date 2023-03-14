--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 751, monster_id = 28030403, pos = { x = 2012.7, y = 234.5, z = -641.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 752, monster_id = 28030403, pos = { x = 2009.4, y = 233.8, z = -641.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 753, monster_id = 28030403, pos = { x = 2011.4, y = 234.4, z = -638.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 754, monster_id = 28030403, pos = { x = 2008.8, y = 233.9, z = -639.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2082, gadget_id = 70211103, pos = { x = 1948.4, y = 266.4, z = -310.9 }, rot = { x = 0.0, y = 114.5, z = 0.0 }, level = 15, drop_tag = "解谜低级蒙德", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		monsters = { 751, 752, 753, 754 },
		gadgets = { },
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