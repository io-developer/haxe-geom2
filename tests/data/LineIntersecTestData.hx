package data;

class LineIntersecTestData
{
	public static function forCross() : Array<Dynamic>
	{
		return [
			{ title: "cross-1",  ax0: -608.772972, ay0: -37.930583, ax1: -608.772972, ay1: 12.069417,  bx0: -638.772972, by0: 2.069417, bx1: -568.772972, by1: 2.069417,  dstx: -608.772972, dsty: 2.069417 }
			, { title: "cross-2",  ax0: -370, ay0: 30, ax1: -430, ay1: -30,  bx0: -370, by0: -30, bx1: -430, by1: 30,  dstx: -400, dsty: 0 }
			, { title: "cross-3",  ax0: -200, ay0: 30, ax1: -200, ay1: -30,  bx0: -230, by0: 0, bx1: -170, by1: 0,  dstx: -200, dsty: 0 }
			, { title: "cross-4",  ax0: -30, ay0: 0, ax1: 30, ay1: 0,  bx0: 0, by0: 30, bx1: 0, by1: -30,  dstx: 0, dsty: 0 }
			, { title: "cross-5",  ax0: 183.385386, ay0: -49.329762, ax1: 213.245226, ay1: 47.117521,  bx0: 129.040477, by0: 23.229649, bx1: 246.389648, by1: -39.774613,  dstx: 194.901995, dsty: -12.131115 }
			, { title: "cross-6",  ax0: 423.349529, ay0: -15.291585, ax1: 334.773299, ay1: 16.097078,  bx0: 454.308211, by0: 4.917554, bx1: 380.351359, by1: -28.621018,  dstx: 415.712366, dsty: -12.585212 }
			, { title: "cross-7",  ax0: 607.507514, ay0: -23.255157, ax1: 625.755194, ay1: 29.206923,  bx0: 609.14788, by0: -22.481721, bx1: 561.161923, by1: 21.89239,  dstx: 608.110276, dsty: -21.522216 }
			, { title: "cross-8",  ax0: 841.353349, ay0: 49.62506, ax1: 803.267595, ay1: -17.571315,  bx0: 706.629898, by0: -61.933238, bx1: 808.754698, by1: -12.512438,  dstx: 805.144737, dsty: -14.259391 }
		];
	}
	
	public static function forTouch() : Array<Dynamic>
	{
		return [
			{ title: "touch-1",  ax0: -830, ay0: -330, ax1: -780, ay1: -280,  bx0: -800, by0: -300, bx1: -770, by1: -330,  dstx: -800, dsty: -300 }
			, { title: "touch-2",  ax0: -630, ay0: -330, ax1: -600, ay1: -300,  bx0: -580, by0: -320, bx1: -630, by1: -270,  dstx: -600, dsty: -300 }
			, { title: "touch-3",  ax0: -406.412196, ay0: -295.815547, ax1: -386.412196, ay1: -345.815547,  bx0: -366.412196, by0: -295.815547, bx1: -446.412196, by1: -295.815547,  dstx: -406.412196, dsty: -295.815547 }
			, { title: "touch-4",  ax0: -204.360612, ay0: -275.581947, ax1: -204.360612, ay1: -345.581947,  bx0: -254.360612, by0: -325.581947, bx1: -204.360612, by1: -295.581947,  dstx: -204.360612, dsty: -295.581947 }
			, { title: "touch-5",  ax0: 0, ay0: -350, ax1: 0, ay1: -300,  bx0: 50, by0: -300, bx1: 0, by1: -300,  dstx: 0, dsty: -300 }
			, { title: "touch-6",  ax0: 196.624775, ay0: -304.767256, ax1: 196.624775, ay1: -354.767256,  bx0: 196.624775, by0: -304.767256, bx1: 146.624775, by1: -304.767256,  dstx: 196.624775, dsty: -304.767256 }
			, { title: "touch-7",  ax0: 404.449261, ay0: -295.809304, ax1: 344.449261, ay1: -295.809304,  bx0: 404.449261, by0: -345.809304, bx1: 404.449261, by1: -295.809304,  dstx: 404.449261, dsty: -295.809304 }
			, { title: "touch-8",  ax0: 600, ay0: -330, ax1: 600, ay1: -260,  bx0: 600, by0: -300, bx1: 540, by1: -300,  dstx: 600, dsty: -300 }
			, { title: "touch-9",  ax0: 805.938551, ay0: -265.139829, ax1: 805.938551, ay1: -335.139829,  bx0: 745.938551, by0: -295.139829, bx1: 805.938551, by1: -295.139829,  dstx: 805.938551, dsty: -295.139829 }
			, { title: "touch-10",  ax0: 1035.548535, ay0: -304.284661, ax1: 945.548535, ay1: -304.284661,  bx0: 995.548535, by0: -364.284661, bx1: 995.548535, by1: -304.284661,  dstx: 995.548535, dsty: -304.284661 }
			, { title: "touch-11",  ax0: 1200, ay0: -240, ax1: 1200, ay1: -300,  bx0: 1180, by0: -300, bx1: 1260, by1: -300,  dstx: 1200, dsty: -300 }
		];
	}
	
	public static function forProjectIn() : Array<Dynamic>
	{
		return [
			{ title: "project-in-1",  ax0: -456.462842, ay0: -594.878444, ax1: -406.462842, ay1: -594.878444,  bx0: -396.462842, by0: -644.878444, bx1: -396.462842, by1: -544.878444,  dstx: -396.462842, dsty: -594.878444 }
			, { title: "project-in-2",  ax0: -275.353773, ay0: -595.908307, ax1: -205.353773, ay1: -595.908307,  bx0: -195.353773, by0: -545.908307, bx1: -195.353773, by1: -645.908307,  dstx: -195.353773, dsty: -595.908307 }
			, { title: "project-in-3",  ax0: 0, ay0: -560, ax1: 0, ay1: -610,  bx0: -60, by0: -620, bx1: 60, by1: -620,  dstx: 0, dsty: -620 }
			, { title: "project-in-4",  ax0: 200, ay0: -560, ax1: 200, ay1: -620,  bx0: 240, by0: -630, bx1: 160, by1: -630,  dstx: 200, dsty: -630 }
			, { title: "project-in-5",  ax0: 369.633179, ay0: -565.617297, ax1: 398.205226, ay1: -604.059688,  bx0: 380, by0: -650, bx1: 430, by1: -570,  dstx: 403.912987, dsty: -611.739221 }
			, { title: "project-in-6",  ax0: 643.961501, ay0: -557.017663, ax1: 593.473891, ay1: -615.206773,  bx0: 656.854903, by0: -596.008045, bx1: 561.828948, by1: -632.986471,  dstx: 586.314655, dsty: -623.458096 }
			, { title: "project-in-7",  ax0: 748.674772, ay0: -655.564652, ax1: 801.653499, ay1: -627.30933,  bx0: 806.901774, by0: -636.723734, bx1: 809.130799, by1: -558.707855,  dstx: 807.256131, dsty: -624.321261 }
			, { title: "project-in-8",  ax0: 1019.724225, ay0: -573.536528, ax1: 999.754232, ay1: -592.226394,  bx0: 976.307683, by0: -557.964847, bx1: 1009.000051, by1: -629.29365,  dstx: 994.335341, dsty: -597.297919 }
		];
	}
	
	public static function forProjectOut() : Array<Dynamic>
	{
		return [
			{ title: "project-out-1",  ax0: -410, ay0: -910, ax1: -460, ay1: -910,  bx0: -400, by0: -960, bx1: -400, by1: -860,  dstx: -400, dsty: -910 }
			, { title: "project-out-2",  ax0: -208.890931, ay0: -911.029862, ax1: -278.890931, ay1: -911.029862,  bx0: -198.890931, by0: -861.029862, bx1: -198.890931, by1: -961.029862,  dstx: -198.890931, dsty: -911.029862 }
			, { title: "project-out-3",  ax0: 0, ay0: -910, ax1: 0, ay1: -850,  bx0: -60, by0: -920, bx1: 60, by1: -920,  dstx: 0, dsty: -920 }
			, { title: "project-out-4",  ax0: 201.532065, ay0: -908.2039, ax1: 201.532065, ay1: -848.2039,  bx0: 241.532065, by0: -918.2039, bx1: 161.532065, by1: -918.2039,  dstx: 201.532065, dsty: -918.2039 }
			, { title: "project-out-5",  ax0: 394.668068, ay0: -919.181243, ax1: 366.096021, ay1: -880.738853,  bx0: 376.462842, by0: -965.121556, bx1: 426.462842, by1: -885.121556,  dstx: 400.375829, dsty: -926.860776 }
			, { title: "project-out-6",  ax0: 589.936733, ay0: -930.328329, ax1: 640.424343, ay1: -872.139219,  bx0: 653.317745, by0: -911.1296, bx1: 558.29179, by1: -948.108026,  dstx: 582.777496, dsty: -938.579652 }
			, { title: "project-out-7",  ax0: 798.116341, ay0: -942.430886, ax1: 745.137613, ay1: -970.686208,  bx0: 803.364616, by0: -951.84529, bx1: 805.593641, by1: -873.829411,  dstx: 803.718972, dsty: -939.442816 }
			, { title: "project-out-8",  ax0: 996.217073, ay0: -907.347949, ax1: 1016.187067, ay1: -888.658084,  bx0: 972.770524, by0: -873.086402, bx1: 1005.462893, by1: -944.415206,  dstx: 990.798183, dsty: -912.419475 }
		];
	}
	
	public static function forCastIn() : Array<Dynamic>
	{
		return [
			{ title: "cast-in-1",  ax0: 0, ay0: -1160, ax1: 0, ay1: -1220,  bx0: -70, by0: -1230, bx1: -10, by1: -1230,  dstx: 0, dsty: -1230 }
			, { title: "cast-in-2",  ax0: 160, ay0: -1240, ax1: 190, ay1: -1210,  bx0: 250, by0: -1250, bx1: 210, by1: -1210,  dstx: 200, dsty: -1200 }
			, { title: "cast-in-3",  ax0: 356.403286, ay0: -1121.958422, ax1: 408.199421, ay1: -1219.365983,  bx0: 445.513873, by0: -1148.862314, bx1: 422.111053, by1: -1215.096432,  dstx: 415.651029, dsty: -1233.379442 }
			, { title: "cast-in-4",  ax0: 522.841378, ay0: -1183.891013, ax1: 620.140028, ay1: -1205.98503,  bx0: 540.025268, by0: -1223.546144, bx1: 613.316012, by1: -1214.384801,  dstx: 641.575192, dsty: -1210.852404 }
			, { title: "cast-in-5",  ax0: 776.275765, ay0: -1318.119989, ax1: 785.500345, ay1: -1196.985712,  bx0: 804.790941, by0: -1294.416443, bx1: 790.125804, by1: -1192.532331,  dstx: 787.32255, dsty: -1173.057092 }
		];
	}
	
	public static function forCastOut() : Array<Dynamic>
	{
		return [
			{ title: "cast-out-1",  ax0: 0, ay0: -1520, ax1: 0, ay1: -1460,  bx0: -70, by0: -1530, bx1: -10, by1: -1530,  dstx: 0, dsty: -1530 }
			, { title: "cast-out-2",  ax0: 189.166667, ay0: -1508.420403, ax1: 159.166667, ay1: -1538.420403,  bx0: 249.166667, by0: -1548.420403, bx1: 209.166667, by1: -1508.420403,  dstx: 199.166667, dsty: -1498.420403 }
			, { title: "cast-out-3",  ax0: 407.366087, ay0: -1517.786386, ax1: 355.569952, ay1: -1420.378824,  bx0: 444.680539, by0: -1447.282717, bx1: 421.277719, by1: -1513.516835,  dstx: 414.817696, dsty: -1531.799845 }
			, { title: "cast-out-4",  ax0: 619.306695, ay0: -1504.405433, ax1: 522.008044, ay1: -1482.311416,  bx0: 539.191934, by0: -1521.966547, bx1: 612.482678, by1: -1512.805204,  dstx: 640.741859, dsty: -1509.272806 }
			, { title: "cast-out-5",  ax0: 784.667012, ay0: -1495.406115, ax1: 775.442432, ay1: -1616.540392,  bx0: 803.957608, by0: -1592.836846, bx1: 789.292471, by1: -1490.952734,  dstx: 786.489217, dsty: -1471.477495 }
		];
	}
	
	public static function forCastAway() : Array<Dynamic>
	{
		return [
			{ title: "cast-away-1",  ax0: 0, ay0: -1830, ax1: 0, ay1: -1770,  bx0: -10, by0: -1840, bx1: -70, by1: -1840,  dstx: 0, dsty: -1840 }
			, { title: "cast-away-2",  ax0: 189.444444, ay0: -1809.960795, ax1: 159.444444, ay1: -1839.960795,  bx0: 209.444444, by0: -1809.960795, bx1: 249.444444, by1: -1849.960795,  dstx: 199.444444, dsty: -1799.960795 }
			, { title: "cast-away-3",  ax0: 407.643865, ay0: -1819.326778, ax1: 355.84773, ay1: -1721.919216,  bx0: 421.555497, by0: -1815.057227, bx1: 444.958317, by1: -1748.823109,  dstx: 415.095473, dsty: -1833.340237 }
			, { title: "cast-away-4",  ax0: 619.584473, ay0: -1805.945825, ax1: 522.285822, ay1: -1783.851808,  bx0: 612.760456, by0: -1814.345596, bx1: 539.469712, by1: -1823.506939,  dstx: 641.019637, dsty: -1810.813198 }
			, { title: "cast-away-5",  ax0: 784.94479, ay0: -1796.946507, ax1: 775.72021, ay1: -1918.080784,  bx0: 789.570249, by0: -1792.493126, bx1: 804.235386, by1: -1894.377238,  dstx: 786.766994, dsty: -1773.017887 }
		];
	}
	
	public static function forParallel() : Array<Dynamic>
	{
		return [
			{ title: "parallel-1",  ax0: -1404.641002, ay0: -2153.936926, ax1: -1404.641002, ay1: -2113.936926,  bx0: -1394.641002, by0: -2063.936926, bx1: -1394.641002, by1: -2103.936926,  dstx: "NOT_FINITE", dsty: "NOT_FINITE" }
			, { title: "parallel-2",  ax0: -1194.07049, ay0: -2054.326411, ax1: -1194.07049, ay1: -2104.326411,  bx0: -1194.07049, by0: -2154.326411, bx1: -1194.07049, by1: -2104.326411,  dstx: "NOT_FINITE", dsty: "NOT_FINITE" }
			, { title: "parallel-3",  ax0: -994.681406, ay0: -2153.044743, ax1: -994.681406, ay1: -2113.044743,  bx0: -994.681406, by0: -2113.044743, bx1: -994.681406, by1: -2073.044743,  dstx: "NOT_FINITE", dsty: "NOT_FINITE" }
			, { title: "parallel-4",  ax0: -795.47506, ay0: -2105.607706, ax1: -795.47506, ay1: -2065.607706,  bx0: -795.47506, by0: -2105.607706, bx1: -795.47506, by1: -2145.607706,  dstx: "NOT_FINITE", dsty: "NOT_FINITE" }
			, { title: "parallel-5",  ax0: -610, ay0: -2080, ax1: -610, ay1: -2140,  bx0: -600, by0: -2080, bx1: -600, by1: -2140,  dstx: "NOT_FINITE", dsty: "NOT_FINITE" }
			, { title: "parallel-6",  ax0: -400, ay0: -2150, ax1: -400, ay1: -2090,  bx0: -390, by0: -2090, bx1: -390, by1: -2150,  dstx: "NOT_FINITE", dsty: "NOT_FINITE" }
			, { title: "parallel-7",  ax0: -200, ay0: -2120, ax1: -200, ay1: -2060,  bx0: -190, by0: -2120, bx1: -190, by1: -2060,  dstx: "NOT_FINITE", dsty: "NOT_FINITE" }
			, { title: "parallel-8",  ax0: -40, ay0: -2090, ax1: 40, ay1: -2090,  bx0: -40, by0: -2100, bx1: 40, by1: -2100,  dstx: "NOT_FINITE", dsty: "NOT_FINITE" }
			, { title: "parallel-9",  ax0: 200, ay0: -2100, ax1: 160, ay1: -2100,  bx0: 200, by0: -2100, bx1: 230, by1: -2100,  dstx: "NOT_FINITE", dsty: "NOT_FINITE" }
			, { title: "parallel-10",  ax0: 390, ay0: -2090, ax1: 360, ay1: -2090,  bx0: 440, by0: -2090, bx1: 400, by1: -2090,  dstx: "NOT_FINITE", dsty: "NOT_FINITE" }
			, { title: "parallel-11",  ax0: 550, ay0: -2090, ax1: 590, ay1: -2090,  bx0: 640, by0: -2090, bx1: 600, by1: -2090,  dstx: "NOT_FINITE", dsty: "NOT_FINITE" }
			, { title: "parallel-12",  ax0: 750, ay0: -2120, ax1: 790, ay1: -2080,  bx0: 840, by0: -2050, bx1: 810, by1: -2080,  dstx: "NOT_FINITE", dsty: "NOT_FINITE" }
			, { title: "parallel-13",  ax0: 1020, ay0: -2120, ax1: 1010, ay1: -2090,  bx0: 1040, by0: -2140, bx1: 1030, by1: -2110,  dstx: "NOT_FINITE", dsty: "NOT_FINITE" }
			, { title: "parallel-14",  ax0: 1180, ay0: -2140, ax1: 1190, ay1: -2090,  bx0: 1180, by0: -2140, bx1: 1190, by1: -2090,  dstx: "NOT_FINITE", dsty: "NOT_FINITE" }
		];
	}
}