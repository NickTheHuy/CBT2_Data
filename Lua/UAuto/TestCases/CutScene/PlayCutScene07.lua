
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene07",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene7"
self.Category = "CutScene" --自行修改分类
self.Description = "风龙来袭" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "风龙来袭", --步骤描述
	Action = UAutoCoroutine(function()

		yield_return(self:EnterWorldBySex())

		yield_return(self:GotoPos("2210 210 -965"))

		yield_return(self:PlayCutscene(35701,self.TestFixture))
		
	end)
}

return self
