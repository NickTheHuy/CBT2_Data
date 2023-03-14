--baseClass提供基础接口
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
--所有testcase继承baseClass
local UAutoLuaTestCase = class("RunXinshouToMengde",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "RunXinshouToMengde"
self.Category = "PerformanceTest"
self.Description = "性能测试新手区到蒙得，隔30m打一个点"
self.Order=10001
self.StartPoint = CS.UnityEngine.Vector3(2745.816,194.6101,-1717.949)
self.recordInterval = 30.0


function self:Vector2Str(vec)
	local str = tostring(self:GetIntPart(vec.x)).."_"..tostring(self:GetIntPart(vec.y)).."_"..tostring(self:GetIntPart(vec.z))
	return str
end

self.Step1 = {
	Order = 1,
	Type = CaseType.MonoTest,
	Description = "移动到目标点",
	Action = UAutoCoroutine(function()
        -- 获取当前entity
        local entityManager = singletonManager:GetSingletonInstance("MoleMole.EntityManager")
        

		yield_return(self.base:TelePort(self.StartPoint))
        yield_return(self.base:RunGM("STAMINA INFINITE ON"))
		yield_return(self.base:RunGM("WUDI ON"))
        -- 设定角色隐身
		CS.MoleMole.GlobalVars.DebugPlayerInvisible_On = true
		local localAvatar = entityManager:GetLocalAvatarEntity()
		local startPos = localAvatar.transform.position
		local newPos = localAvatar.transform.position
		local distance = 0.0
		
		local cmd = "starttmtmsi Xinshou2Mengde_"..tostring(self:Vector2Str(startPos))
		yield_return(self.base:RunGM(cmd,false,true,true))
		for idx, pos in ipairs(self.posTableXinshouToMengde) do
			yield_return(self.base:MoveToPosition(pos, 10, 1, 0.5,true))
			newPos = pos
			distance = (newPos-startPos).magnitude
			if distance > self.recordInterval then
				startPos = pos
				yield_return(self.base:RunGM("stoptmtmsi",false,true,true))
				yield_return(CS.UnityEngine.WaitForEndOfFrame())
				cmd = "starttmtmsi Xinshou2Mengde_"..tostring(self:Vector2Str(startPos))
				yield_return(self.base:RunGM(cmd,false,true,true))
			end
		end
		yield_return(self.base:RunGM("stoptmtmsi",false,true,true))
	end)
}

--录制的路点
self.posTableXinshouToMengde = {
	CS.UnityEngine.Vector3(2744.934,194.6424,-1717.207),
	CS.UnityEngine.Vector3(2743.898,194.6098,-1714.91),
	CS.UnityEngine.Vector3(2742.172,194.592,-1712.815),
	CS.UnityEngine.Vector3(2740.214,194.5741,-1710.782),
	CS.UnityEngine.Vector3(2738.272,194.513,-1708.755),
	CS.UnityEngine.Vector3(2736.327,194.4533,-1706.721),
	CS.UnityEngine.Vector3(2734.49,194.4589,-1704.8),
	CS.UnityEngine.Vector3(2732.538,194.4307,-1702.758),
	CS.UnityEngine.Vector3(2730.589,194.4185,-1700.72),
	CS.UnityEngine.Vector3(2729.551,194.4476,-1699.633),
	CS.UnityEngine.Vector3(2729.046,194.4475,-1699.105),
	CS.UnityEngine.Vector3(2727.092,194.4625,-1697.058),
	CS.UnityEngine.Vector3(2725.138,194.4752,-1695.013),
	CS.UnityEngine.Vector3(2723.178,194.543,-1692.962),
	CS.UnityEngine.Vector3(2721.223,194.6159,-1690.916),
	CS.UnityEngine.Vector3(2719.362,194.7169,-1688.969),
	CS.UnityEngine.Vector3(2717.408,194.7565,-1686.924),
	CS.UnityEngine.Vector3(2715.46,194.7081,-1684.884),
	CS.UnityEngine.Vector3(2713.526,194.6309,-1682.861),
	CS.UnityEngine.Vector3(2711.595,194.5403,-1680.84),
	CS.UnityEngine.Vector3(2709.751,194.4582,-1678.909),
	CS.UnityEngine.Vector3(2707.807,194.4148,-1676.875),
	CS.UnityEngine.Vector3(2705.855,194.4637,-1674.831),
	CS.UnityEngine.Vector3(2703.901,194.4839,-1672.786),
	CS.UnityEngine.Vector3(2701.89,194.3253,-1670.681),
	CS.UnityEngine.Vector3(2699.958,194.258,-1668.659),
	CS.UnityEngine.Vector3(2698.026,194.2047,-1666.636),
	CS.UnityEngine.Vector3(2696.095,194.1025,-1664.615),
	CS.UnityEngine.Vector3(2694.167,194.0224,-1662.595),
	CS.UnityEngine.Vector3(2692.316,194.0113,-1660.658),
	CS.UnityEngine.Vector3(2690.363,194.0519,-1658.613),
	CS.UnityEngine.Vector3(2688.409,194.1317,-1656.567),
	CS.UnityEngine.Vector3(2686.453,194.2482,-1654.521),
	CS.UnityEngine.Vector3(2684.498,194.3239,-1652.474),
	CS.UnityEngine.Vector3(2682.549,194.476,-1650.434),
	CS.UnityEngine.Vector3(2680.647,194.7584,-1648.444),
	CS.UnityEngine.Vector3(2679.344,194.9309,-1648.078),
	CS.UnityEngine.Vector3(2676.724,194.8306,-1648.341),
	CS.UnityEngine.Vector3(2674.657,194.9277,-1646.717),
	CS.UnityEngine.Vector3(2673.943,195.2125,-1644.28),
	CS.UnityEngine.Vector3(2671.922,195.5015,-1642.522),
	CS.UnityEngine.Vector3(2669.81,195.6118,-1640.665),
	CS.UnityEngine.Vector3(2667.691,195.7486,-1638.794),
	CS.UnityEngine.Vector3(2665.571,195.7888,-1636.92),
	CS.UnityEngine.Vector3(2663.458,195.8622,-1635.052),
	CS.UnityEngine.Vector3(2661.34,196.1509,-1633.181),
	CS.UnityEngine.Vector3(2659.279,196.4478,-1631.359),
	CS.UnityEngine.Vector3(2657.386,196.8751,-1629.686),
	CS.UnityEngine.Vector3(2655.689,197.4818,-1628.186),
	CS.UnityEngine.Vector3(2654.057,198.1073,-1626.743),
	CS.UnityEngine.Vector3(2652.255,198.5537,-1625.15),
	CS.UnityEngine.Vector3(2650.407,199.0113,-1623.516),
	CS.UnityEngine.Vector3(2648.588,199.3217,-1621.908),
	CS.UnityEngine.Vector3(2646.824,199.7788,-1620.349),
	CS.UnityEngine.Vector3(2644.908,200.3378,-1619.417),
	CS.UnityEngine.Vector3(2642.892,200.9745,-1619.321),
	CS.UnityEngine.Vector3(2640.981,201.5721,-1618.041),
	CS.UnityEngine.Vector3(2639.106,202.2096,-1616.798),
	CS.UnityEngine.Vector3(2637.424,202.865,-1615.688),
	CS.UnityEngine.Vector3(2635.716,203.5582,-1614.562),
	CS.UnityEngine.Vector3(2633.965,204.2218,-1613.822),
	CS.UnityEngine.Vector3(2632.308,204.9605,-1612.793),
	CS.UnityEngine.Vector3(2630.578,205.6555,-1611.724),
	CS.UnityEngine.Vector3(2628.781,206.3025,-1610.616),
	CS.UnityEngine.Vector3(2627.195,207.115,-1609.639),
	CS.UnityEngine.Vector3(2626.124,207.8813,-1608.98),
	CS.UnityEngine.Vector3(2625.26,208.5864,-1608.447),
	CS.UnityEngine.Vector3(2623.893,209.1544,-1607.605),
	CS.UnityEngine.Vector3(2623.019,209.5061,-1607.067),
	CS.UnityEngine.Vector3(2621.784,210.0084,-1606.534),
	CS.UnityEngine.Vector3(2622.262,210.8356,-1606.646),
	CS.UnityEngine.Vector3(2622.582,211.1836,-1606.789),
	CS.UnityEngine.Vector3(2622.604,211.5916,-1606.889),
	CS.UnityEngine.Vector3(2622.642,212.0302,-1606.923),
	CS.UnityEngine.Vector3(2622.665,212.3354,-1606.886),
	CS.UnityEngine.Vector3(2622.022,213.457,-1606.495),
	CS.UnityEngine.Vector3(2621.349,214.212,-1606.079),
	CS.UnityEngine.Vector3(2620.024,215.1028,-1605.263),
	CS.UnityEngine.Vector3(2619.004,215.5733,-1603.778),
	CS.UnityEngine.Vector3(2617.513,216.0237,-1601.975),
	CS.UnityEngine.Vector3(2615.926,216.7951,-1600.757),
	CS.UnityEngine.Vector3(2614.599,217.6662,-1599.728),
	CS.UnityEngine.Vector3(2613.617,218.3505,-1598.5),
	CS.UnityEngine.Vector3(2612.575,219.07,-1596.849),
	CS.UnityEngine.Vector3(2611.21,219.86,-1595.613),
	CS.UnityEngine.Vector3(2609.793,220.5348,-1594.319),
	CS.UnityEngine.Vector3(2608.699,221.195,-1592.986),
	CS.UnityEngine.Vector3(2607.887,221.6956,-1591.138),
	CS.UnityEngine.Vector3(2606.39,222.3078,-1589.542),
	CS.UnityEngine.Vector3(2604.818,222.8135,-1587.851),
	CS.UnityEngine.Vector3(2603.093,223.1903,-1585.99),
	CS.UnityEngine.Vector3(2601.363,223.5761,-1584.123),
	CS.UnityEngine.Vector3(2599.631,223.9351,-1582.229),
	CS.UnityEngine.Vector3(2599.836,224.0954,-1579.591),
	CS.UnityEngine.Vector3(2600.228,224.4417,-1577.035),
	CS.UnityEngine.Vector3(2599.467,224.8665,-1574.979),
	CS.UnityEngine.Vector3(2600.136,225.349,-1572.727),
	CS.UnityEngine.Vector3(2600.144,225.8386,-1570.704),
	CS.UnityEngine.Vector3(2601.415,226.2353,-1568.719),
	CS.UnityEngine.Vector3(2603.085,226.5839,-1566.753),
	CS.UnityEngine.Vector3(2604.166,226.8232,-1564.6),
	CS.UnityEngine.Vector3(2604.427,227.0498,-1561.984),
	CS.UnityEngine.Vector3(2604.717,227.25,-1559.251),
	CS.UnityEngine.Vector3(2605.015,227.4364,-1556.494),
	CS.UnityEngine.Vector3(2605.318,227.5396,-1553.682),
	CS.UnityEngine.Vector3(2605.611,227.7982,-1550.964),
	CS.UnityEngine.Vector3(2605.908,227.9392,-1548.213),
	CS.UnityEngine.Vector3(2606.211,228.0074,-1545.399),
	CS.UnityEngine.Vector3(2606.513,228.15,-1542.588),
	CS.UnityEngine.Vector3(2606.814,228.2928,-1539.792),
	CS.UnityEngine.Vector3(2607.115,228.4568,-1537),
	CS.UnityEngine.Vector3(2607.408,228.7435,-1534.29),
	CS.UnityEngine.Vector3(2607.674,229.0623,-1531.815),
	CS.UnityEngine.Vector3(2608.337,229.3814,-1529.58),
	CS.UnityEngine.Vector3(2609.48,229.8241,-1527.586),
	CS.UnityEngine.Vector3(2610.027,230.0198,-1524.914),
	CS.UnityEngine.Vector3(2610.562,230.2417,-1522.355),
	CS.UnityEngine.Vector3(2611.112,230.5843,-1519.736),
	CS.UnityEngine.Vector3(2611.643,230.9544,-1517.217),
	CS.UnityEngine.Vector3(2612.18,231.2945,-1514.659),
	CS.UnityEngine.Vector3(2613.804,231.7589,-1513.095),
	CS.UnityEngine.Vector3(2614.723,232.0729,-1510.618),
	CS.UnityEngine.Vector3(2615.544,232.3646,-1508.115),
	CS.UnityEngine.Vector3(2616.348,232.7642,-1505.686),
	CS.UnityEngine.Vector3(2617.111,233.2513,-1503.386),
	CS.UnityEngine.Vector3(2617.893,233.6534,-1501.028),
	CS.UnityEngine.Vector3(2618.733,233.9091,-1498.496),
	CS.UnityEngine.Vector3(2619.577,234.2046,-1495.952),
	CS.UnityEngine.Vector3(2621.605,234.4092,-1494.51),
	CS.UnityEngine.Vector3(2623.125,234.5413,-1492.604),
	CS.UnityEngine.Vector3(2626.027,234.6082,-1491.849),
	CS.UnityEngine.Vector3(2628.073,234.525,-1490.312),
	CS.UnityEngine.Vector3(2629.872,234.4564,-1488.222),
	CS.UnityEngine.Vector3(2629.627,234.1582,-1485.582),
	CS.UnityEngine.Vector3(2628.992,233.8338,-1483.078),
	CS.UnityEngine.Vector3(2628.413,233.5062,-1480.772),
	CS.UnityEngine.Vector3(2629.243,233.1743,-1478.226),
	CS.UnityEngine.Vector3(2630.041,232.7464,-1475.727),
	CS.UnityEngine.Vector3(2630.82,232.2647,-1473.266),
	CS.UnityEngine.Vector3(2631.055,231.915,-1470.919),
	CS.UnityEngine.Vector3(2631.781,231.6389,-1468.32),
	CS.UnityEngine.Vector3(2632.968,231.3924,-1466.164),
	CS.UnityEngine.Vector3(2633.787,231.0634,-1463.62),
	CS.UnityEngine.Vector3(2634.566,230.7454,-1461.228),
	CS.UnityEngine.Vector3(2636.123,230.5804,-1459.312),
	CS.UnityEngine.Vector3(2637.15,230.5331,-1456.729),
	CS.UnityEngine.Vector3(2638.202,230.4696,-1454.124),
	CS.UnityEngine.Vector3(2639.243,230.3012,-1451.554),
	CS.UnityEngine.Vector3(2640.243,230.1114,-1449.09),
	CS.UnityEngine.Vector3(2641.224,229.9164,-1446.673),
	CS.UnityEngine.Vector3(2642.264,229.7692,-1444.111),
	CS.UnityEngine.Vector3(2642.021,229.5032,-1441.669),
	CS.UnityEngine.Vector3(2642.748,229.3473,-1439.207),
	CS.UnityEngine.Vector3(2643.542,229.1736,-1436.566),
	CS.UnityEngine.Vector3(2644.282,228.909,-1434.086),
	CS.UnityEngine.Vector3(2645.065,228.7389,-1431.448),
	CS.UnityEngine.Vector3(2645.684,228.5615,-1429.365),
	CS.UnityEngine.Vector3(2645.229,228.4006,-1428.531),
	CS.UnityEngine.Vector3(2645.164,228.1728,-1426.168),
	CS.UnityEngine.Vector3(2645.681,228.0539,-1423.493),
	CS.UnityEngine.Vector3(2646.199,227.9396,-1420.754),
	CS.UnityEngine.Vector3(2645.64,227.6859,-1418.366),
	CS.UnityEngine.Vector3(2643.947,227.1665,-1416.431),
	CS.UnityEngine.Vector3(2643.323,226.7236,-1414.096),
	CS.UnityEngine.Vector3(2643.126,226.4326,-1411.568),
	CS.UnityEngine.Vector3(2642.126,226.0773,-1409.391),
	CS.UnityEngine.Vector3(2641.275,225.6618,-1407.081),
	CS.UnityEngine.Vector3(2640.8,225.1993,-1404.53),
	CS.UnityEngine.Vector3(2640.313,224.7526,-1401.973),
	CS.UnityEngine.Vector3(2639.835,224.2081,-1399.473),
	CS.UnityEngine.Vector3(2637.907,223.6438,-1398.22),
	CS.UnityEngine.Vector3(2636.634,223.0604,-1396.287),
	CS.UnityEngine.Vector3(2635.712,222.5725,-1393.886),
	CS.UnityEngine.Vector3(2634.709,222.1027,-1391.305),
	CS.UnityEngine.Vector3(2633.761,221.6698,-1388.872),
	CS.UnityEngine.Vector3(2631.466,221.1754,-1387.929),
	CS.UnityEngine.Vector3(2629.461,220.684,-1386.898),
	CS.UnityEngine.Vector3(2628.035,220.104,-1384.824),
	CS.UnityEngine.Vector3(2626.624,219.4434,-1382.802),
	CS.UnityEngine.Vector3(2625.132,219.0172,-1380.672),
	CS.UnityEngine.Vector3(2623.686,218.4239,-1378.611),
	CS.UnityEngine.Vector3(2622.236,217.8465,-1376.544),
	CS.UnityEngine.Vector3(2620.801,217.2251,-1374.498),
	CS.UnityEngine.Vector3(2619.107,216.5714,-1373.017),
	CS.UnityEngine.Vector3(2617.179,216.6125,-1371.567),
	CS.UnityEngine.Vector3(2615.417,216.2368,-1369.579),
	CS.UnityEngine.Vector3(2613.694,215.756,-1367.655),
	CS.UnityEngine.Vector3(2611.907,215.3171,-1365.929),
	CS.UnityEngine.Vector3(2609.732,214.9708,-1364.875),
	CS.UnityEngine.Vector3(2607.775,214.6743,-1363.001),
	CS.UnityEngine.Vector3(2605.918,214.1434,-1361.241),
	CS.UnityEngine.Vector3(2604.02,213.7336,-1359.446),
	CS.UnityEngine.Vector3(2602.146,213.3182,-1357.675),
	CS.UnityEngine.Vector3(2600.247,212.8932,-1355.881),
	CS.UnityEngine.Vector3(2598.372,212.616,-1354.109),
	CS.UnityEngine.Vector3(2596.4,212.4245,-1352.246),
	CS.UnityEngine.Vector3(2596.289,212.6502,-1349.667),
	CS.UnityEngine.Vector3(2595.679,212.6151,-1347.395),
	CS.UnityEngine.Vector3(2594.194,212.1741,-1345.355),
	CS.UnityEngine.Vector3(2591.944,211.5244,-1344.987),
	CS.UnityEngine.Vector3(2589.615,211.925,-1344.928),
	CS.UnityEngine.Vector3(2587.802,211.0038,-1344.284),
	CS.UnityEngine.Vector3(2585.892,210.3957,-1342.8),
	CS.UnityEngine.Vector3(2584.149,210.2427,-1341.463),
	CS.UnityEngine.Vector3(2583.376,210.2541,-1340.96),
	CS.UnityEngine.Vector3(2582.414,210.256,-1340.9),
	CS.UnityEngine.Vector3(2581.502,210.2563,-1341.019),
	CS.UnityEngine.Vector3(2580.616,210.2563,-1341.206),
	CS.UnityEngine.Vector3(2579.667,210.2563,-1341.209),
	CS.UnityEngine.Vector3(2578.825,210.2563,-1340.894),
	CS.UnityEngine.Vector3(2578.021,210.2564,-1340.522),
	CS.UnityEngine.Vector3(2577.179,210.2564,-1340.124),
	CS.UnityEngine.Vector3(2576.303,210.2564,-1339.71),
	CS.UnityEngine.Vector3(2575.516,210.2564,-1339.338),
	CS.UnityEngine.Vector3(2574.686,210.3036,-1338.946),
	CS.UnityEngine.Vector3(2572.61,210.6664,-1337.961),
	CS.UnityEngine.Vector3(2571.837,211.5329,-1335.997),
	CS.UnityEngine.Vector3(2570.349,211.9805,-1334.773),
	CS.UnityEngine.Vector3(2568.312,212.3717,-1333.449),
	CS.UnityEngine.Vector3(2567.148,212.9487,-1331.732),
	CS.UnityEngine.Vector3(2566.259,213.506,-1329.875),
	CS.UnityEngine.Vector3(2564.384,213.8193,-1328.132),
	CS.UnityEngine.Vector3(2562.458,214.1732,-1326.328),
	CS.UnityEngine.Vector3(2560.755,214.4388,-1325.322),
	CS.UnityEngine.Vector3(2559.171,213.0752,-1324.066),
	CS.UnityEngine.Vector3(2558.702,210.3817,-1323.763),
	CS.UnityEngine.Vector3(2558.036,210.2797,-1323.172),
	CS.UnityEngine.Vector3(2557.665,210.2608,-1322.297),
	CS.UnityEngine.Vector3(2557.413,210.2572,-1321.399),
	CS.UnityEngine.Vector3(2556.826,210.2566,-1320.708),
	CS.UnityEngine.Vector3(2556.156,210.2565,-1320.06),
	CS.UnityEngine.Vector3(2555.501,210.2565,-1319.364),
	CS.UnityEngine.Vector3(2555.289,210.2565,-1318.509),
	CS.UnityEngine.Vector3(2555.214,210.2565,-1317.552),
	CS.UnityEngine.Vector3(2555.116,210.2565,-1316.588),
	CS.UnityEngine.Vector3(2554.644,210.2564,-1315.892),
	CS.UnityEngine.Vector3(2553.976,210.2564,-1315.218),
	CS.UnityEngine.Vector3(2553.261,210.2564,-1314.547),
	CS.UnityEngine.Vector3(2552.645,210.2564,-1313.976),
	CS.UnityEngine.Vector3(2551.956,210.2564,-1313.34),
	CS.UnityEngine.Vector3(2551.339,210.2564,-1312.635),
	CS.UnityEngine.Vector3(2551.14,210.2564,-1311.762),
	CS.UnityEngine.Vector3(2551.073,210.2564,-1310.867),
	CS.UnityEngine.Vector3(2551.027,210.2564,-1309.893),
	CS.UnityEngine.Vector3(2550.771,210.2564,-1309.028),
	CS.UnityEngine.Vector3(2550.169,210.2564,-1308.344),
	CS.UnityEngine.Vector3(2549.034,210.674,-1307.28),
	CS.UnityEngine.Vector3(2548.39,211.1004,-1305.218),
	CS.UnityEngine.Vector3(2548.285,211.3172,-1302.496),
	CS.UnityEngine.Vector3(2548.183,211.5144,-1299.823),
	CS.UnityEngine.Vector3(2548.076,211.7198,-1297.037),
	CS.UnityEngine.Vector3(2547.981,212.1645,-1294.528),
	CS.UnityEngine.Vector3(2547.884,212.3479,-1291.997),
	CS.UnityEngine.Vector3(2547.142,212.3031,-1289.616),
	CS.UnityEngine.Vector3(2545.175,211.9614,-1287.791),
	CS.UnityEngine.Vector3(2543.699,211.7285,-1285.818),
	CS.UnityEngine.Vector3(2542.895,211.9486,-1283.377),
	CS.UnityEngine.Vector3(2541.12,212.4276,-1281.731),
	CS.UnityEngine.Vector3(2539.456,212.9527,-1280.19),
	CS.UnityEngine.Vector3(2537.751,213.3634,-1278.568),
	CS.UnityEngine.Vector3(2537.16,213.6149,-1276.219),
	CS.UnityEngine.Vector3(2535.788,214.1225,-1274.511),
	CS.UnityEngine.Vector3(2535.139,214.4285,-1272.262),
	CS.UnityEngine.Vector3(2533.23,214.7416,-1270.49),
	CS.UnityEngine.Vector3(2531.948,212.9342,-1269.141),
	CS.UnityEngine.Vector3(2531.553,209.5666,-1268.244),
	CS.UnityEngine.Vector3(2530.521,208.5708,-1267.066),
	CS.UnityEngine.Vector3(2528.786,207.7669,-1265.46),
	CS.UnityEngine.Vector3(2527.036,207.1359,-1263.839),
	CS.UnityEngine.Vector3(2526.691,206.6673,-1261.652),
	CS.UnityEngine.Vector3(2526.592,206.52,-1259.076),
	CS.UnityEngine.Vector3(2526.487,206.4756,-1256.332),
	CS.UnityEngine.Vector3(2524.828,205.978,-1254.413),
	CS.UnityEngine.Vector3(2524.199,205.8262,-1252.205),
	CS.UnityEngine.Vector3(2523.606,205.8067,-1249.714),
	CS.UnityEngine.Vector3(2521.868,205.2117,-1248.103),
	CS.UnityEngine.Vector3(2521.076,204.998,-1246.014),
	CS.UnityEngine.Vector3(2521.064,204.9956,-1245.71),
	CS.UnityEngine.Vector3(2521.064,204.9957,-1245.71),
	CS.UnityEngine.Vector3(2521.064,204.9957,-1245.71),
	CS.UnityEngine.Vector3(2520.991,204.9732,-1245.586),
	CS.UnityEngine.Vector3(2520.263,204.7433,-1244.37),
	CS.UnityEngine.Vector3(2518.985,204.3271,-1242.26),
	CS.UnityEngine.Vector3(2518.001,203.969,-1239.956),
	CS.UnityEngine.Vector3(2517.472,203.6448,-1237.451),
	CS.UnityEngine.Vector3(2516.047,202.9857,-1235.681),
	CS.UnityEngine.Vector3(2514.618,202.5012,-1233.565),
	CS.UnityEngine.Vector3(2513.313,202.1612,-1231.432),
	CS.UnityEngine.Vector3(2511.903,201.964,-1229.129),
	CS.UnityEngine.Vector3(2510.546,201.8368,-1226.912),
	CS.UnityEngine.Vector3(2509.067,201.9858,-1224.495),
	CS.UnityEngine.Vector3(2507.594,201.9379,-1222.089),
	CS.UnityEngine.Vector3(2506.228,201.748,-1219.858),
	CS.UnityEngine.Vector3(2504.114,201.3971,-1218.67),
	CS.UnityEngine.Vector3(2501.726,200.9303,-1218.095),
	CS.UnityEngine.Vector3(2499.386,200.3935,-1217.532),
	CS.UnityEngine.Vector3(2497.095,199.8043,-1216.981),
	CS.UnityEngine.Vector3(2494.637,199.2459,-1216.39),
	CS.UnityEngine.Vector3(2492.116,198.8323,-1215.783),
	CS.UnityEngine.Vector3(2489.497,198.5619,-1215.153),
	CS.UnityEngine.Vector3(2486.94,198.1561,-1214.538),
	CS.UnityEngine.Vector3(2485.207,197.9684,-1212.685),
	CS.UnityEngine.Vector3(2483.787,197.9887,-1210.366),
	CS.UnityEngine.Vector3(2482.393,198.213,-1208.089),
	CS.UnityEngine.Vector3(2480.997,198.343,-1205.807),
	CS.UnityEngine.Vector3(2479.314,198.4926,-1203.623),
	CS.UnityEngine.Vector3(2477.468,198.2931,-1201.924),
	CS.UnityEngine.Vector3(2476.013,198.2722,-1199.546),
	CS.UnityEngine.Vector3(2474.557,198.4924,-1197.168),
	CS.UnityEngine.Vector3(2473.067,198.588,-1194.963),
	CS.UnityEngine.Vector3(2470.893,198.4504,-1193.684),
	CS.UnityEngine.Vector3(2469.496,198.4526,-1191.408),
	CS.UnityEngine.Vector3(2468.096,198.365,-1189.121),
	CS.UnityEngine.Vector3(2466.525,198.3959,-1186.973),
	CS.UnityEngine.Vector3(2463.802,198.5512,-1186.304),
	CS.UnityEngine.Vector3(2461.976,198.8323,-1184.677),
	CS.UnityEngine.Vector3(2460.54,199.0587,-1182.332),
	CS.UnityEngine.Vector3(2459.125,199.2307,-1180.02),
	CS.UnityEngine.Vector3(2456.766,199.3212,-1178.95),
	CS.UnityEngine.Vector3(2454.007,199.354,-1178.286),
	CS.UnityEngine.Vector3(2451.265,199.4107,-1177.604),
	CS.UnityEngine.Vector3(2449.742,199.5637,-1175.34),
	CS.UnityEngine.Vector3(2447.36,199.7195,-1174.328),
	CS.UnityEngine.Vector3(2444.8,200.138,-1173.713),
	CS.UnityEngine.Vector3(2442.506,200.4056,-1173.161),
	CS.UnityEngine.Vector3(2439.76,200.4906,-1172.5),
	CS.UnityEngine.Vector3(2438.203,200.3229,-1170.464),
	CS.UnityEngine.Vector3(2436.117,200.4146,-1168.911),
	CS.UnityEngine.Vector3(2433.572,200.774,-1168.299),
	CS.UnityEngine.Vector3(2431.1,201.1898,-1167.704),
	CS.UnityEngine.Vector3(2429.247,201.3597,-1166.086),
	CS.UnityEngine.Vector3(2427.773,201.3633,-1163.679),
	CS.UnityEngine.Vector3(2425.49,201.7191,-1162.869),
	CS.UnityEngine.Vector3(2423.903,201.424,-1160.787),
	CS.UnityEngine.Vector3(2421.957,201.4236,-1159.233),
	CS.UnityEngine.Vector3(2419.324,201.5903,-1158.6),
	CS.UnityEngine.Vector3(2416.785,201.8057,-1157.989),
	CS.UnityEngine.Vector3(2414.302,202.2162,-1157.392),
	CS.UnityEngine.Vector3(2411.794,202.5792,-1156.789),
	CS.UnityEngine.Vector3(2409.205,202.8311,-1156.166),
	CS.UnityEngine.Vector3(2407.344,203.025,-1154.468),
	CS.UnityEngine.Vector3(2405.867,203.1097,-1152.055),
	CS.UnityEngine.Vector3(2404.104,202.9951,-1150.434),
	CS.UnityEngine.Vector3(2402.687,202.732,-1148.127),
	CS.UnityEngine.Vector3(2401.256,202.6224,-1145.791),
	CS.UnityEngine.Vector3(2401.167,202.6386,-1145.645),
	CS.UnityEngine.Vector3(2347.21,206.84,-1138.66),
	CS.UnityEngine.Vector3(2364.119,206.8482,-1149.381),
	CS.UnityEngine.Vector3(2364.5,206.797,-1148.2),
	CS.UnityEngine.Vector3(2364.322,206.6071,-1146.583),
	CS.UnityEngine.Vector3(2364.03,206.261,-1143.93),
	CS.UnityEngine.Vector3(2363.744,206.1512,-1141.332),
	CS.UnityEngine.Vector3(2363.434,206.2472,-1138.521),
	CS.UnityEngine.Vector3(2363.159,206.7528,-1136.02),
	CS.UnityEngine.Vector3(2362.891,207.2095,-1133.581),
	CS.UnityEngine.Vector3(2362.566,207.2747,-1130.958),
	CS.UnityEngine.Vector3(2360.583,207.3264,-1129.274),
	CS.UnityEngine.Vector3(2358.468,207.49,-1127.577),
	CS.UnityEngine.Vector3(2356.269,207.4305,-1125.813),
	CS.UnityEngine.Vector3(2354.13,207.6907,-1124.098),
	CS.UnityEngine.Vector3(2351.293,208.1198,-1122.632),
	CS.UnityEngine.Vector3(2348.798,208.3602,-1122.905),
	CS.UnityEngine.Vector3(2346.048,208.1886,-1123.208),
	CS.UnityEngine.Vector3(2343.324,207.9365,-1123.507),
	CS.UnityEngine.Vector3(2340.681,207.6674,-1123.798),
	CS.UnityEngine.Vector3(2337.91,207.5354,-1124.102),
	CS.UnityEngine.Vector3(2335.24,207.2511,-1124.451),
	CS.UnityEngine.Vector3(2333.532,207.0519,-1126.536),
	CS.UnityEngine.Vector3(2331.007,206.9158,-1127.08),
	CS.UnityEngine.Vector3(2328.939,206.9871,-1128.618),
	CS.UnityEngine.Vector3(2326.796,207.0657,-1129.824),
	CS.UnityEngine.Vector3(2325.463,208.049,-1129.971),
	CS.UnityEngine.Vector3(2325.118,208.608,-1130.01),
	CS.UnityEngine.Vector3(2325.069,208.6255,-1130.015),
	CS.UnityEngine.Vector3(2323.125,209.2121,-1130.229),
	CS.UnityEngine.Vector3(2322.235,210.6472,-1130.128),
	CS.UnityEngine.Vector3(2322.061,210.7478,-1130.073),
	CS.UnityEngine.Vector3(2321.781,210.9318,-1129.863),
	CS.UnityEngine.Vector3(2320.042,211.4308,-1128.468),
	CS.UnityEngine.Vector3(2317.444,211.3885,-1128.425),
	CS.UnityEngine.Vector3(2314.661,211.5593,-1128.73),
	CS.UnityEngine.Vector3(2311.857,211.5568,-1129.038),
	CS.UnityEngine.Vector3(2309.43,211.8028,-1128.424),
	CS.UnityEngine.Vector3(2307.47,212.2593,-1126.853),
	CS.UnityEngine.Vector3(2305.589,212.7912,-1125.344),
	CS.UnityEngine.Vector3(2303.672,213.264,-1123.807),
	CS.UnityEngine.Vector3(2302.531,210.3253,-1123.397),
	CS.UnityEngine.Vector3(2300.154,209.8647,-1123.605),
	CS.UnityEngine.Vector3(2298.087,210.0519,-1122.027),
	CS.UnityEngine.Vector3(2295.924,210.0672,-1120.293),
	CS.UnityEngine.Vector3(2293.77,209.9264,-1118.564),
	CS.UnityEngine.Vector3(2291.535,209.3114,-1118.118),
	CS.UnityEngine.Vector3(2289.244,208.0421,-1118.37),
	CS.UnityEngine.Vector3(2287.068,207.1003,-1117.965),
	CS.UnityEngine.Vector3(2285.07,206.6057,-1116.365),
	CS.UnityEngine.Vector3(2283.022,206.2338,-1114.722),
	CS.UnityEngine.Vector3(2280.959,205.8612,-1113.068),
	CS.UnityEngine.Vector3(2279.061,204.9654,-1112.309),
	CS.UnityEngine.Vector3(2276.539,204.5873,-1112.506),
	CS.UnityEngine.Vector3(2274.524,204.3119,-1110.939),
	CS.UnityEngine.Vector3(2272.151,204.4689,-1110.737),
	CS.UnityEngine.Vector3(2269.519,204.78,-1111.026),
	CS.UnityEngine.Vector3(2267.253,204.6293,-1109.803),
	CS.UnityEngine.Vector3(2265.005,204.4591,-1108.797),
	CS.UnityEngine.Vector3(2262.193,204.5048,-1109.104),
	CS.UnityEngine.Vector3(2259.815,204.1819,-1108.443),
	CS.UnityEngine.Vector3(2257.733,203.8885,-1106.774),
	CS.UnityEngine.Vector3(2255.606,203.7163,-1105.068),
	CS.UnityEngine.Vector3(2253.325,203.813,-1103.804),
	CS.UnityEngine.Vector3(2250.528,203.8095,-1104.105),
	CS.UnityEngine.Vector3(2247.885,203.5274,-1104.396),
	CS.UnityEngine.Vector3(2245.186,203.3633,-1104.693),
	CS.UnityEngine.Vector3(2242.838,203.5101,-1103.642),
	CS.UnityEngine.Vector3(2240.633,203.5002,-1101.873),
	CS.UnityEngine.Vector3(2238.462,203.4993,-1100.881),
	CS.UnityEngine.Vector3(2235.662,203.6581,-1101.188),
	CS.UnityEngine.Vector3(2232.897,203.854,-1101.492),
	CS.UnityEngine.Vector3(2230.715,203.6379,-1100.146),
	CS.UnityEngine.Vector3(2228.544,203.6146,-1098.405),
	CS.UnityEngine.Vector3(2226.232,203.6349,-1097.264),
	CS.UnityEngine.Vector3(2223.47,203.6633,-1097.564),
	CS.UnityEngine.Vector3(2220.708,203.8385,-1097.763),
	CS.UnityEngine.Vector3(2218.672,204.052,-1096.162),
	CS.UnityEngine.Vector3(2216.547,204.2984,-1094.458),
	CS.UnityEngine.Vector3(2214.461,204.4337,-1092.786),
	CS.UnityEngine.Vector3(2212.037,204.5313,-1092.028),
	CS.UnityEngine.Vector3(2209.633,204.633,-1091.414),
	CS.UnityEngine.Vector3(2207.584,204.9812,-1089.773),
	CS.UnityEngine.Vector3(2205.531,205.2855,-1088.126),
	CS.UnityEngine.Vector3(2203.526,205.5171,-1086.518),
	CS.UnityEngine.Vector3(2201.355,205.693,-1084.778),
	CS.UnityEngine.Vector3(2199.274,206.0186,-1083.108),
	CS.UnityEngine.Vector3(2197.228,205.9934,-1081.467),
	CS.UnityEngine.Vector3(2195.056,206.1578,-1079.725),
	CS.UnityEngine.Vector3(2192.89,206.3651,-1077.988),
	CS.UnityEngine.Vector3(2190.722,206.5757,-1076.249),
	CS.UnityEngine.Vector3(2188.554,206.7207,-1074.51),
	CS.UnityEngine.Vector3(2186.347,206.7391,-1072.739),
	CS.UnityEngine.Vector3(2184.187,206.6649,-1071.006),
	CS.UnityEngine.Vector3(2182.182,206.3771,-1069.398),
	CS.UnityEngine.Vector3(2181.204,206.448,-1067.13),
	CS.UnityEngine.Vector3(2179.106,206.3249,-1065.441),
	CS.UnityEngine.Vector3(2178.614,206.5065,-1062.952),
	CS.UnityEngine.Vector3(2178.33,206.7624,-1060.354),
	CS.UnityEngine.Vector3(2178.063,207.1234,-1057.928),
	CS.UnityEngine.Vector3(2177.806,207.549,-1055.583),
	CS.UnityEngine.Vector3(2177.522,207.8736,-1053.005),
	CS.UnityEngine.Vector3(2177.249,208.2567,-1050.511),
	CS.UnityEngine.Vector3(2176.976,208.6865,-1048.038),
	CS.UnityEngine.Vector3(2176.705,208.9679,-1045.566),
	CS.UnityEngine.Vector3(2176.423,209.1393,-1042.997),
	CS.UnityEngine.Vector3(2176.406,209.1457,-1042.848),
	CS.UnityEngine.Vector3(2176.406,209.1457,-1042.848),
	CS.UnityEngine.Vector3(2176.416,209.1486,-1042.813),
	CS.UnityEngine.Vector3(2177.552,209.466,-1040.701),
	CS.UnityEngine.Vector3(2179.74,209.8667,-1039.435),
	CS.UnityEngine.Vector3(2180.492,210.2596,-1037.052),
	CS.UnityEngine.Vector3(2181.978,210.496,-1035.364),
	CS.UnityEngine.Vector3(2183.378,210.8164,-1033.549),
	CS.UnityEngine.Vector3(2184.198,210.9261,-1030.857),
	CS.UnityEngine.Vector3(2185.331,211.0628,-1028.274),
	CS.UnityEngine.Vector3(2186.503,211.2035,-1025.699),
	CS.UnityEngine.Vector3(2187.676,211.3031,-1023.123),
	CS.UnityEngine.Vector3(2188.795,211.401,-1020.664),
	CS.UnityEngine.Vector3(2189.967,211.5032,-1018.088),
	CS.UnityEngine.Vector3(2191.139,211.5708,-1015.512),
	CS.UnityEngine.Vector3(2192.312,211.6384,-1012.935),
	CS.UnityEngine.Vector3(2193.507,211.7071,-1010.308),
	CS.UnityEngine.Vector3(2194.68,211.7203,-1007.729),
	CS.UnityEngine.Vector3(2195.851,211.7316,-1005.153),
	CS.UnityEngine.Vector3(2197.024,211.7442,-1002.576),
	CS.UnityEngine.Vector3(2198.194,211.7291,-1000.002),
	CS.UnityEngine.Vector3(2199.364,211.7136,-997.4269),
	CS.UnityEngine.Vector3(2200.523,211.6986,-994.8757),
	CS.UnityEngine.Vector3(2201.676,211.6297,-992.34),
	CS.UnityEngine.Vector3(2202.77,211.5633,-989.9366),
	CS.UnityEngine.Vector3(2203.865,211.4986,-987.5294),
	CS.UnityEngine.Vector3(2204.965,211.4053,-985.1123),
	CS.UnityEngine.Vector3(2206.122,211.3022,-982.5742),
	CS.UnityEngine.Vector3(2207.278,211.2011,-980.0359),
	CS.UnityEngine.Vector3(2208.429,211.0676,-977.5066),
	CS.UnityEngine.Vector3(2209.568,210.9266,-975.0074),
	CS.UnityEngine.Vector3(2210.698,210.7878,-972.5258),
	CS.UnityEngine.Vector3(2211.862,210.3652,-969.9681),
	CS.UnityEngine.Vector3(2212.885,210.098,-967.7205),
	CS.UnityEngine.Vector3(2214.055,210.1798,-965.1476),
	CS.UnityEngine.Vector3(2215.21,210.05,-962.6102),
	CS.UnityEngine.Vector3(2216.373,210.0416,-960.0546),
	CS.UnityEngine.Vector3(2217.507,209.9941,-957.5637),
	CS.UnityEngine.Vector3(2218.67,209.9571,-955.0084),
	CS.UnityEngine.Vector3(2219.8,210.0266,-952.5246),
	CS.UnityEngine.Vector3(2220.971,210.0806,-949.9507),
	CS.UnityEngine.Vector3(2222.223,210.0698,-947.593),
	CS.UnityEngine.Vector3(2223.678,210.0426,-945.3873),
	CS.UnityEngine.Vector3(2224.822,209.9883,-942.8748),
	CS.UnityEngine.Vector3(2225.993,209.9901,-940.3005),
	CS.UnityEngine.Vector3(2227.111,209.99,-937.8423),
	CS.UnityEngine.Vector3(2228.229,209.99,-935.3853),
	CS.UnityEngine.Vector3(2229.409,209.99,-932.7886),
	CS.UnityEngine.Vector3(2230.993,209.99,-930.8838),
	CS.UnityEngine.Vector3(2232.099,209.99,-928.4525),
	CS.UnityEngine.Vector3(2233.209,209.9901,-926.0123),
	CS.UnityEngine.Vector3(2234.176,210.6169,-923.8859),
	CS.UnityEngine.Vector3(2234.95,211.3942,-922.1846),
	CS.UnityEngine.Vector3(2235.75,212.0405,-920.4255),
	CS.UnityEngine.Vector3(2236.916,212.0112,-917.8623),
	CS.UnityEngine.Vector3(2238.089,212.0029,-915.2855),
	CS.UnityEngine.Vector3(2239.274,211.9942,-912.681),
	CS.UnityEngine.Vector3(2240.434,211.9866,-910.1301),
	CS.UnityEngine.Vector3(2241.321,212.7344,-908.181),
	CS.UnityEngine.Vector3(2242.092,213.5099,-906.4855),
	CS.UnityEngine.Vector3(2242.893,214.0088,-904.7242),
	CS.UnityEngine.Vector3(2244.01,213.9948,-902.2693),
	CS.UnityEngine.Vector3(2245.182,214.0205,-899.6935),
	CS.UnityEngine.Vector3(2246.026,214.8211,-897.8399),
	CS.UnityEngine.Vector3(2247.398,215.4825,-896.7018),
	CS.UnityEngine.Vector3(2248.243,216.046,-894.8678),
	CS.UnityEngine.Vector3(2249.411,216.0008,-892.2999),
	CS.UnityEngine.Vector3(2250.522,215.9914,-889.8569),
	CS.UnityEngine.Vector3(2251.629,215.9914,-887.4243),
	CS.UnityEngine.Vector3(2252.79,215.9439,-884.8737),
	CS.UnityEngine.Vector3(2253.553,216.4781,-883.1937),
	CS.UnityEngine.Vector3(2253.659,216.6754,-882.9561),
	CS.UnityEngine.Vector3(2254.936,216.1209,-882.0239),
	CS.UnityEngine.Vector3(2255.514,217.2373,-881.6442),
	CS.UnityEngine.Vector3(2255.612,217.2777,-881.5485),
	CS.UnityEngine.Vector3(2255.773,217.2481,-881.4752),
	CS.UnityEngine.Vector3(2256.139,218.3422,-881.3341),
	CS.UnityEngine.Vector3(2256.144,218.3426,-881.3323),
	CS.UnityEngine.Vector3(2256.368,218.2869,-880.8983),
	CS.UnityEngine.Vector3(2256.402,218.294,-880.8248),
	
}

return self