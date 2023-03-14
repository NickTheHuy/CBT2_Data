--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 562001, monster_id = 28020102, pos = { x = 861.7, y = 245.6, z = 1016.6 }, rot = { x = 0.0, y = 252.3, z = 0.0 }, level = 24, drop_tag = "走兽" },
	{ config_id = 562002, monster_id = 28030402, pos = { x = 842.4, y = 247.6, z = 1024.8 }, rot = { x = 3.4, y = 327.1, z = 5.2 }, level = 24, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 562003, monster_id = 28030402, pos = { x = 853.7, y = 245.9, z = 1013.9 }, rot = { x = 0.0, y = 101.4, z = 0.0 }, level = 24, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 562004, monster_id = 28030402, pos = { x = 852.0, y = 246.6, z = 1017.3 }, rot = { x = 0.0, y = 325.7, z = 0.0 }, level = 24, drop_tag = "鸟类", pose_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
		monsters = { 562001, 562002, 562003, 562004 },
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
