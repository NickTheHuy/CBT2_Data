require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1477",
		Alias = "Npc1477",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 1009, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(1009, "Npc1477Born"), freestyle = 8010, action = PatternData.Sit, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ action = PatternData.Hide, },
				},
			},
		},
	},
}

return NPCConfig
