package iodev.geom2;
import data.Vec2TestData;
import massive.munit.Assert;

class Vec2BuilderTest
{
	/*    STATIC    */
	
	@Test
	public function testCreate() : Void
	{
		var b = Vec2Builder.create();
		
		Assert.isType(b, Vec2Builder);
	}
	
	@Test
	public function testFromXY() : Void
	{
		var x = Math.random();
		var y = Math.random();
		var b = Vec2Builder.fromXY(x, y);
		
		Assert.isType(b, Vec2Builder);
		MathAssert.floatEqual(x, b.toX());
		MathAssert.floatEqual(y, b.toY());
	}
	
	@Test
	public function testFromVec() : Void
	{
		var x = Math.random();
		var y = Math.random();
		var b = Vec2Builder.fromVec(new Vec2(x, y));
		
		Assert.isType(b, Vec2Builder);
		MathAssert.floatEqual(x, b.toX());
		MathAssert.floatEqual(y, b.toY());
	}
	
	@Test
	public function testFromPolar() : Void
	{
		for (data in Vec2TestData.forPolar()) {
			trace(data.title);
			
			var b = Vec2Builder.fromPolar(data.radians, data.len);
			
			Assert.isType(b, Vec2Builder);
			MathAssert.floatEqual(data.dstx, b.toX());
			MathAssert.floatEqual(data.dsty, b.toY());
		}
	}
	
	
	
	/*    INSTANCE    */
	
	@Test
	public function testConstructorDefaults() : Void
	{
		var b = new Vec2Builder();
		
		MathAssert.floatEqual(0.0, b.toX());
		MathAssert.floatEqual(0.0, b.toY());
	}
	
	@Test
	public function testConstructorParams() : Void
	{
		var x = 1000000 * (0.5 - Math.random());
		var y = 1000000 * (0.5 - Math.random());
		var b = new Vec2Builder(x, y);
		
		MathAssert.floatEqual(x, b.toX());
		MathAssert.floatEqual(y, b.toY());
	}
	
	@Test
	public function testSetX() : Void
	{
		var x = Math.random();
		var b = Vec2Builder.create();
		var res = b.setX(x);
		
		Assert.areEqual(b, res);
		MathAssert.floatEqual(x, b.toX());
	}
	
	@Test
	public function testSetY() : Void
	{
		var y = Math.random();
		var b = Vec2Builder.create();
		var res = b.setY(y);
		
		Assert.areEqual(b, res);
		MathAssert.floatEqual(y, b.toY());
	}
	
	@Test
	public function testSetXY() : Void
	{
		var x = Math.random();
		var y = Math.random();
		var b = Vec2Builder.create();
		var res = b.setXY(x, y);
		
		Assert.areEqual(b, res);
		MathAssert.floatEqual(x, b.toX());
		MathAssert.floatEqual(y, b.toY());
	}
	
	@Test
	public function testSetPolar() : Void
	{
		for (data in Vec2TestData.forPolar()) {
			trace(data.title);
			
			var b = Vec2Builder.create();
			var res = b.setPolar(data.radians, data.len);
			
			Assert.areEqual(b, res);
			MathAssert.floatEqual(data.dstx, b.toX());
			MathAssert.floatEqual(data.dsty, b.toY());
		}
	}
	
	@Test
	public function testNegate() : Void
	{
		for (data in Vec2TestData.forNegate()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.ax, data.ay);
			var res = b.negate();
			
			Assert.areEqual(b, res);
			MathAssert.floatEqual(data.dstx, b.toX());
			MathAssert.floatEqual(data.dsty, b.toY());
		}
	}
	
	@Test
	public function testSwapXY() : Void
	{
		for (data in Vec2TestData.forSwapXY()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.ax, data.ay);
			var res = b.swapXY();
			
			Assert.areEqual(b, res);
			MathAssert.floatEqual(data.dstx, b.toX());
			MathAssert.floatEqual(data.dsty, b.toY());
		}
	}
	
	@Test
	public function testNormalize() : Void
	{
		for (data in Vec2TestData.forNormalize()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.x, data.y);
			var res = b.normalize(data.nlen);
			
			Assert.areEqual(b, res);
			MathAssert.floatEqual(data.nx, b.toX());
			MathAssert.floatEqual(data.ny, b.toY());
		}
	}
	
	@Test
	public function testAdd() : Void
	{
		for (data in Vec2TestData.forAdd()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.ax, data.ay);
			var res = b.add(Vec2.fromXY(data.bx, data.by));
			
			Assert.areEqual(b, res);
			MathAssert.floatEqual(data.dstx, b.toX());
			MathAssert.floatEqual(data.dsty, b.toY());
		}
	}
	
	@Test
	public function testAddXY() : Void
	{
		for (data in Vec2TestData.forAdd()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.ax, data.ay);
			var res = b.addXY(data.bx, data.by);
			
			Assert.areEqual(b, res);
			MathAssert.floatEqual(data.dstx, b.toX());
			MathAssert.floatEqual(data.dsty, b.toY());
		}
	}
	
	@Test
	public function testSubtract() : Void
	{
		for (data in Vec2TestData.forSub()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.ax, data.ay);
			var res = b.subtract(Vec2.fromXY(data.bx, data.by));
			
			Assert.areEqual(b, res);
			MathAssert.floatEqual(data.dstx, b.toX());
			MathAssert.floatEqual(data.dsty, b.toY());
		}
	}
	
	@Test
	public function testSubtractXY() : Void
	{
		for (data in Vec2TestData.forSub()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.ax, data.ay);
			var res = b.subtractXY(data.bx, data.by);
			
			Assert.areEqual(b, res);
			MathAssert.floatEqual(data.dstx, b.toX());
			MathAssert.floatEqual(data.dsty, b.toY());
		}
	}
	
	@Test
	public function testMultiply() : Void
	{
		for (data in Vec2TestData.forMul()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.ax, data.ay);
			var res = b.multiply(Vec2.fromXY(data.bx, data.by));
			
			Assert.areEqual(b, res);
			MathAssert.floatEqual(data.dstx, b.toX());
			MathAssert.floatEqual(data.dsty, b.toY());
		}
	}
	
	@Test
	public function testMultiplyXY() : Void
	{
		for (data in Vec2TestData.forMul()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.ax, data.ay);
			var res = b.multiplyXY(data.bx, data.by);
			
			Assert.areEqual(b, res);
			MathAssert.floatEqual(data.dstx, b.toX());
			MathAssert.floatEqual(data.dsty, b.toY());
		}
	}
	
	@Test
	public function testDivide() : Void
	{
		for (data in Vec2TestData.forDiv()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.ax, data.ay);
			var res = b.divide(Vec2.fromXY(data.bx, data.by));
			
			Assert.areEqual(b, res);
			MathAssert.floatEqual(data.dstx, b.toX());
			MathAssert.floatEqual(data.dsty, b.toY());
		}
	}
	
	@Test
	public function testDivideXY() : Void
	{
		for (data in Vec2TestData.forDiv()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.ax, data.ay);
			var res = b.divideXY(data.bx, data.by);
			
			Assert.areEqual(b, res);
			MathAssert.floatEqual(data.dstx, b.toX());
			MathAssert.floatEqual(data.dsty, b.toY());
		}
	}
	
	@Test
	public function testRotate() : Void
	{
		for (data in Vec2TestData.forRotate()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.x, data.y);
			var res = b.rotate(data.rad);
			
			Assert.areEqual(b, res);
			MathAssert.floatEqual(data.dstx, b.toX());
			MathAssert.floatEqual(data.dsty, b.toY());
		}
	}
	
	@Test
	public function testRotateQuart() : Void
	{
		for (data in Vec2TestData.forRotateQuart()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.x, data.y);
			var res = b.rotateQuart(data.times);
			
			Assert.areEqual(b, res);
			MathAssert.floatEqual(data.dstx, b.toX());
			MathAssert.floatEqual(data.dsty, b.toY());
		}
	}
	
	@Test
	public function testMirrorBy() : Void
	{
		for (data in Vec2TestData.forMirrorBy()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.vx, data.vy);
			var res = b.mirrorBy(Vec2.fromXY(data.dirx, data.diry));
			
			Assert.areEqual(b, res);
			MathAssert.floatEqual(data.dstx, b.toX());
			MathAssert.floatEqual(data.dsty, b.toY());
		}
	}
	
	@Test
	public function testMirrorByXY() : Void
	{
		for (data in Vec2TestData.forMirrorBy()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.vx, data.vy);
			var res = b.mirrorByXY(data.dirx, data.diry);
			
			Assert.areEqual(b, res);
			MathAssert.floatEqual(data.dstx, b.toX());
			MathAssert.floatEqual(data.dsty, b.toY());
		}
	}
	
	@Test
	public function testMirrorByNormal() : Void
	{
		for (data in Vec2TestData.forMirrorByNormal()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.vx, data.vy);
			var res = b.mirrorByNormal(Vec2.fromXY(data.dirx, data.diry));
			
			Assert.areEqual(b, res);
			MathAssert.floatEqual(data.dstx, b.toX());
			MathAssert.floatEqual(data.dsty, b.toY());
		}
	}
	
	@Test
	public function testMirrorByNormalXY() : Void
	{
		for (data in Vec2TestData.forMirrorByNormal()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.vx, data.vy);
			var res = b.mirrorByNormalXY(data.dirx, data.diry);
			
			Assert.areEqual(b, res);
			MathAssert.floatEqual(data.dstx, b.toX());
			MathAssert.floatEqual(data.dsty, b.toY());
		}
	}
	
	@Test
	public function testToVec() : Void
	{
		var x = Math.random();
		var y = Math.random();
		var b = Vec2Builder.fromXY(x, y);
		var v = b.toVec();
		
		Assert.isType(v, Vec2);
		MathAssert.floatEqual(x, v.x);
		MathAssert.floatEqual(y, v.y);
	}
	
	@Test
	public function testToVecSpecified() : Void
	{
		var x = Math.random();
		var y = Math.random();
		var dst = new Vec2();
		var b = Vec2Builder.fromXY(x, y);
		var v = b.toVecSpecified(dst);
		
		Assert.areEqual(dst, v);
		MathAssert.floatEqual(x, v.x);
		MathAssert.floatEqual(y, v.y);
	}
	
	@Test
	public function testToX() : Void
	{
		var x = Math.random();
		var b = Vec2Builder.fromXY(x, 0);
		
		MathAssert.floatEqual(x, b.toX());
	}
	
	@Test
	public function testToY() : Void
	{
		var y = Math.random();
		var b = Vec2Builder.fromXY(0, y);
		
		MathAssert.floatEqual(y, b.toY());
	}
	
	@Test
	public function testToLength() : Void
	{
		for (data in Vec2TestData.forLength()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.x, data.y);
			
			MathAssert.floatEqual(data.len, b.toLength());
		}
	}
	
	@Test
	public function testToMagnitude() : Void
	{
		for (data in Vec2TestData.forMagnitude()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.x, data.y);
			
			MathAssert.floatEqual(data.mag, b.toMagnitude());
		}
	}
	
	@Test
	public function testToRadians() : Void
	{
		for (data in Vec2TestData.forRadiansOf()) {
			trace(data.title);
			
			var b = Vec2Builder.fromXY(data.x, data.y);
			
			MathAssert.floatEqual(data.res, b.toRadians());
		}
	}
}