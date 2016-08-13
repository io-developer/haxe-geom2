package iodev.geom2.macros;

import data.VecTestData;
import iodev.geom2.Vec;
import massive.munit.Assert;

class VecMacrosTest
{
	@Test
	public function testEquals() : Void
	{
		for (data in VecTestData.forEquals()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var b = new Vec(data.bx, data.by);
			var res = VecMacros.equals(a.x, a.y, b.x, b.y);
			
			Assert.areEqual(res, data.res);
		}
	}
	
	@Test
	public function testNegate() : Void
	{
		for (data in VecTestData.forNegate()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var dst = new Vec();
			VecMacros.negate(dst.x, dst.y, a.x, a.y);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testSwapXY() : Void
	{
		for (data in VecTestData.forSwapXY()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var dst = new Vec();
			VecMacros.swapXY(dst.x, dst.y, a.x, a.y);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testAdd() : Void
	{
		for (data in VecTestData.forAdd()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var b = new Vec(data.bx, data.by);
			var dst = new Vec();
			VecMacros.add(dst.x, dst.y, a.x, a.y, b.x, b.y);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testSub() : Void
	{
		for (data in VecTestData.forSub()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var b = new Vec(data.bx, data.by);
			var dst = new Vec();
			VecMacros.sub(dst.x, dst.y, a.x, a.y, b.x, b.y);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testMul() : Void
	{
		for (data in VecTestData.forMul()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var b = new Vec(data.bx, data.by);
			var dst = new Vec();
			VecMacros.mul(dst.x, dst.y, a.x, a.y, b.x, b.y);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testDiv() : Void
	{
		for (data in VecTestData.forDiv()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var b = new Vec(data.bx, data.by);
			var dst = new Vec();
			VecMacros.div(dst.x, dst.y, a.x, a.y, b.x, b.y);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testMagnitude() : Void
	{
		for (data in VecTestData.forMagnitude()) {
			trace(data.title);
			
			var mag = VecMacros.magnitude(data.x, data.y);
			
			MathAssert.floatEqual(data.mag, mag);
		}
	}
	
	@Test
	public function testMagnitudeBetween() : Void
	{
		for (data in VecTestData.forMagnitudeBetween()) {
			trace(data.title);
			
			var res = VecMacros.magnitudeBetween(data.ax, data.ay, data.bx, data.by);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testNormalize() : Void
	{
		for (data in VecTestData.forNormalize()) {
			trace(data.title);
			
			var nx:Float = 0;
			var ny:Float = 0;
			VecMacros.normalize(nx, ny, data.x, data.y, data.nlen);
			
			MathAssert.floatEqual(data.nx, nx);
			MathAssert.floatEqual(data.ny, ny);
		}
	}
	
	@Test
	public function testLength() : Void
	{
		for (data in VecTestData.forLength()) {
			trace(data.title);
			
			var vx:Float = data.x;
			var vy:Float = data.y;
			var len:Float = VecMacros.length(vx, vy);
			
			MathAssert.floatEqual(data.len, len);
		}
	}
	
	
	@Test
	public function testLengthBetween() : Void
	{
		for (data in VecTestData.forLengthBetween()) {
			trace(data.title);
			
			var res:Float = VecMacros.lengthBetween(data.ax, data.ay, data.bx, data.by);
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	
	@Test
	public function testDotProd() : Void
	{
		for (data in VecTestData.forDotProd()) {
			trace(data.title);
			
			var res:Float = VecMacros.dotProd(data.ax, data.ay, data.bx, data.by);
			MathAssert.floatEqual(data.res, res);
		}
	}
	

	@Test
	public function testSkewProd() : Void
	{
		for (data in VecTestData.forSkewProd()) {
			trace(data.title);
			
			var res:Float = VecMacros.skewProd(data.ax, data.ay, data.bx, data.by);
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	
	@Test
	public function testPolar() : Void
	{
		for (data in VecTestData.forPolar()) {
			trace(data.title);
			
			var dstx, dsty;
			VecMacros.polar(dstx, dsty, data.radians, data.len);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	
	@Test
	public function testRadiansOf() : Void
	{
		for (data in VecTestData.forRadiansOf()) {
			trace(data.title);
			
			var res:Float = VecMacros.radiansOf(data.x, data.y);
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	
	@Test
	public function testRadiansBetween() : Void
	{
		for (data in VecTestData.forRadiansBetween()) {
			trace(data.title);
			
			var res:Float = VecMacros.radiansBetween(data.ax, data.ay, data.bx, data.by);
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	
	@Test
	public function testRadiansBetweenNormals() : Void
	{
		for (data in VecTestData.forRadiansBetweenNormals()) {
			trace(data.title);
			
			var res:Float = VecMacros.radiansBetweenNormals(data.ax, data.ay, data.bx, data.by);
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testRadiansBetweenNormals_unnormalized() : Void
	{
		for (data in VecTestData.forRadiansBetween_notnormal()) {
			trace(data.title);
			
			var res:Float = VecMacros.radiansBetweenNormals(data.ax, data.ay, data.bx, data.by);
			MathAssert.floatNotEqual(data.res, res);
		}
	}
	
	
	@Test
	public function testNormalBisector() : Void
	{
		for (data in VecTestData.forNormalBisector()) {
			trace(data.title);
			
			var dstx, dsty;
			VecMacros.normalBisector(dstx, dsty, data.ax, data.ay, data.bx, data.by);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	
	@Test
	public function testRotate() : Void
	{
		for (data in VecTestData.forRotate()) {
			trace(data.title);
			
			var dstx, dsty;
			VecMacros.rotate(dstx, dsty, data.x, data.y, data.rad);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	
	@Test
	public function testRotateQuart() : Void
	{
		for (data in VecTestData.forRotateQuart()) {
			trace(data.title);
			
			var times:Int = data.times;
			var dstx, dsty;
			VecMacros.rotateQuart(dstx, dsty, data.x, data.y, times);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	
	@Test
	public function testMirrorBy() : Void
	{
		for (data in VecTestData.forMirrorBy()) {
			trace(data.title);
			
			var dstx, dsty;
			VecMacros.mirrorBy(dstx, dsty, data.vx, data.vy, data.dirx, data.diry);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	
	@Test
	public function testMirrorByNormal() : Void
	{
		for (data in VecTestData.forMirrorByNormal()) {
			trace(data.title);
			
			var dstx, dsty;
			VecMacros.mirrorByNormal(dstx, dsty, data.vx, data.vy, data.dirx, data.diry);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
}