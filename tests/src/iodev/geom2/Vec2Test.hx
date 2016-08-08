package iodev.geom2;

import data.VecopTestData;
import iodev.geom2.Vec2;
import massive.munit.Assert;

class Vec2Test
{
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
		for (data in VecopTestData.forLength()) {
			trace(data.title);
			
			var v:Vec2 = new Vec2(data.x, data.y);
			MathAssert.floatEqual(data.len, v.length());
		}
	}
	
	
	@Test
	public function testMagnitude() : Void
	{
		for (data in VecopTestData.forMagnitude()) {
			trace(data.title);
			
			var v:Vec2 = new Vec2(data.x, data.y);
			MathAssert.floatEqual(data.mag, v.magnitude());
		}
	}
	
	
	@Test
	public function testNormalize() : Void
	{
		for (data in VecopTestData.forNormalize()) {
			trace(data.title);
			
			var v:Vec2 = new Vec2(data.x, data.y);
			v.normalize(data.nlen);
			
			MathAssert.floatEqual(data.nx, v.x);
			MathAssert.floatEqual(data.ny, v.y);
		}
	}
}