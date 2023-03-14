require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.VoicePattern
local TalkModeData = NpcConfigCommon.TalkMode
local NPCConfig={}

NPCConfig.Data =
{
	NpcId = 1409, --塞琉斯 男 冒险家协会蒙德分部会长
	--SOLO为单人对话，TALK为多人对话
	Pattern =PatternData.SOLO,
	--BUBBLE为气泡，VOICE为语音，BOTH为都播，NO为都不播
	TalkMode=TalkModeData.BOTH,
	--当未进行单独配置时默认的气泡持续时间
	BubbleTime=5,
	--当未进行单独配置时默认的气泡随机间隔
	BubbleInterval={20,30},
	--随机选择一条进行播放
	DialogData={
		{Id=1016140900,Mode=TalkModeData.BOTH,BubbleTime=3.0,BubbleInterval={20,30}},
		{Id=1016140901,Mode=TalkModeData.BOTH,BubbleTime=2.1,BubbleInterval={20,30}},
		{Id=1016140902,Mode=TalkModeData.BOTH,BubbleTime=2.4,BubbleInterval={20,30}},
	},
}

return NPCConfig