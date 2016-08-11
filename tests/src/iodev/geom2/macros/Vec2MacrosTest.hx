package iodev.geom2.macros;

import data.Vec2TestData;
import iodev.geom2.Vec2;
import massive.munit.Assert;

class Vec2MacrosTest
{
	@Test
	public function testEquals() : Void
	{
		for (data in Vec2TestData.forEquals()) {
			trace(data.title);
			
			var a = new Vec2(data.ax, data.ay);
			var b = new Vec2(data.bx, data.by);
			var res = Vec2Macros.equals(a.x, a.y, b.x, b.y);
			
			Assert.areEqual(res, data.res);
		}
	}
	
	@Test
	public function testNegate() : Void
	{
		for (data in Vec2TestData.forNegate()) {
			trace(data.title);
			
			var a = new Vec2(data.ax, data.ay);
			var dst = new Vec2();
			Vec2Macros.negate(dst.x, dst.y, a.x, a.y);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testSwapXY() : Void
	{
		for (data in Vec2TestData.forSwapXY()) {
			trace(data.title);
			
			var a = new Vec2(data.ax, data.ay);
			var dst = new Vec2();
			Vec2Macros.swapXY(dst.x, dst.y, a.x, a.y);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testAdd() : Void
	{
		for (data in Vec2TestData.forAdd()) {
			trace(data.title);
			
			var a = new Vec2(data.ax, data.ay);
			var b = new Vec2(data.bx, data.by);
			var dst = new Vec2();
			Vec2Macros.add(dst.x, dst.y, a.x, a.y, b.x, b.y);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testSub() : Void
	{
		for (data in Vec2TestData.forSub()) {
			trace(data.title);
			
			var a = new Vec2(data.ax, data.ay);
			var b = new Vec2(data.bx, data.by);
			var dst = new Vec2();
			Vec2Macros.sub(dst.x, dst.y, a.x, a.y, b.x, b.y);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testMul() : Void
	{
		for (data in Vec2TestData.forMul()) {
			trace(data.title);
			
			var a = new Vec2(data.ax, data.ay);
			var b = new Vec2(data.bx, data.by);
			var dst = new Vec2();
			Vec2Macros.mul(dst.x, dst.y, a.x, a.y, b.x, b.y);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testDiv() : Void
	{
		for (data in Vec2TestData.forDiv()) {
			trace(data.title);
			
			var a = new Vec2(data.ax, data.ay);
			var b = new Vec2(data.bx, data.by);
			var dst = new Vec2();
			Vec2Macros.div(dst.x, dst.y, a.x, a.y, b.x, b.y);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testMagnitude() : Void
	{
		for (data in Vec2TestData.forMagnitude()) {
			trace(data.title);
			
			var mag = Vec2Macros.magnitude(data.x, data.y);
			
			MathAssert.floatEqual(data.mag, mag);
		}
	}
	
	@Test
	public function testMagnitudeBetween() : Void
	{
		for (data in Vec2TestData.forMagnitudeBetween()) {
			trace(data.title);
			
			var res = Vec2Macros.magnitudeBetween(data.ax, data.ay, data.bx, data.by);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testNormalize() : Void
	{
		for (data in Vec2TestData.forNormalize()) {
			trace(data.title);
			
			var nx:Float = 0;
			var ny:Float = 0;
			Vec2Macros.normalize(nx, ny, data.x, data.y, data.nlen);
			
			MathAssert.floatEqual(data.nx, nx);
			MathAssert.floatEqual(data.ny, ny);
		}
	}
	
	@Test
	public function testLength() : Void
	{
		for (data in Vec2TestData.forLength()) {
			trace(data.title);
			
			var vx:Float = data.x;
			var vy:Float = data.y;
			var len:Float = Vec2Macros.length(vx, vy);
			
			MathAssert.floatEqual(data.len, len);
		}
	}
	
	
	@Test
	public function testLengthBetween() : Void
	{
		for (data in Vec2TestData.forLengthBetween()) {
			trace(data.title);
			
			var res:Float = Vec2Macros.lengthBetween(data.ax, data.ay, data.bx, data.by);
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	
	@Test
	public function testDotProd() : Void
	{
		for (data in Vec2TestData.forDotProd()) {
			trace(data.title);
			
			var res:Float = Vec2Macros.dotProd(data.ax, data.ay, data.bx, data.by);
			MathAssert.floatEqual(data.res, res);
		}
	}
	

	@Test
	public function testSkewProd() : Void
	{
		for (data in Vec2TestData.forSkewProd()) {
			trace(data.title);
			
			var res:Float = Vec2Macros.skewProd(data.ax, data.ay, data.bx, data.by);
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	
	@Test
	public function testPolar() : Void
	{
		for (data in Vec2TestData.forPolar()) {
			trace(data.title);
			
			var dstx, dsty;
			Vec2Macros.polar(dstx, dsty, data.radians, data.len);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	
	@Test
	public function testRadiansOf() : Void
	{
		for (data in Vec2TestData.forRadiansOf()) {
			trace(data.title);
			
			var res:Float = Vec2Macros.radiansOf(data.x, data.y);
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	
	@Test
	public function testRadiansBetween() : Void
	{
		for (data in Vec2TestData.forRadiansBetween()) {
			trace(data.title);
			
			var res:Float = Vec2Macros.radiansBetween(data.ax, data.ay, data.bx, data.by);
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	
	@Test
	public function testRadiansBetweenNormals() : Void
	{
		for (data in Vec2TestData.forRadiansBetweenNormals()) {
			trace(data.title);
			
			var res:Float = Vec2Macros.radiansBetweenNormals(data.ax, data.ay, data.bx, data.by);
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testRadiansBetweenNormals_unnormalized() : Void
	{
		for (data in Vec2TestData.forRadiansBetween_notnormal()) {
			trace(data.title);
			
			var res:Float = Vec2Macros.radiansBetweenNormals(data.ax, data.ay, data.bx, data.by);
			MathAssert.floatNotEqual(data.res, res);
		}
	}
	
	
	@Test
	public function testNormalBisector() : Void
	{
		for (data in Vec2TestData.forNormalBisector()) {
			trace(data.title);
			
			var dstx, dsty;
			Vec2Macros.normalBisector(dstx, dsty, data.ax, data.ay, data.bx, data.by);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	
	@Test
	public function testRotate() : Void
	{
		for (data in Vec2TestData.forRotate()) {
			trace(data.title);
			
			var dstx, dsty;
			Vec2Macros.rotate(dstx, dsty, data.x, data.y, data.rad);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	
	@Test
	public function testRotateQuart() : Void
	{
		for (data in Vec2TestData.forRotateQuart()) {
			trace(data.title);
			
			var times:Int = data.times;
			var dstx, dsty;
			Vec2Macros.rotateQuart(dstx, dsty, data.x, data.y, times);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	
	@Test
	public function testMirrorBy() : Void
	{
		for (data in Vec2TestData.forMirrorBy()) {
			trace(data.title);
			
			var dstx, dsty;
			Vec2Macros.mirrorBy(dstx, dsty, data.vx, data.vy, data.dirx, data.diry);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	
	@Test
	public function testMirrorByNormal() : Void
	{
		for (data in Vec2TestData.forMirrorByNormal()) {
			trace(data.title);
			
			var dstx, dsty;
			Vec2Macros.mirrorByNormal(dstx, dsty, data.vx, data.vy, data.dirx, data.diry);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
}