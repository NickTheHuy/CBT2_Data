--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21020101, pos = { x = 0.0, y = 0.0, z = -10.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 3002, monster_id = 21010301, pos = { x = -4.0, y = 0.0, z = 10.0 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 3003, monster_id = 21010301, pos = { x = -0.1, y = 0.0, z = 10.1 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 3004, monster_id = 21010301, pos = { x = 3.9, y = 0.0, z = 9.9 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 3006, monster_id = 21010201, pos = { x = -4.0, y = 0.0, z = 11.1 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 3008, monster_id = 21010201, pos = { x = 4.0, y = 0.0, z = 11.0 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 3009, monster_id = 21020201, pos = { x = 0.0, y = 0.0, z = -12.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 3010, monster_id = 21010201, pos = { x = -0.1, y = 0.0, z = 11.2 }, rot = { x = 0.0, y = 180.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 3012, monster_id = 21020201, pos = { x = 9.9, y = 0.0, z = 0.0 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 3013, monster_id = 21010201, pos = { x = 10.0, y = 0.0, z = -2.8 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true, pose_id = 402 },
	{ config_id = 3014, monster_id = 21010201, pos = { x = 10.0, y = 0.0, z = 3.0 }, rot = { x = 0.0, y = 270.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true, pose_id = 402 },
	{ config_id = 3015, monster_id = 21020101, pos = { x = -10.0, y = 0.0, z = 0.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true },
	{ config_id = 3021, monster_id = 21010301, pos = { x = -10.0, y = 0.0, z = -3.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true, pose_id = 402 },
	{ config_id = 3038, monster_id = 21010301, pos = { x = -10.0, y = 0.0, z = 3.0 }, rot = { x = 0.0, y = 90.0, z = 0.0 }, level = 1, affix = { 1221 }, isElite = true, pose_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3005, gadget_id = 70350034, pos = { x = 0.2, y = 0.0, z = -6.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 3030, gadget_id = 70900205, pos = { x = 6.2, y = -1.2, z = 3.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_3031", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3031", action = "action_EVENT_ANY_MONSTER_LIVE_3031" },
	{ name = "ANY_MONSTER_DIE_3032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3032", action = "action_EVENT_ANY_MONSTER_DIE_3032" },
	{ name = "ANY_MONSTER_DIE_3033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3033", action = "action_EVENT_ANY_MONSTER_DIE_3033" },
	{ name = "CHALLENGE_SUCCESS_3035", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3035" },
	{ name = "CHALLENGE_FAIL_3036", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3036" }
}

-- 变量
variables = {
	{ name = "monster_wave", value = 0, no_refresh = false }
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
		gadgets = { 3030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3001, 3002, 3003, 3004 },
		gadgets = { 3005, 3030 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3031", "ANY_MONSTER_DIE_3032", "CHALLENGE_SUCCESS_3035", "CHALLENGE_FAIL_3036" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 3006, 3008, 3009, 3010 },
		gadgets = { 3005, 3030 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3033", "CHALLENGE_SUCCESS_3035", "CHALLENGE_FAIL_3036" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 3012, 3013, 3014, 3015, 3021, 3038 },
		gadgets = { 3005, 3030 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3035", "CHALLENGE_FAIL_3036" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3031(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3031(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为197的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 197, 600, 231003003, 14, 0) then
		return -1
	end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	-- 改变指定group组231003003中， configid为3005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231003003, 3005, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3032(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231003003) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3032(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231003003, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3033(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231003003) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3033(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231003003, 4)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3035(context, evt)
	-- 将剩余时间记录在触发此challenge的group变量TPL_TIME中
	    if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "TPL_TIME", evt.param2, 231003001) then
	      return -1
	    end
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 231003001) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3005 }) then
		    return -1
		end
		
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		return -1
	end
	
	-- 改变指定group组231003002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231003002, 2001, GadgetState.Default) then
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 231003002, 2001, {176}) then
		return -1
	end
	
	-- 改变指定group组231003001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231003001, 1001, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3036(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 231003003, suite = 1 }) then
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		return -1
	end
	
	return 0
end
