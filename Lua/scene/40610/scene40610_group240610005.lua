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
	{ config_id = 5001, gadget_id = 70360010, pos = { x = -0.1, y = 0.2, z = 0.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_5002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5002", action = "action_EVENT_GADGET_CREATE_5002" },
	{ name = "SELECT_OPTION_5004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5004", action = "action_EVENT_SELECT_OPTION_5004", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 5001 },
		regions = { },
		triggers = { "GADGET_CREATE_5002", "SELECT_OPTION_5004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_5002(context, evt)
	if 5001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240610005, 5001, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5004(context, evt)
	-- 判断是gadgetid 5001 option_id 7
	if 5001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5004(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为30，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 240610006, {6001,6002,6003,6004,6033,6005,6006,6007,6008,6030,6012,6014,6031,6015,6009,6017,6018,6032,6019,6010,6020,6021,6022,6023,6034,6024,6025,6028,6029,6011}, 30, 5, 5) then
		return -1
	end
	
	-- 删除指定group： 240610005 ；指定config：5001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240610005, 5001, 7) then
		return -1
	end
	
	-- 改变指定group组240610005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240610005, 5001, GadgetState.GearStop) then
			return -1
		end 
	
	-- 改变指定group组240610004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240610004, 4002, GadgetState.Default) then
			return -1
		end 
	
	-- 改变指定group组240610004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240610004, 4001, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
