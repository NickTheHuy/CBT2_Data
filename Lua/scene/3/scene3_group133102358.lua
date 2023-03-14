--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 358001, monster_id = 21010101, pos = { x = 1268.0, y = 200.2, z = -155.2 }, rot = { x = 8.8, y = 44.4, z = 358.7 }, level = 13, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 358002, monster_id = 21010101, pos = { x = 1270.8, y = 200.2, z = -153.3 }, rot = { x = 0.2, y = 261.2, z = 7.2 }, level = 13, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 358003, gadget_id = 70310004, pos = { x = 1269.6, y = 200.1, z = -154.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
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
		monsters = { 358001, 358002 },
		gadgets = { 358003 },
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