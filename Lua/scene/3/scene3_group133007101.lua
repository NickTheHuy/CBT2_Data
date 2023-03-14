--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 159, monster_id = 20011001, pos = { x = 2144.7, y = 226.3, z = 29.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, drop_tag = "史莱姆" },
	{ config_id = 160, monster_id = 20011001, pos = { x = 2148.1, y = 226.4, z = 24.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 20, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 387, gadget_id = 70211102, pos = { x = 2149.2, y = 226.3, z = 28.5 }, rot = { x = 0.0, y = 243.4, z = 0.0 }, level = 18, drop_tag = "解谜低级蒙德", isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 55, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2145.8, y = 226.6, z = 29.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_55", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_55", action = "action_EVENT_ENTER_REGION_55", tlog_tag = "风龙_101_伏击_触发" },
	{ name = "ANY_MONSTER_DIE_56", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_56", action = "action_EVENT_ANY_MONSTER_DIE_56", tlog_tag = "风龙_101_伏击_成功" }
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
		gadgets = { 387 },
		regions = { 55 },
		triggers = { "ENTER_REGION_55", "ANY_MONSTER_DIE_56" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_55(context, evt)
	if evt.param1 ~= 55 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_55(context, evt)
	-- 将configid为 387 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 387, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 159, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 160, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_56(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_56(context, evt)
	-- 将configid为 387 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 387, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
