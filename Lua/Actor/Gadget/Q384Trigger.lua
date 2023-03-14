require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q384Trigger = class("Q384Trigger", gadgetActorProxy)

Q384Trigger.defaultAlias = "Q384Trigger"

local q384Cfg = require('Quest/Client/Q384ClientConfig')

-- local questActorProxy = require('Actor/Quest/QuestActorProxy')
-- local Questnew = class("Questnew", questActorProxy)
-- Questnew.defaultAlias = "Questnew"
-- local Quest384 = require('Quest/MQ384')

function Q384Trigger:OnPostDataPrepare()
end

function Q384Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(30, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q384Trigger:TriggerIn()
    print("Out Q384Trigger")
	local quest = actorMgr:GetActor(q384Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
    end
    self:DestroySelf()
end

function Q384Trigger:TriggerOut()
	--print("Exit " .. tostring(outCnt))
    --self:DestroySelf()
end

return Q384Trigger