package iodev.geom2;

import data.Vec2TestData;
import iodev.geom2.Vec2;
import massive.munit.Assert;

class Vec2Test
{
	/*    STATIC    */
	
	@Test
	public function testFromXY() : Void
	{
		var x = Math.random();
		var y = Math.random();
		var v = Vec2.fromXY(x, y);
		
		MathAssert.floatEqual(x, v.x);
		MathAssert.floatEqual(y, v.y);
	}
	
	@Test
	public function testFromPolar() : Void
	{
		for (data in Vec2TestData.forPolar()) {
			trace(data.title);
			
			var v = Vec2.fromPolar(data.radians, data.len);
			MathAssert.floatEqual(data.dstx, v.x);
			MathAssert.floatEqual(data.dsty, v.y);
		}
	}
	
	@Test
	public function testFromAdd() : Void
	{
		for (data in Vec2TestData.forAdd()) {
			trace(data.title);
			
			var a = new Vec2(data.ax, data.ay);
			var b = new Vec2(data.bx, data.by);
			var dst = Vec2.fromAdd(a, b);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testFromSub() : Void
	{
		for (data in Vec2TestData.forSub()) {
			trace(data.title);
			
			var a = new Vec2(data.ax, data.ay);
			var b = new Vec2(data.bx, data.by);
			var dst = Vec2.fromSub(a, b);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testFromMul() : Void
	{
		for (data in Vec2TestData.forMul()) {
			trace(data.title);
			
			var a = new Vec2(data.ax, data.ay);
			var b = new Vec2(data.bx, data.by);
			var dst = Vec2.fromMul(a, b);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testFromDiv() : Void
	{
		for (data in Vec2TestData.forDiv()) {
			trace(data.title);
			
			var a = new Vec2(data.ax, data.ay);
			var b = new Vec2(data.bx, data.by);
			var dst = Vec2.fromDiv(a, b);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testNormalBisectorFrom() : Void
	{
		for (data in Vec2TestData.forNormalBisector()) {
			trace(data.title);
			
			var a = new Vec2(data.ax, data.ay);
			var b = new Vec2(data.bx, data.by);
			var dst = Vec2.normalBisectorFrom(a, b);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testDotProd() : Void
	{
		for (data in Vec2TestData.forDotProd()) {
			trace(data.title);
			
			var a = new Vec2(data.ax, data.ay);
			var b = new Vec2(data.bx, data.by);
			var res = Vec2.dotProd(a, b);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testSkewProd() : Void
	{
		for (data in Vec2TestData.forSkewProd()) {
			trace(data.title);
			
			var a = new Vec2(data.ax, data.ay);
			var b = new Vec2(data.bx, data.by);
			var res = Vec2.skewProd(a, b);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testLengthBentween() : Void
	{
		for (data in Vec2TestData.forLengthBetween()) {
			trace(data.title);
			
			var a = new Vec2(data.ax, data.ay);
			var b = new Vec2(data.bx, data.by);
			var res = Vec2.lengthBetween(a, b);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testMagnitudeBetween() : Void
	{
		for (data in Vec2TestData.forMagnitudeBetween()) {
			trace(data.title);
			
			var a = new Vec2(data.ax, data.ay);
			var b = new Vec2(data.bx, data.by);
			var res = Vec2.magnitudeBetween(a, b);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testRadiansBetween() : Void
	{
		for (data in Vec2TestData.forRadiansBetween()) {
			trace(data.title);
			
			var a = new Vec2(data.ax, data.ay);
			var b = new Vec2(data.bx, data.by);
			var res = Vec2.radiansBetween(a, b);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testRadiansBetweenNormals() : Void
	{
		for (data in Vec2TestData.forRadiansBetweenNormals()) {
			trace(data.title);
			
			var a = new Vec2(data.ax, data.ay);
			var b = new Vec2(data.bx, data.by);
			var res = Vec2.radiansBetweenNormals(a, b);
			
			MathAssert.floatEqual(data.res, res);
		}
	}
	
	@Test
	public function testRadiansBetweenNormals_notnormal() : Void
	{
		for (data in Vec2TestData.forRadiansBetween_notnormal()) {
			trace(data.title);
			
			var a = new Vec2(data.ax, data.ay);
			var b = new Vec2(data.bx, data.by);
			var res = Vec2.radiansBetweenNormals(a, b);
			
			MathAssert.floatNotEqual(data.res, res);
		}
	}
	
	
	
	/*    INSTANCE    */
	
	@Test
	public function testConstructorDefaults() : Void
	{
		var v:Vec2 = new Vec2();
		
		MathAssert.floatEqual(0.0, v.x);
		MathAssert.floatEqual(0.0, v.y);
	}
	
	@Test
	public function testConstructorParams() : Void
	{
		var x:Float = 1000000 * (0.5 - Math.random());
		var y:Float = 1000000 * (0.5 - Math.random());
		
		var v:Vec2 = new Vec2(x, y);
		
		MathAssert.floatEqual(x, v.x);
		MathAssert.floatEqual(y, v.y);
	}
	
	@Test
	public function testFieldsAssign() : Void
	{
		var x:Float = 1000000 * (0.5 - Math.random());
		var y:Float = 1000000 * (0.5 - Math.random());
		
		var v:Vec2 = new Vec2();
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
		
		var v:Vec2 = new Vec2(x, y);
		
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
		
		var v = new Vec2();
		v.copyFrom(new Vec2(x, y));
		
		MathAssert.floatEqual(x, v.x);
		MathAssert.floatEqual(y, v.y);
	}
	
	@Test
	public function testClone() : Void
	{
		var x:Float = Math.random();
		var y:Float = Math.random();
		
		var a:Vec2 = new Vec2(x, y);
		var b:Vec2 = a.clone();
		
		Assert.areNotSame(a, b);
		MathAssert.floatEqual(a.x, b.x);
		MathAssert.floatEqual(a.y, b.y);
	}
	
	@Test
	public function testEquals() : Void
	{
		var x:Float = Math.random();
		var y:Float = Math.random();
		
		var a:Vec2 = new Vec2(x, y);
		var b:Vec2 = new Vec2(x, y);
		
		Assert.isTrue(a.equals(b));
		Assert.isTrue(b.equals(a));
		
		a.x = Math.NEGATIVE_INFINITY;
		a.y = Math.POSITIVE_INFINITY;
		b.x = a.x;
		b.y = a.y;
		
		Assert.isTrue(a.equals(b));
		Assert.isTrue(b.equals(a));
	}
	
	@Test
	public function testNotEquals() : Void
	{
		var x:Float = Math.random();
		var y:Float = Math.random();
		
		var a:Vec2 = new Vec2(x, y);
		var b:Vec2 = new Vec2(x, x);
		
		Assert.isFalse(a.equals(b));
		Assert.isFalse(b.equals(a));
		
		a.x = Math.NaN;
		b.x = Math.NaN;
		b.y = a.y;
		
		Assert.isFalse(a.equals(b));
		Assert.isFalse(b.equals(a));
	}
	
	@Test
	public function testLength() : Void
	{
		for (data in Vec2TestData.forLength()) {
			trace(data.title);
			
			var v:Vec2 = new Vec2(data.x, data.y);
			MathAssert.floatEqual(data.len, v.length());
		}
	}
	
	@Test
	public function testMagnitude() : Void
	{
		for (data in Vec2TestData.forMagnitude()) {
			trace(data.title);
			
			var v:Vec2 = new Vec2(data.x, data.y);
			MathAssert.floatEqual(data.mag, v.magnitude());
		}
	}
	
	@Test
	public function testNormalize() : Void
	{
		for (data in Vec2TestData.forNormalize()) {
			trace(data.title);
			
			var v:Vec2 = new Vec2(data.x, data.y);
			v.normalize(data.nlen);
			
			MathAssert.floatEqual(data.nx, v.x);
			MathAssert.floatEqual(data.ny, v.y);
		}
	}
	
	@Test
	public function testToRadians() : Void
	{
		for (data in Vec2TestData.forRadiansOf()) {
			trace(data.title);
			
			var v = new Vec2(data.x, data.y);
			MathAssert.floatEqual(data.res, v.toRadians());
		}
	}
	
	@Test
	public function testToString() : Void
	{
		var v = new Vec2();
		Assert.isType(v.toString(), String);
	}
}