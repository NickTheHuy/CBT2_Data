local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("OpenTreasure02",baseClass)
local self = UAutoLuaTestCase
UAutoLuaTestCase.TestFixture = "OpenTreasure02"
UAutoLuaTestCase.Category = "交互机关"
self.Description="开启02类型宝箱"
self.Order=702
-- UAutoLuaTestCase.SetUp = {
-- 	Order = 0.1,
-- 	Type = CaseType.MonoTest,
-- 	Description="初始化",
-- 	Action = UAutoCoroutine(function()
-- 		--yield_return(self:FinishAllNoob())
-- 	end)
-- }

self.FindTreasure03 = {
	Order = 1,
	Type = CaseType.MonoTest,
	Description="瞬移到(2316.558 218.1997 -1111.945)找到02类型宝箱",
	Action = UAutoCoroutine(function()
		yield_return(self.base:TelePort(CS.UnityEngine.Vector3(2316.558, 218.1997, -1111.945)))
		yield_return(self.base:RunGM("KILL MONSTER ALL"))
		yield_return(self.base:WaitFoundNearByEntityByName("TreasureBox02",function(result) self.Treasurebox = result end, 20.0, 200.0))
		yield_return(self.base:MoveToPosition(self.Treasurebox.transform.position,60,2))
	end)
}


self.OpenTreasure03 = {
	Order = 4,
	Type = CaseType.MonoTest,
	Description="开启宝箱",
	Action = UAutoCoroutine(function ()
		yield_return(self:WaitTalk(0))
	end)
}

self.WaitTreasureBoxDisappear = {
	Order = 4.1,
	Type = CaseType.MonoTest,
	Description="验证宝箱开启后消失",
	Action = UAutoCoroutine(function ()
		local timeout=10
		while self.Treasurebox.gameObject~=nil do
			timeout=timeout-1
			yield_return(CS.UnityEngine.WaitForSeconds(1))
			assert(timeout>0,"宝箱没有在10s内消失")
		end
	end)
}


return self