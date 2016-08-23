package data;

class CircleIntersecTestData
{
	public static function forCrossFull() : Array<Dynamic>
	{
		return [
			{ title: "cross-full-1",  cx: -400, cy: 0, crad: 40,  lx0: -400, ly0: 70, lx1: -400, ly1: -70,  dstax: -400, dstay: 40,  dstbx: -400, dstby: -40 }
			, { title: "cross-full-2",  cx: -200, cy: 0, crad: 40,  lx0: -260, ly0: 0, lx1: -140, ly1: 0,  dstax: -240, dstay: 0,  dstbx: -160, dstby: 0 }
			, { title: "cross-full-3",  cx: 0, cy: 0, crad: 44.537089,  lx0: -60, ly0: 50, lx1: 50, ly1: -40,  dstax: -34.019959, dstay: 28.743603,  dstbx: 34.911048, dstby: -27.654494 }
			, { title: "cross-full-4",  cx: 206.755223, cy: -11.639146, crad: 33.641125,  lx0: 185.989272, ly0: -78.782387, lx1: 273.206265, ly1: 62.426078,  dstax: 206.681805, dstay: -45.280191,  dstbx: 236.803387, dstby: 3.488085 }
			, { title: "cross-full-5",  cx: 398.601929, cy: 3.105726, crad: 53.743145,  lx0: 325.536547, ly0: 8.874045, lx1: 452.439579, ly1: -48.328458,  dstax: 344.941386, dstay: 0.127167,  dstbx: 431.907311, dstby: -39.073383 }
		];
	}
	
	public static function forCrossIn() : Array<Dynamic>
	{
		return [
			{ title: "cross-in-1",  cx: -400, cy: -300, crad: 40,  lx0: -400, ly0: -370, lx1: -400, ly1: -280,  dstax: -400, dstay: -340,  dstbx: -400, dstby: -260 }
			, { title: "cross-in-2",  cx: -200, cy: -300, crad: 30,  lx0: -260, ly0: -300, lx1: -180, ly1: -300,  dstax: -230, dstay: -300,  dstbx: -170, dstby: -300 }
			, { title: "cross-in-3",  cx: 4.330889, cy: -295.083827, crad: 37.657036,  lx0: -24.182221, ly0: -346.703447, lx1: 29.321054, ly1: -286.095003,  dstax: -9.52454, dstay: -330.099244,  dstbx: 37.357096, dstby: -276.991784 }
			, { title: "cross-in-4",  cx: 205.452968, cy: -294.12244, crad: 21.178455,  lx0: 167.847369, ly0: -268.018871, lx1: 199.550177, ly1: -307.508061,  dstax: 184.853946, dstay: -289.202355,  dstbx: 205.804101, dstby: -315.297984 }
			, { title: "cross-in-5",  cx: 394.653853, cy: -287.777288, crad: 46.95072,  lx0: 386.053236, ly0: -202.536411, lx1: 359.747697, ly1: -303.078661,  dstax: 374.894267, dstay: -245.187044,  dstbx: 356.567686, dstby: -315.232963 }
		];
	}
	
	public static function forCrossOut() : Array<Dynamic>
	{
		return [
			{ title: "cross-out-1",  cx: -400, cy: -600, crad: 40,  lx0: -400, ly0: -580, lx1: -400, ly1: -670,  dstax: -400, dstay: -560,  dstbx: -400, dstby: -640 }
			, { title: "cross-out-2",  cx: -200, cy: -600, crad: 30,  lx0: -180, ly0: -600, lx1: -260, ly1: -600,  dstax: -170, dstay: -600,  dstbx: -230, dstby: -600 }
			, { title: "cross-out-3",  cx: 4.330889, cy: -595.083827, crad: 37.657036,  lx0: 22.788699, ly0: -595.863659, lx1: -24.182221, ly1: -646.703447,  dstax: 38.376497, dstay: -578.991936,  dstbx: -9.02161, dstby: -630.294097 }
			, { title: "cross-out-4",  cx: 205.452968, cy: -594.12244, crad: 21.178455,  lx0: 199.402694, ly0: -607.324356, lx1: 167.847369, ly1: -568.018871,  dstax: 205.804101, dstay: -615.297984,  dstbx: 184.853946, dstby: -589.202355 }
			, { title: "cross-out-5",  cx: 394.653853, cy: -587.777288, crad: 46.95072,  lx0: 363.827332, ly0: -587.485913, lx1: 386.053236, ly1: -502.536411,  dstax: 356.567686, dstay: -615.232963,  dstbx: 374.894267, dstby: -545.187044 }
		];
	}
	
	public static function forInside() : Array<Dynamic>
	{
		return [
			{ title: "inside-1",  cx: -400, cy: -900, crad: 60,  lx0: -428.445773, ly0: -928.445773, lx1: -367.397724, ly1: -867.397724,  dstax: -442.426407, dstay: -942.426407,  dstbx: -357.573593, dstby: -857.573593 }
			, { title: "inside-2",  cx: -200, cy: -900, crad: 50,  lx0: -200, ly0: -936.989049, lx1: -200, ly1: -878.344466,  dstax: -200, dstay: -950,  dstbx: -200, dstby: -850 }
			, { title: "inside-3",  cx: 0, cy: -900, crad: 60,  lx0: -47.365186, ly0: -900, lx1: 38.678916, ly1: -900,  dstax: -60, dstay: -900,  dstbx: 60, dstby: -900 }
			, { title: "inside-4",  cx: 213.034809, cy: -892.981892, crad: 50.564183,  lx0: 246.679655, ly0: -918.385286, lx1: 197.559787, ly1: -926.497986,  dstax: 257.768462, dstay: -916.553844,  dstbx: 178.256453, dstby: -929.68615 }
			, { title: "inside-5",  cx: 421.090408, cy: -937.197281, crad: 59.751551,  lx0: 382.813699, ly0: -911.286308, lx1: 388.960134, ly1: -970.292082,  dstax: 380.906408, dstay: -892.976314,  dstbx: 390.882906, dstby: -988.750696 }
		];
	}
	
	public static function forTouch() : Array<Dynamic>
	{
		return [
			{ title: "touch-1",  cx: -400, cy: -1200, crad: 50,  lx0: -500, ly0: -1300, lx1: -435.355339, ly1: -1235.355339,  dstax: -435.355339, dstay: -1235.355339,  dstbx: -364.644661, dstby: -1164.644661 }
			, { title: "touch-2",  cx: -200, cy: -1200, crad: 31.622777,  lx0: -200, ly0: -1320, lx1: -200, ly1: -1231.622777,  dstax: -200, dstay: -1231.622777,  dstbx: -200, dstby: -1168.377223 }
			, { title: "touch-3",  cx: 0, cy: -1200, crad: 40,  lx0: 40, ly0: -1200, lx1: 131.146844, ly1: -1200,  dstax: -40, dstay: -1200,  dstbx: 40, dstby: -1200 }
			, { title: "touch-4",  cx: 213.509184, cy: -1211.9888, crad: 30.733607,  lx0: 243.969938, ly0: -1207.902598, lx1: 321.899756, ly1: -1244.726578,  dstax: 197.325081, dstay: -1185.861622,  dstbx: 243.969938, dstby: -1207.902598 }
			, { title: "touch-5",  cx: 392.926999, cy: -1193.714763, crad: 46.076084,  lx0: 436.320561, ly0: -1072.595764, lx1: 426.285159, ly1: -1161.930512,  dstax: 426.285159, dstay: -1161.930512,  dstbx: 418.401785, dstby: -1232.108002 }
		];
	}
	
	public static function forTangentIn() : Array<Dynamic>
	{
		return [
			{ title: "tangent-in-1",  cx: -400, cy: -1500, crad: 30,  lx0: -470, ly0: -1470, lx1: -430, ly1: -1470,  dstax: -400, dstay: -1470,  dstbx: -400, dstby: -1470 }
			, { title: "tangent-in-2",  cx: -200, cy: -1500, crad: 40,  lx0: -240, ly0: -1440, lx1: -240, ly1: -1480,  dstax: -240, dstay: -1500,  dstbx: -240, dstby: -1500 }
			, { title: "tangent-in-3",  cx: 0, cy: -1500, crad: 30,  lx0: 80, ly0: -1530, lx1: 30, ly1: -1530,  dstax: 0, dstay: -1530,  dstbx: 0, dstby: -1530 }
			, { title: "tangent-in-4",  cx: 200, cy: -1500, crad: 40,  lx0: 240, ly0: -1590, lx1: 240, ly1: -1530,  dstax: 240, dstay: -1500,  dstbx: 240, dstby: -1500 }
		];
	}
	
	public static function forTangentOut() : Array<Dynamic>
	{
		return [
			{ title: "tangent-out-1",  cx: -400, cy: -1800, crad: 30,  lx0: -430, ly0: -1770, lx1: -470, ly1: -1770,  dstax: -400, dstay: -1770,  dstbx: -400, dstby: -1770 }
			, { title: "tangent-out-2",  cx: -200, cy: -1800, crad: 40,  lx0: -240, ly0: -1780, lx1: -240, ly1: -1740,  dstax: -240, dstay: -1800,  dstbx: -240, dstby: -1800 }
			, { title: "tangent-out-3",  cx: 0, cy: -1800, crad: 30,  lx0: 30, ly0: -1830, lx1: 80, ly1: -1830,  dstax: 0, dstay: -1830,  dstbx: 0, dstby: -1830 }
			, { title: "tangent-out-4",  cx: 200, cy: -1800, crad: 40,  lx0: 240, ly0: -1830, lx1: 240, ly1: -1890,  dstax: 240, dstay: -1800,  dstbx: 240, dstby: -1800 }
		];
	}
	
	public static function forProjectIn() : Array<Dynamic>
	{
		return [
			{ title: "project-in-1",  cx: -400, cy: -2100, crad: 50.990195,  lx0: -500, ly0: -2200, lx1: -444.923669, ly1: -2144.923669,  dstax: -436.055513, dstay: -2136.055513,  dstbx: -363.944487, dstby: -2063.944487 }
			, { title: "project-in-2",  cx: -200, cy: -2100, crad: 31.622777,  lx0: -200, ly0: -2220, lx1: -200, ly1: -2144.150643,  dstax: -200, dstay: -2131.622777,  dstbx: -200, dstby: -2068.377223 }
			, { title: "project-in-3",  cx: 0, cy: -2100, crad: 40,  lx0: 131.146844, ly0: -2100, lx1: 57.42941, ly1: -2100,  dstax: 40, dstay: -2100,  dstbx: -40, dstby: -2100 }
			, { title: "project-in-4",  cx: 213.509184, cy: -2111.9888, crad: 30.733607,  lx0: 321.899756, ly0: -2144.726578, lx1: 274.742228, ly1: -2122.44335,  dstax: 243.969938, dstay: -2107.902598,  dstbx: 197.325081, dstby: -2085.861622 }
			, { title: "project-in-5",  cx: 392.926999, cy: -2093.714763, crad: 46.076084,  lx0: 436.320561, ly0: -1972.595764, lx1: 427.950733, ly1: -2047.103638,  dstax: 426.285159, dstay: -2061.930512,  dstbx: 418.401785, dstby: -2132.108002 }
		];
	}
	
	public static function forProjectOut() : Array<Dynamic>
	{
		return [
			{ title: "project-out-1",  cx: -400, cy: -2400, crad: 50.990195,  lx0: -444.923669, ly0: -2444.923669, lx1: -500, ly1: -2500,  dstax: -363.944487, dstay: -2363.944487,  dstbx: -436.055513, dstby: -2436.055513 }
			, { title: "project-out-2",  cx: -200, cy: -2400, crad: 31.622777,  lx0: -200, ly0: -2444.150643, lx1: -200, ly1: -2520,  dstax: -200, dstay: -2368.377223,  dstbx: -200, dstby: -2431.622777 }
			, { title: "project-out-3",  cx: 0, cy: -2400, crad: 40,  lx0: 57.42941, ly0: -2400, lx1: 131.146844, ly1: -2400,  dstax: -40, dstay: -2400,  dstbx: 40, dstby: -2400 }
			, { title: "project-out-4",  cx: 213.509184, cy: -2411.9888, crad: 30.733607,  lx0: 274.742228, ly0: -2422.44335, lx1: 321.899756, ly1: -2444.726578,  dstax: 197.325081, dstay: -2385.861622,  dstbx: 243.969938, dstby: -2407.902598 }
			, { title: "project-out-5",  cx: 392.926999, cy: -2393.714763, crad: 46.076084,  lx0: 427.950733, ly0: -2347.103638, lx1: 436.320561, ly1: -2272.595764,  dstax: 418.401785, dstay: -2432.108002,  dstbx: 426.285159, dstby: -2361.930512 }
		];
	}
	
	public static function forNone() : Array<Dynamic>
	{
		return [
			{ title: "none-1",  cx: -400, cy: -2700, crad: 40,  lx0: -380, ly0: -2770, lx1: -330, ly1: -2720,  dstax: "NOT_FINITE", dstay: "NOT_FINITE",  dstbx: "NOT_FINITE", dstby: "NOT_FINITE" }
			, { title: "none-2",  cx: -200, cy: -2700, crad: 30,  lx0: -250, ly0: -2740, lx1: -250, ly1: -2680,  dstax: "NOT_FINITE", dstay: "NOT_FINITE",  dstbx: "NOT_FINITE", dstby: "NOT_FINITE" }
			, { title: "none-3",  cx: 0, cy: -2700, crad: 50,  lx0: 30, ly0: -2770, lx1: -40, ly1: -2770,  dstax: "NOT_FINITE", dstay: "NOT_FINITE",  dstbx: "NOT_FINITE", dstby: "NOT_FINITE" }
			, { title: "none-4",  cx: 202.977044, cy: -2696.950653, crad: 31.767682,  lx0: 186.127879, ly0: -2739.149285, lx1: 268.038018, ly1: -2712.615015,  dstax: "NOT_FINITE", dstay: "NOT_FINITE",  dstbx: "NOT_FINITE", dstby: "NOT_FINITE" }
			, { title: "none-5",  cx: 407.17556, cy: -2709.064125, crad: 35.506807,  lx0: 449.163256, ly0: -2788.180002, lx1: 446.855928, ly1: -2696.46372,  dstax: "NOT_FINITE", dstay: "NOT_FINITE",  dstbx: "NOT_FINITE", dstby: "NOT_FINITE" }
		];
	}
}