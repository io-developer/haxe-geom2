package iodev.geom2;

import data.VecTestData;
import iodev.geom2.Vec;
import massive.munit.Assert;

class Vec2Test
{
	/*    STATIC    */
	
	@Test
	public function testFromXY() : Void
	{
		var x = Math.random();
		var y = Math.random();
		var v = Vec.fromXY(x, y);
		
		MathAssert.floatEqual(x, v.x);
		MathAssert.floatEqual(y, v.y);
	}
	
	@Test
	public function testFromPolar() : Void
	{
		for (data in VecTestData.forPolar()) {
			trace(data.title);
			
			var v = Vec.fromPolar(data.radians, data.len);
			MathAssert.floatEqual(data.dstx, v.x);
			MathAssert.floatEqual(data.dsty, v.y);
		}
	}
	
	@Test
	public function testFromAdd() : Void
	{
		for (data in VecTestData.forAdd()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var b = new Vec(data.bx, data.by);
			var dst = Vec.fromAdd(a, b);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testFromSub() : Void
	{
		for (data in VecTestData.forSub()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var b = new Vec(data.bx, data.by);
			var dst = Vec.fromSub(a, b);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testFromMul() : Void
	{
		for (data in VecTestData.forMul()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var b = new Vec(data.bx, data.by);
			var dst = Vec.fromMul(a, b);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testFromDiv() : Void
	{
		for (data in VecTestData.forDiv()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var b = new Vec(data.bx, data.by);
			var dst = Vec.fromDiv(a, b);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testNormalBisectorFrom() : Void
	{
		for (data in VecTestData.forNormalBisector()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var b = new Vec(data.bx, data.by);
			var dst = Vec.normalBisectorFrom(a, b);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testEquals() : Void
	{
		for (data in VecTestData.forEquals()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var b = new Vec(data.bx, data.by);
			var res = Vec.equals(a, b);
			
			Assert.areEqual(data.res, res);
		}
	}
	
	@Test
	public function testDotProd() : Void
	{
		for (data in VecTestData.forDotProd()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var b = new Vec(data.bx, data.by);
			var res = Vec.dotProd(a, b);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testSkewProd() : Void
	{
		for (data in VecTestData.forSkewProd()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var b = new Vec(data.bx, data.by);
			var res = Vec.skewProd(a, b);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testLengthBentween() : Void
	{
		for (data in VecTestData.forLengthBetween()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var b = new Vec(data.bx, data.by);
			var res = Vec.lengthBetween(a, b);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testMagnitudeBetween() : Void
	{
		for (data in VecTestData.forMagnitudeBetween()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var b = new Vec(data.bx, data.by);
			var res = Vec.magnitudeBetween(a, b);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testRadiansBetween() : Void
	{
		for (data in VecTestData.forRadiansBetween()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var b = new Vec(data.bx, data.by);
			var res = Vec.radiansBetween(a, b);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testRadiansBetweenNormals() : Void
	{
		for (data in VecTestData.forRadiansBetweenNormals()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var b = new Vec(data.bx, data.by);
			var res = Vec.radiansBetweenNormals(a, b);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testRadiansBetweenNormals_notnormal() : Void
	{
		for (data in VecTestData.forRadiansBetween_notnormal()) {
			trace(data.title);
			
			var a = new Vec(data.ax, data.ay);
			var b = new Vec(data.bx, data.by);
			var res = Vec.radiansBetweenNormals(a, b);
			
			MathAssert.floatNotEqual(data.res, res);
		}
	}
	
	
	
	/*    INSTANCE    */
	
	@Test
	public function testConstructorDefaults() : Void
	{
		var v:Vec = new Vec();
		
		MathAssert.floatEqual(0.0, v.x);
		MathAssert.floatEqual(0.0, v.y);
	}
	
	@Test
	public function testConstructorParams() : Void
	{
		var x:Float = 1000000 * (0.5 - Math.random());
		var y:Float = 1000000 * (0.5 - Math.random());
		
		var v:Vec = new Vec(x, y);
		
		MathAssert.floatEqual(x, v.x);
		MathAssert.floatEqual(y, v.y);
	}
	
	@Test
	public function testFieldsAssign() : Void
	{
		var x:Float = 1000000 * (0.5 - Math.random());
		var y:Float = 1000000 * (0.5 - Math.random());
		
		var v:Vec = new Vec();
		v.x = x;
		v.y = y;
		
		MathAssert.floatEqual(x, v.x);
		MathAssert.floatEqual(y, v.y);
	}
	
	@Test
	public function testFieldsModifying() : Void
	{
		var x:Float = Math.random();
		var y:Float = Math.random();
		
		var v:Vec = new Vec(x, y);
		
		x *= 1.57;
		v.x *= 1.57;
		
		y /= 0.779;
		v.y /= 0.779;
		
		MathAssert.floatEqual(x, v.x);
		MathAssert.floatEqual(y, v.y);
	}
	
	@Test
	public function testCopyFrom() : Void
	{
		var x = Math.random();
		var y = Math.random();
		
		var v = new Vec();
		v.copyFrom(new Vec(x, y));
		
		MathAssert.floatEqual(x, v.x);
		MathAssert.floatEqual(y, v.y);
	}
	
	@Test
	public function testClone() : Void
	{
		var x:Float = Math.random();
		var y:Float = Math.random();
		
		var a:Vec = new Vec(x, y);
		var b:Vec = a.clone();
		
		Assert.areNotSame(a, b);
		MathAssert.floatEqual(a.x, b.x);
		MathAssert.floatEqual(a.y, b.y);
	}
	
	@Test
	public function testLength() : Void
	{
		for (data in VecTestData.forLength()) {
			trace(data.title);
			
			var v:Vec = new Vec(data.x, data.y);
			MathAssert.floatEqual(data.len, v.length());
		}
	}
	
	@Test
	public function testMagnitude() : Void
	{
		for (data in VecTestData.forMagnitude()) {
			trace(data.title);
			
			var v:Vec = new Vec(data.x, data.y);
			MathAssert.floatEqual(data.mag, v.magnitude());
		}
	}
	
	@Test
	public function testNormalize() : Void
	{
		for (data in VecTestData.forNormalize()) {
			trace(data.title);
			
			var v:Vec = new Vec(data.x, data.y);
			v.normalize(data.nlen);
			
			MathAssert.floatEqual(data.nx, v.x);
			MathAssert.floatEqual(data.ny, v.y);
		}
	}
	
	@Test
	public function testToRadians() : Void
	{
		for (data in VecTestData.forRadiansOf()) {
			trace(data.title);
			
			var v = new Vec(data.x, data.y);
			MathAssert.floatEqual(data.res, v.toRadians());
		}
	}
	
	@Test
	public function testToString() : Void
	{
		var v = new Vec();
		Assert.isType(v.toString(), String);
	}
}