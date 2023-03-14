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
	{ config_id = 602001, gadget_id = 70360001, pos = { x = 1814.6, y = 205.8, z = 857.8 }, rot = { x = 0.0, y = 175.4, z = 0.0 }, level = 18, isOneoff = true, persistent = true },
	{ config_id = 602002, gadget_id = 70211111, pos = { x = 1814.6, y = 205.7, z = 857.6 }, rot = { x = 0.0, y = 80.3, z = 350.5 }, level = 18, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_602003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_602003", action = "action_EVENT_GADGET_CREATE_602003", trigger_count = 0 },
	{ name = "SELECT_OPTION_602004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_602004", action = "action_EVENT_SELECT_OPTION_602004" }
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
	end_suite = 2,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 602001 },
		regions = { },
		triggers = { "GADGET_CREATE_602003", "SELECT_OPTION_602004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 602002 },
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

-- 触发条件
function condition_EVENT_GADGET_CREATE_602003(context, evt)
	-- 判断是gadgetid 602001
	if 602001 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_602003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_602004(context, evt)
	if 602001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_602004(context, evt)
	-- 删除指定group： 133102602 ；指定config：602001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102602, 602001, 169) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      return -1
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133102602, suite = 2 }) then
			return -1
		end
	
	return 0
end
