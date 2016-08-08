package iodev.geom2.operations;

import data.VecopTestData;
import iodev.geom2.operations.Vecop2;
import iodev.geom2.Vec2;
import massive.munit.Assert;

class Vecop2_resTest
{
	@Test
	public function testAdd() : Void
	{
		for (data in VecopTestData.forAdd()) {
			trace(data.title);
			
			var a:Vec2 = new Vec2(data.ax, data.ay);
			var b:Vec2 = new Vec2(data.bx, data.by);
			var dst:Vec2 = Vecop2.add(a, b);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testSubtract() : Void
	{
		for (data in VecopTestData.forSub()) {
			trace(data.title);
			
			var a:Vec2 = new Vec2(data.ax, data.ay);
			var b:Vec2 = new Vec2(data.bx, data.by);
			var dst:Vec2 = Vecop2.subtract(a, b);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testMultiply() : Void
	{
		for (data in VecopTestData.forMul()) {
			trace(data.title);
			
			var a:Vec2 = new Vec2(data.ax, data.ay);
			var b:Vec2 = new Vec2(data.bx, data.by);
			var dst:Vec2 = Vecop2.multiply(a, b);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testDivide() : Void
	{
		for (data in VecopTestData.forDiv()) {
			trace(data.title);
			
			var a:Vec2 = new Vec2(data.ax, data.ay);
			var b:Vec2 = new Vec2(data.bx, data.by);
			var dst:Vec2 = Vecop2.divide(a, b);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testDotProd() : Void
	{
		for (data in VecopTestData.forDotProd()) {
			trace(data.title);
			
			var a:Vec2 = new Vec2(data.ax, data.ay);
			var b:Vec2 = new Vec2(data.bx, data.by);
			var res:Float = Vecop2.dotProd(a, b);
			
			MathAssert.floatEqual(data.res, res);
		}
	}

	@Test
	public function testSkewProd() : Void
	{
		for (data in VecopTestData.forSkewProd()) {
			trace(data.title);
			
			var a:Vec2 = new Vec2(data.ax, data.ay);
			var b:Vec2 = new Vec2(data.bx, data.by);
			var res:Float = Vecop2.skewProd(a, b);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testLengthBetween() : Void
	{
		for (data in VecopTestData.forLengthBetween()) {
			trace(data.title);
			
			var a:Vec2 = new Vec2(data.ax, data.ay);
			var b:Vec2 = new Vec2(data.bx, data.by);
			var res:Float = Vecop2.lengthBetween(a, b);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testMagnitudeBetween() : Void
	{
		for (data in VecopTestData.forMagnitudeBetween()) {
			trace(data.title);
			
			var a:Vec2 = new Vec2(data.ax, data.ay);
			var b:Vec2 = new Vec2(data.bx, data.by);
			var res:Float = Vecop2.magnitudeBetween(a, b);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testPolar() : Void
	{
		for (data in VecopTestData.forPolar()) {
			trace(data.title);
			
			var dst:Vec2 = Vecop2.polar(data.radians, data.len);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testRadiansOf() : Void
	{
		for (data in VecopTestData.forRadiansOf()) {
			trace(data.title);
			
			var v:Vec2 = new Vec2(data.x, data.y);
			var res:Float = Vecop2.radiansOf(v);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testRadiansBetween() : Void
	{
		for (data in VecopTestData.forRadiansBetween()) {
			trace(data.title);
			
			var a:Vec2 = new Vec2(data.ax, data.ay);
			var b:Vec2 = new Vec2(data.bx, data.by);
			var res:Float = Vecop2.radiansBetween(a, b);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testRadiansBetweenNormals() : Void
	{
		for (data in VecopTestData.forRadiansBetweenNormals()) {
			trace(data.title);
			
			var a:Vec2 = new Vec2(data.ax, data.ay);
			var b:Vec2 = new Vec2(data.bx, data.by);
			var res:Float = Vecop2.radiansBetweenNormals(a, b);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testRadiansBetweenNormals_unnormalized() : Void
	{
		for (data in VecopTestData.forRadiansBetween_notnormal()) {
			trace(data.title);
			
			var a:Vec2 = new Vec2(data.ax, data.ay);
			var b:Vec2 = new Vec2(data.bx, data.by);
			var res:Float = Vecop2.radiansBetweenNormals(a, b);
			
			MathAssert.floatNotEqual(data.res, res);
		}
	}
	
	@Test
	public function testNormalBisector() : Void
	{
		for (data in VecopTestData.forNormalBisector()) {
			trace(data.title);
			
			var a:Vec2 = new Vec2(data.ax, data.ay);
			var b:Vec2 = new Vec2(data.bx, data.by);
			var dst:Vec2 = Vecop2.normalBisector(a, b);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testRotate() : Void
	{
		for (data in VecopTestData.forRotate()) {
			trace(data.title);
			
			var v:Vec2 = new Vec2(data.x, data.y);
			var dst:Vec2 = Vecop2.rotate(v, data.rad);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testRotateQuart() : Void
	{
		for (data in VecopTestData.forRotateQuart()) {
			trace(data.title);
			
			var v:Vec2 = new Vec2(data.x, data.y);
			var dst:Vec2 = Vecop2.rotateQuart(v, data.times);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testMirrorBy() : Void
	{
		for (data in VecopTestData.forMirrorBy()) {
			trace(data.title);
			
			var v:Vec2 = new Vec2(data.vx, data.vy);
			var dir:Vec2 = new Vec2(data.dirx, data.diry);
			var dst:Vec2 = Vecop2.mirrorBy(v, dir);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testMirrorByNormal() : Void
	{
		for (data in VecopTestData.forMirrorByNormal()) {
			trace(data.title);
			
			var v:Vec2 = new Vec2(data.vx, data.vy);
			var dir:Vec2 = new Vec2(data.dirx, data.diry);
			var dst:Vec2 = Vecop2.mirrorByNormal(v, dir);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
}