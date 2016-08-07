package iodev.geom2.macros;

import iodev.geom2.Vec2;
import massive.munit.Assert;

class Vecop2Macros_resTest
{
	@Test
	public function testEquals():Void
	{
		var items:Array<Dynamic> = [
			{ ax: 0.0, ay: 0.0,  bx: 0.0, by: 0.0,  res: true }
			, { ax: 1.01, ay: -20.0,  bx: 1.01, by: -20.0,  res: true }
			, { ax: -1.01, ay: 20.0,  bx: 1.01, by: -20.0,  res: false }
			, { ax: 1.0, ay: 0.0,  bx: 0.0, by: 0.0,  res: false }
			, { ax: 1.0, ay: -2.1,  bx: 3.0, by: 1.0,  res: false }
			, { ax: Math.NEGATIVE_INFINITY, ay: 1.0,  bx: Math.NEGATIVE_INFINITY, by: 1.0,  res: true }
			, { ax: Math.NaN, ay: 1.0,  bx: Math.NaN, by: 1.0,  res: false }
		];
		
		for (item in items) {
			var a:Vec2 = new Vec2(item.ax, item.ay);
			var b:Vec2 = new Vec2(item.bx, item.by);
			var res:Bool = Vecop2Macros.equals(a.x, a.y, b.x, b.y);
			
			Assert.areEqual(res, item.res);
		}
	}
	
	
	@Test
	public function testNegate():Void
	{
		var items:Array<Dynamic> = [
			{ ax: 0.0, ay: 0.0,  dstx: 0.0, dsty: 0.0 }
			, { ax: 1.0, ay: 0.0,  dstx: -1.0, dsty: 0.0 }
			, { ax: 54.23414, ay: -2.1,  dstx: -54.23414, dsty: 2.1 }
			, { ax: -341.0, ay: -243.1,  dstx: 341.0, dsty: 243.1 }
			, { ax: Math.POSITIVE_INFINITY, ay: Math.NEGATIVE_INFINITY,  dstx: Math.NEGATIVE_INFINITY, dsty: Math.POSITIVE_INFINITY }
			, { ax: Math.NaN, ay: 0.0,  dstx: Math.NaN, dsty: 0.0 }
		];
		
		for (item in items) {
			var a:Vec2 = new Vec2(item.ax, item.ay);
			var dst:Vec2 = new Vec2();
			Vecop2Macros.negate(dst.x, dst.y, a.x, a.y);
			
			MathAssert.floatEqual(item.dstx, dst.x);
			MathAssert.floatEqual(item.dsty, dst.y);
		}
	}
	
	
	@Test
	public function testSwapXY():Void
	{
		var items:Array<Dynamic> = [
			{ ax: 0.0, ay: 0.0,  dstx: 0.0, dsty: 0.0 }
			, { ax: 1.0, ay: 0.0,  dstx: 0.0, dsty: 1.0 }
			, { ax: 54.23414, ay: -2.1,  dstx: -2.1, dsty: 54.23414 }
			, { ax: -341.0, ay: -243.1,  dstx: -243.1, dsty: -341.0 }
			, { ax: Math.POSITIVE_INFINITY, ay: Math.NEGATIVE_INFINITY,  dstx: Math.NEGATIVE_INFINITY, dsty: Math.POSITIVE_INFINITY }
			, { ax: Math.NaN, ay: 0.0,  dstx: 0.0, dsty: Math.NaN }
		];
		
		for (item in items) {
			var a:Vec2 = new Vec2(item.ax, item.ay);
			var dst:Vec2 = new Vec2();
			Vecop2Macros.swapXY(dst.x, dst.y, a.x, a.y);
			
			MathAssert.floatEqual(item.dstx, dst.x);
			MathAssert.floatEqual(item.dsty, dst.y);
		}
	}
	
	
	@Test
	public function testAdd():Void
	{
		var items:Array<Dynamic> = [
			{ ax: 0.0, ay: 0.0,  bx: 0.0, by: 0.0,  dstx: 0.0, dsty: 0.0 }
			, { ax: 1.0, ay: 0.0,  bx: 0.0, by: 0.0,  dstx: 1.0, dsty: 0.0 }
			, { ax: 1.0, ay: -2.1,  bx: 3.0, by: 1.0,  dstx: 4.0, dsty: -1.1 }
		];
		
		for (item in items) {
			var a:Vec2 = new Vec2(item.ax, item.ay);
			var b:Vec2 = new Vec2(item.bx, item.by);
			var dst:Vec2 = new Vec2();
			Vecop2Macros.add(dst.x, dst.y, a.x, a.y, b.x, b.y);
			
			MathAssert.floatEqual(item.dstx, dst.x);
			MathAssert.floatEqual(item.dsty, dst.y);
		}
	}
	
	
	@Test
	public function testSub():Void
	{
		var items:Array<Dynamic> = [
			{ ax: 0.0, ay: 0.0,  bx: 0.0, by: 0.0,  dstx: 0.0, dsty: 0.0 }
			, { ax: 1.0, ay: 0.0,  bx: 0.0, by: 0.0,  dstx: 1.0, dsty: 0.0 }
			, { ax: 1.0, ay: -2.1,  bx: 3.0, by: 1.0,  dstx: -2.0, dsty: -3.1 }
		];
		
		for (item in items) {
			var a:Vec2 = new Vec2(item.ax, item.ay);
			var b:Vec2 = new Vec2(item.bx, item.by);
			var dst:Vec2 = new Vec2();
			Vecop2Macros.sub(dst.x, dst.y, a.x, a.y, b.x, b.y);
			
			MathAssert.floatEqual(item.dstx, dst.x);
			MathAssert.floatEqual(item.dsty, dst.y);
		}
	}
	
	
	@Test
	public function testMul():Void
	{
		var items:Array<Dynamic> = [
			{ ax: 0.0, ay: 0.0,  bx: 0.0, by: 0.0,  dstx: 0.0, dsty: 0.0 }
			, { ax: 1.0, ay: 0.0,  bx: 0.0, by: 0.0,  dstx: 0.0, dsty: 0.0 }
			, { ax: 1.0, ay: -2.1,  bx: 3.0, by: 2.0,  dstx: 3.0, dsty: -4.2 }
		];
		
		for (item in items) {
			var a:Vec2 = new Vec2(item.ax, item.ay);
			var b:Vec2 = new Vec2(item.bx, item.by);
			var dst:Vec2 = new Vec2();
			Vecop2Macros.mul(dst.x, dst.y, a.x, a.y, b.x, b.y);
			
			MathAssert.floatEqual(item.dstx, dst.x);
			MathAssert.floatEqual(item.dsty, dst.y);
		}
	}
	
	
	@Test
	public function testDiv():Void
	{
		var items:Array<Dynamic> = [
			{ ax: 0.0, ay: 0.0,  bx: 0.0, by: 0.0,  dstx: Math.NaN, dsty: Math.NaN }
			, { ax: 0.0, ay: 0.0,  bx: 1.0, by: -3.0,  dstx: 0.0, dsty: 0.0 }
			, { ax: 1.0, ay: -4.2,  bx: 3.0, by: 2.0,  dstx: 0.33333, dsty: -2.1 }
		];
		
		for (item in items) {
			var a:Vec2 = new Vec2(item.ax, item.ay);
			var b:Vec2 = new Vec2(item.bx, item.by);
			var dst:Vec2 = new Vec2();
			Vecop2Macros.div(dst.x, dst.y, a.x, a.y, b.x, b.y);
			
			MathAssert.floatEqual(item.dstx, dst.x);
			MathAssert.floatEqual(item.dsty, dst.y);
		}
	}
	
	
	@Test
	public function testMagnitude():Void
	{
		var items:Array<Dynamic> = [
			{ x: 0.0,   y: 0.0,  mag: 0.0 }
			, { x: 1.0,   y: 0.0,  mag: 1.0 }
			, { x: 0.0, y: -2.0,  mag: 4.0 }
			, { x: 1.0,  y: -1.0,  mag: 2.0 }
		];
		
		for (item in items) {
			var vx:Float = item.x;
			var vy:Float = item.y;
			var mag:Float = Vecop2Macros.magnitude(vx, vy);
			MathAssert.floatEqual(item.mag, mag);
		}
	}
	
	@Test
	public function testMagnitudeBetween():Void
	{
		var items:Array<Dynamic> = [
			{ ax: 0.0, ay: 0.0, bx: 0.0, by: 0.0, res: 0.0 }
			, { ax: 2.0, ay: 0.0, bx: -1.0, by: -3.0, res: 18.0 }
			, { ax: 1.0, ay: -4.2, bx: 3.0, by: 2.0, res: 42.44 }
			, { ax: -38.96409149747342, ay: -48.07111429981887, bx: 40.19438698887825, by: 41.63253072183579, res: 14312.80864644523 }
			, { ax: -28.477004496380687, ay: -40.91400697361678, bx: -4.715183493681252, by: 34.78811744134873, res: 6295.435778303246 }
			, { ax: -46.28241539467126, ay: -9.67974488157779, bx: 11.831343290396035, by: -6.18134387768805, res: 3389.4477580902517 }
			, { ax: 0.3379691857844591, ay: -45.38187102880329, bx: 26.44029213115573, by: 31.278894771821797, res: 6558.204276282744 }
			, { ax: -17.822278337553144, ay: -12.160695623606443, bx: -21.072908607311547, by: -32.873678067699075, res: 439.5942388799591 }
			, { ax: -24.697448988445103, ay: 17.946900497190654, bx: -31.333478493615985, by: 45.23853969294578, res: 788.8704575847759 }
			, { ax: 1.7591102048754692, ay: -21.37788264080882, bx: -31.363432831130922, by: 4.821444675326347, res: 1783.507608990082 }
			, { ax: -6.044126371853054, ay: -25.546874897554517, bx: -11.131311976350844, by: 40.25179953314364, res: 4355.345014211622 }
			, { ax: -23.39778123423457, ay: -49.56638829316944, bx: -20.32672460190952, by: 20.323040895164013, res: 4893.963701110024 }
			, { ax: 24.80296918656677, ay: -3.721625986509025, bx: 49.16150670032948, by: 31.35373000986874, res: 1823.6189480820192 }
		];
		
		for (item in items) {
			var res:Float = Vecop2Macros.magnitudeBetween(item.ax, item.ay, item.bx, item.by);
			MathAssert.floatEqual(item.res, res);
		}
	}
	
	@Test
	public function testNormalize():Void
	{
		var items:Array<Dynamic> = [
			{ x: 0.0,   y: 0.001,  nlen: 0.0,  nx: 0.0,  ny: 0.0 }
			, { x: 1.0,  y: -10.0,  nlen: 0.0,  nx: 0.0,  ny: 0.0 }
			, { x: 1.0,  y: 0.0,  nlen: 1.0,  nx: 1.0,  ny: 0.0 }
			, { x: 10.0,  y: 0.0,  nlen: 0.5,  nx: 0.5,  ny: 0.0 }
			, { x: 10.0,  y: 0.0,  nlen: 5.0,  nx: 5.0,  ny: 0.0 }
			, { x: 1456.546,  y: -103.4578,  nlen: 16.357,  nx: 16.31589334,  ny: -1.158910484128135 }
		];
		
		for (item in items) {
			var nx:Float = 0;
			var ny:Float = 0;
			Vecop2Macros.normalize(nx, ny, item.x, item.y, item.nlen);
			
			MathAssert.floatEqual(item.nx, nx);
			MathAssert.floatEqual(item.ny, ny);
		}
	}
	
	@Test
	public function testNormalizeByZero():Void
	{
		var vx:Float = 1.0;
		var vy:Float = 0.0;
		var nx:Float, ny:Float;
		Vecop2Macros.normalize(nx, ny, vx, vy, 0.0);
		
		MathAssert.floatEqual(0.0, nx);
		MathAssert.floatEqual(0.0, ny);
	}
	
	@Test
	public function testNormalizeByInfinity():Void
	{
		var vx:Float = 1.0;
		var vy:Float = 0.1;
		var nx:Float, ny:Float;
		Vecop2Macros.normalize(nx, ny, vx, vy, Math.POSITIVE_INFINITY);
		
		MathAssert.floatEqual(Math.POSITIVE_INFINITY, nx);
		MathAssert.floatEqual(Math.POSITIVE_INFINITY, ny);
	}
	
	@Test
	public function testNormalizeZeroLength():Void
	{
		var vx:Float = 0.0;
		var vy:Float = 0.0;
		var nx:Float, ny:Float;
		Vecop2Macros.normalize(nx, ny, vx, vy, 1.0);
		
		Assert.isNaN(nx);
		Assert.isNaN(ny);
		
		vx = 0.0;
		vy = 0.0;
		Vecop2Macros.normalize(nx, ny, vx, vy, 0.0);
		
		Assert.isNaN(nx);
		Assert.isNaN(ny);
	}
	
	@Test
	public function testNormalizeInfinityLength():Void
	{
		var vx:Float = Math.POSITIVE_INFINITY;
		var vy:Float = Math.POSITIVE_INFINITY;
		var nx:Float, ny:Float;
		Vecop2Macros.normalize(nx, ny, vx, vy, 1.0);
		
		Assert.isNaN(nx);
		Assert.isNaN(ny);
		
		vx = Math.POSITIVE_INFINITY;
		vy = Math.POSITIVE_INFINITY;
		Vecop2Macros.normalize(nx, ny, vx, vy, 0.0);
		
		Assert.isNaN(nx);
		Assert.isNaN(ny);
	}
	
	
	@Test
	public function testLength():Void
	{
		var items:Array<Dynamic> = [
			{ x: 0.0,   y: 0.0,  len: 0.0 }
			, { x: 1.0,   y: 0.0,  len: 1.0 }
			, { x: 0.0, y: -2.0,  len: 2.0 }
			, { x: 1.0,  y: -1.0,  len: 1.41421356 }
		];
		
		for (item in items) {
			var vx:Float = item.x;
			var vy:Float = item.y;
			var len:Float = Vecop2Macros.length(vx, vy);
			
			MathAssert.floatEqual(item.len, len);
		}
	}
	
	
	@Test
	public function testLengthBetween():Void
	{
		var items:Array<Dynamic> = [
			{ ax: 0.0, ay: 0.0, bx: 0.0, by: 0.0, res: 0.0 }
			, { ax: 2.0, ay: 0.0, bx: -1.0, by: -3.0, res: 4.242640687119285 }
			, { ax: 1.0, ay: -4.2, bx: 3.0, by: 2.0, res: 6.514598989960933 }
			, { ax: -22.220536414533854, ay: -24.781520827673376, bx: 0.8620108710601926, by: 3.173346002586186, res: 36.2529801352831 }
			, { ax: -23.458581953309476, ay: -46.47534827236086, bx: 11.273438460193574, by: 35.08489611558616, res: 88.64754202247029 }
			, { ax: 5.682936403900385, ay: 25.33840574324131, bx: -35.23991843685508, by: 10.706756240688264, res: 43.459926547143446 }
			, { ax: 17.617744277231395, ay: 35.90192322153598, bx: 36.449413327500224, by: 7.8260248294100165, res: 33.80662405126892 }
			, { ax: -21.748583437874913, ay: -15.01226609107107, bx: -46.94942878559232, by: -35.63151000998914, res: 32.56126266021344 }
			, { ax: -48.710581683553755, ay: 10.31326747033745, bx: 22.797767934389412, by: 43.28649442177266, res: 78.74438240708251 }
			, { ax: -7.253401610068977, ay: -40.721820504404604, bx: -39.292955002747476, by: 22.987509076483548, res: 71.31207231071417 }
			, { ax: -34.850347763858736, ay: 35.83398952614516, bx: 11.504359543323517, by: -1.7751858802512288, res: 59.69262068533787 }
			, { ax: 43.42229473404586, ay: 41.396211134269834, bx: 11.552519258111715, by: -33.629608480259776, res: 81.51414722438302 }
			, { ax: 45.4042972298339, ay: -10.42542567010969, bx: -33.30966159701347, by: 13.354177493602037, res: 82.22747011077401 }
		];
		
		for (item in items) {
			var res:Float = Vecop2Macros.lengthBetween(item.ax, item.ay, item.bx, item.by);
			MathAssert.floatEqual(item.res, res);
		}
	}
	
	
	@Test
	public function testDotProd():Void
	{
		var items:Array<Dynamic> = [
			{ ax: 0.0, ay: 0.0, bx: 0.0, by: 0.0, res: 0.0 }
			, { ax: 2.0, ay: 0.0, bx: -1.0, by: -3.0, res: -2.0 }
			, { ax: 1.0, ay: -4.2, bx: 3.0, by: 2.0, res: -5.4 }
			, { ax: 47.04338014125824, ay: 41.600377997383475, bx: -7.775258366018534, by: 49.848217284306884, res: 1707.9302465137625 }
			, { ax: 13.895986741408706, ay: 32.130327518098056, bx: 33.63645456265658, by: -10.840066755190492, res: 119.11683146835526 }
			, { ax: -9.384664660319686, ay: 31.32027257233858, bx: 28.89059311710298, by: 8.493502135388553, res: -5.109726267642202 }
			, { ax: 12.495414796285331, ay: -33.63708222750574, bx: 11.544698313809931, by: 25.364289293065667, res: -708.9248904640624 }
			, { ax: 30.630953120999038, ay: -12.730123731307685, bx: 0.7369721308350563, by: -49.46204936131835, res: 652.2321671647222 }
			, { ax: -39.45935405790806, ay: 21.81887098122388, bx: -5.340210371650755, by: -34.585622837767005, res: -543.8979907038286 }
			, { ax: 8.180483686737716, ay: -31.08943896368146, bx: -43.09277778957039, by: 11.445035133510828, res: -708.3394869442687 }
			, { ax: 27.631175983697176, ay: 2.5192717788740993, bx: -15.129962493665516, by: 31.017273082397878, res: -339.9177155550934 }
			, { ax: -46.24206635635346, ay: 18.34020607639104, bx: -39.26879654172808, by: -41.21174004394561, res: 1060.0384902441137 }
			, { ax: 27.5544814998284, ay: 19.330651429481804, bx: 31.365368771366775, by: 41.50482788681984, res: 1666.5718340666713 }
		];
		
		for (item in items) {
			var res:Float = Vecop2Macros.dotProd(item.ax, item.ay, item.bx, item.by);
			MathAssert.floatEqual(item.res, res);
		}
	}
	

	@Test
	public function testSkewProd():Void
	{
		var items:Array<Dynamic> = [
			{ ax: 0.0, ay: 0.0, bx: 0.0, by: 0.0, res: 0.0 }
			, { ax: 2.0, ay: 0.0, bx: -1.0, by: -3.0, res: -6.0 }
			, { ax: 1.0, ay: -4.2, bx: 3.0, by: 2.0, res: 14.6 }
			, { ax: -31.5633233403787, ay: 0.9075907059013844, bx: 26.655443920753896, by: 9.39316563308239, res: -320.6717572308643 }
			, { ax: 33.405668660998344, ay: 28.653522254899144, bx: 34.452908602543175, by: 10.346550238318741, res: -641.5637543433277 }
			, { ax: 23.420891305431724, ay: -21.65605081245303, bx: -46.27028307877481, by: 8.640190144069493, res: -799.670647238019 }
			, { ax: -42.99659754615277, ay: 45.28900713194162, bx: 9.87201298121363, by: -33.14346980769187, res: 977.9627662915884 }
			, { ax: 10.824489081278443, ay: 40.02647218294442, bx: 14.365277579054236, by: -7.316884398460388, res: -654.1929186984006 }
			, { ax: 13.029147568158805, ay: 3.5721450811252, bx: -32.70659688860178, by: -12.275223759934306, res: -43.10299260438964 }
			, { ax: 14.901434327475727, ay: -41.062885290011764, bx: 11.082433257251978, by: -9.253554814495146, res: 317.18544621285315 }
			, { ax: -3.5290833096951246, ay: 20.008989213965833, bx: -37.96465874183923, by: -28.654310735873878, res: 860.7578970461452 }
			, { ax: -36.96292138192803, ay: 45.57672147639096, bx: -2.5320588378235698, by: -3.272634372115135, res: 236.36906742160613 }
			, { ax: 43.8064054120332, ay: -20.471213897690177, bx: 15.215010056272149, by: 13.754338724538684, res: 913.9978636590236 }
		];
		
		for (item in items) {
			var res:Float = Vecop2Macros.skewProd(item.ax, item.ay, item.bx, item.by);
			MathAssert.floatEqual(item.res, res);
		}
	}
	
	
	@Test
	public function testPolar():Void
	{
		var items:Array<Dynamic> = [
			{ radians: 0.0,  len: 0.0,  dstx: 0.0, dsty: 0.0 }
			, { radians: 0.0,  len: 1.0,  dstx: 1.0, dsty: 0.0 }
			, { radians: 0.0,  len: 11.742,  dstx: 11.742, dsty: 0.0 }
			, { radians: 1.5707963267948966,  len: 11.742,  dstx: 0.0, dsty: 11.742 }
			, { radians: 3.141592653589793,  len: 11.742,  dstx: -11.742 , dsty: 0.0 }
			, { radians: 14.509838470257819, len: 0.17437741626054049, dstx: -0.0634916679090821, dsty: 0.16240779355629656 }
			, { radians: 6.252936506643891, len: 14.13229804020375, dstx: 14.125833077949785, dsty: -0.4274198767563454 }
			, { radians: -8.688094490207732, len: -9.643486887216568, dstx: 7.142938346062579, dsty: 6.478832543619775 }
			, { radians: -34.74226433318108, len: -16.380987549200654, dstx: 16.10223389993207, dsty: -3.009122217349316 }
			, { radians: -24.98743024189025, len: -11.59700124990195, dstx: -11.474779558229361, dsty: -1.6792474743970873 }
			, { radians: 42.49081136658788, len: 46.303243935108185, dstx: 3.668486704683142, dsty: -46.157692795586044 }
			, { radians: -2.3477925453335047, len: 18.95254955161363, dstx: -13.28840614824936, dsty: -13.513600428662178 }
			, { radians: 14.018593775108457, len: 41.752883372828364, dstx: 4.9391787511121965, dsty: 41.45971277287831 }
			, { radians: 41.17666238453239, len: -47.137765446677804, dstx: 44.50252642614957, dsty: 15.540079568518024 }
			, { radians: -31.610971386544406, len: 40.85586192086339, dstx: 40.08119302449997, dsty: -7.918296472691001 }
		];
		
		for (item in items) {
			var dstx, dsty;
			Vecop2Macros.polar(dstx, dsty, item.radians, item.len);
			
			MathAssert.floatEqual(item.dstx, dstx);
			MathAssert.floatEqual(item.dsty, dsty);
		}
	}
	
	
	@Test
	public function testRadiansOf():Void
	{
		var items:Array<Dynamic> = [
			{ x: 0.0, y: 0.0, res: 0.0 }
			, { x: 1.0, y: 0.0, res: 0.0 }
			, { x: 0.0, y: 1.0, res: 1.5707963267948966 }
			, { x: 0.0, y: -1.0, res: -1.5707963267948966 }
			, { x: -1.0, y: 0.0, res: 3.141592653589793 }
			, { x: -27.568654040805995, y: 37.242086487822235, res: 2.2080316380770757 }
			, { x: -0.16655644867569208, y: 47.726040333509445, res: 1.574286156903415 }
			, { x: -49.202754511497915, y: 36.68372789397836, res: 2.500937609237117 }
			, { x: 31.515119643881917, y: 42.41541980300099, res: 0.9317832622272681 }
			, { x: -13.976780651137233, y: 23.565658484585583, res: 2.1061264922614558 }
			, { x: -11.307154153473675, y: -30.703870835714042, res: -1.9236491090633192 }
			, { x: 8.540880121290684, y: -33.845746237784624, res: -1.323609734282312 }
			, { x: 48.24588450137526, y: 22.986004245467484, res: 0.4446181153236716 }
			, { x: 37.64873093459755, y: 44.32667447254062, res: 0.8666814461990682 }
			, { x: -41.51440777350217, y: -31.13270888570696, res: -2.4981392900374573 }
		];
		
		for (item in items) {
			var res:Float = Vecop2Macros.radiansOf(item.x, item.y);
			MathAssert.floatEqual(item.res, res);
		}
	}
	
	
	@Test
	public function testRadiansBetween():Void
	{
		var items:Array<Dynamic> = [
			{ ax: 0.0, ay: 0.0, bx: 0.0, by: 0.0, res: Math.NaN }
			, { ax: 1.0, ay: 0.0, bx: 0.0, by: 0.0, res: Math.NaN }
			, { ax: 1.0, ay: 0.0, bx: 1.0, by: 0.0, res: 0.0 }
			, { ax: 0.0, ay: -1.0, bx: 0.0, by: -1.0, res: 0.0 }
			, { ax: -1.0, ay: 1.0, bx: -1.0, by: 1.0, res: 0.0 }
			, { ax: -10.0, ay: 0.1, bx: -10.0, by: 0.1, res: 0.0 }
			, { ax: -10.0, ay: 0.0, bx: 0.0, by: 0.1, res: 1.5707963267948966 }
			, { ax: 10.0, ay: 0.0, bx: 0.0, by: 0.1, res: 1.5707963267948966 }
			, { ax: 10.0, ay: 0.1, bx: -0.1, by: 10.0, res: 1.5707963267948966 }
			, { ax: 10.0, ay: 0.1, bx: -10.0, by: -0.1, res: 3.141592653589793 }
			, { ax: 38.19597293186883, ay: -18.51688402526394, bx: 9.757460034348483, by: 5.217162212371741, res: 0.9424113819368083 }
			, { ax: 28.393740041669254, ay: 15.878574055696113, bx: 10.352626989773286, by: 15.055349857096763, res: 0.4585150243854874 }
			, { ax: -83.3952854416544, ay: -36.32413368093553, bx: -21.421696769942944, by: 42.11167310024376, res: 1.511008436069265 }
			, { ax: -71.25884887558314, ay: -7.921986049537702, bx: -82.36755412414998, by: 2.8443954966558382, res: 0.14523657293194292 }
			, { ax: -1.3245845565364525, ay: 1.6210676419366956, bx: -35.604384982232624, by: 10.413432159515175, res: 0.6011714779593884 }
			, { ax: 36.36138803278546, ay: 5.896933122530507, bx: 1.7781581247346803, by: 31.35231899870623, res: 1.3533657385095772 }
			, { ax: -39.24901017307988, ay: -11.0044699380445, bx: 0.0895634445938724, by: 2.4977002199888534, res: 1.8799964186541083 }
			, { ax: -20.515759458872726, ay: -24.292915685641933, bx: -55.32077130750409, by: -39.33215666536997, res: 0.2514350715885403 }
			, { ax: -37.06479090162807, ay: -44.17686699080061, bx: -53.41854762087541, by: 77.7278330235114, res: 1.841395724700266 }
			, { ax: -15.295348196379907, ay: -70.7276612709782, bx: -36.69991704345685, by: 43.1809999520649, res: 2.2241742059204452 }
		];
		
		for (item in items) {
			var res:Float = Vecop2Macros.radiansBetween(item.ax, item.ay, item.bx, item.by);
			MathAssert.floatEqual(item.res, res);
		}
	}
	
	
	@Test
	public function testRadiansBetweenNormals():Void
	{
		var items:Array<Dynamic> = [
			{ ax: 0.0, ay: 0.0, bx: 0.0, by: 0.0, res: 1.5707963267948966 }
			, { ax: 1.0, ay: 0.0, bx: 0.0, by: 0.0, res: 1.5707963267948966 }
			, { ax: 1.0, ay: 0.0, bx: 1.0, by: 0.0, res: 0.0 }
			, { ax: 0.0, ay: -1.0, bx: 0.0, by: -1.0, res: 0.0 }
			, { ax: 1.0, ay: 0.0, bx: 0.0, by: 1.0, res: 1.5707963267948966 }
			, { ax: 1.0, ay: 0.0, bx: 0.0, by: -1.0, res: 1.5707963267948966 }
			, { ax: 1.0, ay: 0.0, bx: -1.0, by: 0.0, res: 3.141592653589793 }
			, { ax: -0.17424853098411236, ay: -0.9847017058225698, bx: -0.2539700431525964, by: 0.9672120849023074, res: 2.7096673985349264 }
			, { ax: 0.6181470482248117, ay: -0.7860624827397326, bx: -0.6573430400476058, by: 0.7535914859530803, res: 3.0906883226600845 }
			, { ax: -0.9159576755565045, ay: 0.4012748890587661, bx: 0.775802355850649, by: -0.6309759937244704, res: 2.8716903273716863 }
			, { ax: -0.7720909511931137, ay: 0.6355120479469394, bx: -0.9248072530053542, by: -0.38043599302470155, res: 1.078939228412481 }
			, { ax: 0.80219331825753, ay: -0.5970643852575475, bx: -0.23707989769829207, by: -0.9714901554351271, res: 1.1703186551209628 }
			, { ax: 0.9921357487816692, ay: 0.1251665130513611, bx: 0.744600362441626, by: 0.6675105244502136, res: 0.6053647219734043 }
			, { ax: -0.7021979178585697, ay: 0.7119818004381078, bx: 0.982437589825841, by: 0.18659148452486432, res: 2.161584636893666 }
			, { ax: -0.7785378320539624, ay: -0.6275976769083169, bx: 0.986943577651767, by: 0.1610663668551898, res: 2.6249000119073114 }
			, { ax: 0.19279544970968474, ay: 0.981238969146273, bx: 0.5850624022567444, by: 0.8109882770210475, res: 0.4309467501133504 }
			, { ax: -0.8018508378369592, ay: 0.5975242537840338, bx: 0.9488072039063575, by: 0.31585580541664854, res: 2.1798241502883253 }
		];
		
		for (item in items) {
			var res:Float = Vecop2Macros.radiansBetweenNormals(item.ax, item.ay, item.bx, item.by);
			MathAssert.floatEqual(item.res, res);
		}
	}
	
	@Test
	public function testRadiansBetweenNormals_unnormalized():Void
	{
		var items:Array<Dynamic> = [
			{ ax: -1.0, ay: 1.0, bx: -1.0, by: 1.0, res: 0.0 }
			, { ax: -10.0, ay: 0.7, bx: -10.0, by: 0.7, res: 0.0 }
			, { ax: 10.0, ay: 0.7, bx: -10.0, by: -0.7, res: 3.141592653589793 }
			, { ax: 38.19597293186883, ay: -18.51688402526394, bx: 9.757460034348483, by: 5.217162212371741, res: 0.9424113819368083 }
			, { ax: 28.393740041669254, ay: 15.878574055696113, bx: 10.352626989773286, by: 15.055349857096763, res: 0.4585150243854874 }
			, { ax: -83.3952854416544, ay: -36.32413368093553, bx: -21.421696769942944, by: 42.11167310024376, res: 1.511008436069265 }
			, { ax: -71.25884887558314, ay: -7.921986049537702, bx: -82.36755412414998, by: 2.8443954966558382, res: 0.14523657293194292 }
			, { ax: -1.3245845565364525, ay: 1.6210676419366956, bx: -35.604384982232624, by: 10.413432159515175, res: 0.6011714779593884 }
			, { ax: 36.36138803278546, ay: 5.896933122530507, bx: 1.7781581247346803, by: 31.35231899870623, res: 1.3533657385095772 }
			, { ax: -39.24901017307988, ay: -11.0044699380445, bx: 0.0895634445938724, by: 2.4977002199888534, res: 1.8799964186541083 }
			, { ax: -20.515759458872726, ay: -24.292915685641933, bx: -55.32077130750409, by: -39.33215666536997, res: 0.2514350715885403 }
			, { ax: -37.06479090162807, ay: -44.17686699080061, bx: -53.41854762087541, by: 77.7278330235114, res: 1.841395724700266 }
			, { ax: -15.295348196379907, ay: -70.7276612709782, bx: -36.69991704345685, by: 43.1809999520649, res: 2.2241742059204452 }
		];
		
		for (item in items) {
			var res:Float = Vecop2Macros.radiansBetweenNormals(item.ax, item.ay, item.bx, item.by);
			MathAssert.floatNotEqual(item.res, res);
		}
	}
	
	
	@Test
	public function testNormalBisector():Void
	{
		var items:Array<Dynamic> = [
			{ ax: 0.0, ay: 0.0, bx: 0.0, by: 0.0, dstx: Math.NaN, dsty: Math.NaN }
			, { ax: 1.0, ay: 0.0, bx: -1.0, by: 0.0, dstx: Math.NaN, dsty: Math.NaN }
			, { ax: 1.0, ay: 0.0, bx: 1.0, by: 0.0, dstx: 1.0, dsty: 0.0 }
			, { ax: 777.0, ay: 0.0, bx: 0.13, by: 0.0, dstx: 1.0, dsty: 0.0 }
			, { ax: 777.0, ay: 777.0, bx: 0.13, by: 0.13, dstx: 0.7071067811865475, dsty: 0.7071067811865475 }
			, { ax: 0.8987595052710436, ay: -0.4384419593115476, bx: -0.6334226515230947, by: 0.7738060122133015, dstx: 0.6204733657504913, dsty: 0.7842275195338768 }
			, { ax: -0.9300793462853079, ay: -0.36735869339583394, bx: -0.9461479315957312, by: 0.32373460046328023, dstx: -0.9997298058828112, dsty: -0.02324468174694177 }
			, { ax: 0.6883388353674831, ay: -0.7253893076996221, bx: -0.396418268676861, by: -0.9180700170788937, dstx: 0.17488815927891835, dsty: -0.9845883057115962 }
			, { ax: 0.8329695705099865, ay: 0.5533188001544936, bx: -0.4142859575803549, by: -0.9101467713241246, dstx: 0.7610892599818776, dsty: -0.6486471601265499 }
			, { ax: 0.9997558878398577, ay: -0.022094450197683944, bx: -0.9890770148308524, by: 0.14739965648972778, dstx: 0.08491509072377285, dsty: 0.9963881911019287 }
			, { ax: -0.6849834017594324, ay: 0.7285586725268433, bx: -0.9569460230561077, by: 0.29026592799896334, dstx: -0.8497106516310231, dsty: 0.5272492849732298 }
			, { ax: 0.22537046545568967, ay: -0.9742731410134869, bx: -0.43401225807990873, by: 0.9009069651392305, dstx: -0.9433758302156627, dsty: -0.33172585513479186 }
			, { ax: -0.8084909853295303, ay: 0.5885085612298984, bx: 0.40539363715633053, by: 0.9141422203099261, dstx: -0.25909686993000974, dsty: 0.96585134052424 }
			, { ax: 0.9830992922224067, ay: -0.1830731592336876, bx: -0.9170345939247182, by: -0.39880766485277996, dstx: 0.11281170293444602, dsty: -0.9936163845675202 }
			, { ax: -0.12147805839163929, ay: 0.9925941171140384, bx: -0.9503336475134021, by: 0.31123296484124663, dstx: -0.6350262499971127, dsty: 0.7724905577510993 }
		];
		
		for (item in items) {
			var dstx, dsty;
			Vecop2Macros.normalBisector(dstx, dsty, item.ax, item.ay, item.bx, item.by);
			
			MathAssert.floatEqual(item.dstx, dstx);
			MathAssert.floatEqual(item.dsty, dsty);
		}
	}
	
	
	@Test
	public function testRotate():Void
	{
		var items:Array<Dynamic> = [
			{ x: 0.0, y: 0.0, rad: 0.0, dstx: 0.0, dsty: 0.0 }
			, { x: 0.0, y: 0.0, rad: 10.0, dstx: 0.0, dsty: 0.0 }
			, { x: 1.0, y: 0.0, rad: 0.0, dstx: 1.0, dsty: 0.0 }
			, { x: 1.0, y: 0.0, rad: 1.5707963267948966, dstx: 0.0, dsty: 1.0 }
			, { x: 1.0, y: 0.0, rad: -1.5707963267948966, dstx: 0.0, dsty: -1.0 }
			, { x: 1.0, y: 2.0, rad: 1.5707963267948966, dstx: -2.0, dsty: 1.0 }
			, { x: 1.0, y: 2.0, rad: 3.141592653589793, dstx: -1.0, dsty: -2.0 }
			, { x: -3.013579332013442, y: -3.000822925372475, rad: -3.181268088519573, dstx: 3.1302354663042946, dsty: 2.8789276728098505 }
			, { x: 4.705043723843297, y: 1.8347091013910575, rad: -0.42722708312794566, dstx: 5.042355294348116, dsty: -0.27972668010739576 }
			, { x: -1.3964926983165067, y: 2.481885543801475, rad: 2.187229513656348, dstx: -1.2177316299338519, dsty: -2.5743110508329616 }
			, { x: -2.058277176520919, y: 4.518319678369592, rad: 4.344833008944988, dstx: 4.956146201171824, dsty: 0.2972078127151414 }
			, { x: 1.8665824508204363, y: 2.7124298022395674, rad: 0.6560787605121732, dstx: -0.1755593476975412, dsty: 3.2879453148165676 }
			, { x: -0.9245365670316769, y: 0.26326060992164085, rad: -0.23840986425057054, dstx: -0.8362147591471811, dsty: 0.4741507029410106 }
			, { x: -4.870204705674042, y: 2.447505417115033, rad: -1.596584536600858, dstx: 2.572271568352119, dsty: 4.805475587350782 }
			, { x: -0.2799353275637007, y: 0.35087944300724744, rad: -0.07702389499172568, dstx: -0.2521059681718761, dsty: 0.3713795254929835 }
			, { x: -7.826530029369389, y: 5.7000803817835015, rad: 3.760652400087565, dstx: 9.6817008155971, dsty: -0.1007867882233421 }
			, { x: -1.1817468536321514, y: -5.8868629400884345, rad: 4.044634641613811, dstx: -3.890682168041147, dsty: 4.5732125654448605 }
		];
		
		for (item in items) {
			var dstx, dsty;
			Vecop2Macros.rotate(dstx, dsty, item.x, item.y, item.rad);
			
			MathAssert.floatEqual(item.dstx, dstx);
			MathAssert.floatEqual(item.dsty, dsty);
		}
	}
	
	
	@Test
	public function testRotateQuart():Void
	{
		var items:Array<Dynamic> = [
			{ x: 0.0, y: 0.0, times: 0, dstx: 0.0, dsty: 0.0 }
			, { x: 0.0, y: 0.0, times: 17, dstx: 0.0, dsty: 0.0 }
			, { x: 1.0, y: 0.0, times: 0, dstx: 1.0, dsty: 0.0 }
			, { x: 1.0, y: 0.0, times: 1, dstx: 0.0, dsty: 1.0 }
			, { x: 1.0, y: 0.0, times: -1, dstx: 0.0, dsty: -1.0 }
			, { x: 1.0, y: 2.0, times: 1, dstx: -2.0, dsty: 1.0 }
			, { x: 1.0, y: 2.0, times: 2, dstx: -1.0, dsty: -2.0 }
			, { x: 4.274210721872946, y: 4.483460162338479, times: -28, dstx: 4.274210721872938, dsty: 4.483460162338486 }
			, { x: -0.008215158387224517, y: 0.003349779995701022, times: 30, dstx: 0.0082151583872245, dsty: -0.003349779995701066 }
			, { x: -4.324447908070471, y: 2.3902853454368405, times: -35, dstx: -2.3902853454368236, dsty: -4.324447908070481 }
			, { x: -1.460307419982559, y: 1.163484382462644, times: -38, dstx: 1.460307419982566, dsty: -1.163484382462635 }
			, { x: 0.6240253008423334, y: -4.7830663948362595, times: 48, dstx: 0.6240253008423193, dsty: -4.78306639483626 }
			, { x: -2.8544411213547995, y: -5.441135411383697, times: -19, dstx: 5.441135411383705, dsty: -2.8544411213547836 }
			, { x: -6.744545330689634, y: 5.520133996571679, times: -45, dstx: 5.520133996571673, dsty: 6.744545330689641 }
			, { x: -2.3524160221137755, y: 2.0820337609806714, times: -36, dstx: -2.35241602211378, dsty: 2.082033760980666 }
			, { x: -5.164123281832695, y: -6.413223461143079, times: -10, dstx: 5.164123281832691, dsty: 6.413223461143081 }
			, { x: 3.662873228471797, y: -8.008855972630144, times: 2, dstx: -3.662873228471796, dsty: 8.008855972630144 }
		];
		
		for (item in items) {
			var times:Int = item.times;
			var dstx, dsty;
			Vecop2Macros.rotateQuart(dstx, dsty, item.x, item.y, times);
			
			MathAssert.floatEqual(item.dstx, dstx);
			MathAssert.floatEqual(item.dsty, dsty);
		}
	}
	
	
	@Test
	public function testMirrorBy():Void {
		var items:Array<Dynamic> = [
			{ vx: 1.0, vy: 0.0, dirx: 0.0, diry: 1.0, dstx: -1.0, dsty: 0.0 }
			, { vx: 1.0, vy: 2.0, dirx: 0.0, diry: 1.0, dstx: -1.0, dsty: 2.0 }
			, { vx: 1.0, vy: 2.0, dirx: 0.0, diry: -1.0, dstx: -1.0, dsty: 2.0 }
			, { vx: 1.0, vy: 2.0, dirx: 1.0, diry: 0.0, dstx: 1.0, dsty: -2.0 }
			, { vx: 1.0, vy: 2.0, dirx: -1.0, diry: 0.0, dstx: 1.0, dsty: -2.0 }
			, { vx: 3.4775319998888943, vy: 4.062027327607352, dirx: -2.042367781754823, diry: 5.589339639666629, dstx: -5.277166250555775, dsty: 0.8630244402537464 }
			, { vx: 2.3525030712809825, vy: -0.5148572858079316, dirx: 4.556621331791734, diry: -1.971458656670129, dstx: 1.985899056868291, dsty: -1.3621870873949724 }
			, { vx: 9.286157706620472, vy: 1.714082318296426, dirx: -1.5735851565178411, diry: -3.2600095317922473, dstx: -4.434572031888044, dsty: 8.336988307543653 }
			, { vx: 3.419074564410317, vy: -3.86396108818317, dirx: -1.5807050176728439, diry: -1.3236867487455155, dstx: -3.203487687451018, dsty: 4.044494134541549 }
			, { vx: -1.7214649141196774, vy: 1.0882601464590007, dirx: -5.654557064969443, diry: 8.027556783132951, dstx: -0.4450032213812917, dsty: 1.9873911869273013 }
			, { vx: -3.618878082192606, vy: -1.7886413156193008, dirx: 1.2478141420956794, diry: -2.7207121561474206, dstx: 3.716563474850907, dsty: 1.5756497920282069 }
			, { vx: -0.5689450025573392, vy: -3.858809884456279, dirx: -6.46806961191773, diry: -6.46760085037266, dstx: -3.8588511090668685, dsty: -0.5686653307226095 }
			, { vx: -1.665164737629622, vy: 5.205694030041662, dirx: -0.5119580963114118, diry: 8.813009821460428, dstx: 1.0511884077070028, dsty: 5.363490176122162 }
			, { vx: 4.286269267710801, vy: -1.2156279309929119, dirx: -5.5036706466287, diry: 2.308362599523776, dstx: 3.8710045193523452, dsty: -2.2057151931031154 }
			, { vx: -4.741823090622956, vy: 1.1615816500307872, dirx: -5.119429756919686, diry: -3.5494749752765355, dstx: -0.5751577863725535, dsty: -4.848025543788761 }
		];
		
		for (item in items) {
			var dstx, dsty;
			Vecop2Macros.mirrorBy(dstx, dsty, item.vx, item.vy, item.dirx, item.diry);
			
			MathAssert.floatEqual(item.dstx, dstx);
			MathAssert.floatEqual(item.dsty, dsty);
		}
	}
	
	
	@Test
	public function testMirrorByNormal():Void {
		var items:Array<Dynamic> = [
			{ vx: 1.0, vy: 0.0, dirx: 0.0, diry: 1.0, dstx: -1.0, dsty: 0.0 }
			, { vx: 1.0, vy: 2.0, dirx: 0.0, diry: 1.0, dstx: -1.0, dsty: 2.0 }
			, { vx: 1.0, vy: 2.0, dirx: 0.0, diry: -1.0, dstx: -1.0, dsty: 2.0 }
			, { vx: 1.0, vy: 2.0, dirx: 1.0, diry: 0.0, dstx: 1.0, dsty: -2.0 }
			, { vx: 1.0, vy: 2.0, dirx: -1.0, diry: 0.0, dstx: 1.0, dsty: -2.0 }
			, { vx: -2.9785884580489568, vy: 4.22093814337464, dirx: 0.21584550386560125, diry: 0.9764275285247772, dstx: 4.48023653850637, dsty: 2.5721175267957475 }
			, { vx: -7.22106307992534, vy: -0.662600516419793, dirx: 0.46061726405015524, diry: 0.8875988598792529, dstx: 3.61510260413551, dsty: -6.286002275706975 }
			, { vx: -8.911013857463038, vy: -1.9736681924727193, dirx: 0.5374697879155235, diry: 0.8432830053297897, dstx: 1.9736101297159108, dsty: -8.911026717374355 }
			, { vx: 4.916940818240452, vy: 0.5104302368979239, dirx: -0.921031152291162, diry: -0.3894889170556904, dstx: 3.7913398110199563, dsty: 3.172158330568308 }
			, { vx: 2.0805257961464236, vy: 0.7901166436416659, dirx: -0.7852951748233292, diry: 0.6191215457397657, dstx: -0.2827517024310359, dsty: -2.2074699032518277 }
			, { vx: 0.3795992338395784, vy: -0.5375241258390443, dirx: -0.9189893163430373, diry: -0.3942824323341797, dstx: -0.12795915197370544, dsty: 0.6454875828525238 }
			, { vx: -3.9789661647355117, vy: -7.342764056670765, dirx: -0.9998899508881192, diry: -0.014835299557291003, dstx: -4.19505496729772, dsty: 7.221486658119426 }
			, { vx: -0.22480493974186158, vy: 2.197346499049321, dirx: -0.3547508897588984, diry: -0.9349608581193493, dstx: 1.6258461954359849, dsty: 1.495156529130974 }
			, { vx: -3.508627491771716, vy: -0.5222887353499306, dirx: -0.9320882112866169, diry: 0.3622313713367673, dstx: -2.2352001203540093, dsty: 2.75447505362803 }
			, { vx: -1.2104542424460163, vy: 5.0361597762568975, dirx: 0.20256308911148355, diry: -0.9792692147359751, dstx: -0.8868635557353385, dsty: 5.103094923529442 }
		];
		
		for (item in items) {
			var dstx, dsty;
			Vecop2Macros.mirrorByNormal(dstx, dsty, item.vx, item.vy, item.dirx, item.diry);
			
			MathAssert.floatEqual(item.dstx, dstx);
			MathAssert.floatEqual(item.dsty, dsty);
		}
	}
}