package iodev.geom2;

import iodev.geom2.Vec2;
import massive.munit.Assert;

class Vec2Test
{
	@Test
	public function testConstructorDefaults():Void
	{
		var v:Vec2 = new Vec2();
		
		MathAssert.floatEqual(0.0, v.x);
		MathAssert.floatEqual(0.0, v.y);
	}
	
	@Test
	public function testConstructorParams():Void
	{
		var x:Float = 1000000 * (0.5 - Math.random());
		var y:Float = 1000000 * (0.5 - Math.random());
		
		var v:Vec2 = new Vec2(x, y);
		
		MathAssert.floatEqual(x, v.x);
		MathAssert.floatEqual(y, v.y);
	}
	
	
	@Test
	public function testFieldsAssign():Void
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
	public function testFieldsModifying():Void
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
	public function testClone():Void
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
	public function testEquals():Void
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
	public function testNotEquals():Void
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
	public function testLength():Void
	{
		var items:Array<Dynamic> = [
			{ x: 0.0,   y: 0.0,  len: 0.0 }
			, { x: 1.0,   y: 0.0,  len: 1.0 }
			, { x: 0.0, y: -2.0,  len: 2.0 }
			, { x: 1.0,  y: -1.0,  len: 1.41421356 }
		];
		
		for (item in items) {
			var v:Vec2 = new Vec2(item.x, item.y);
			MathAssert.floatEqual(item.len, v.length());
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
			var v:Vec2 = new Vec2(item.x, item.y);
			MathAssert.floatEqual(item.mag, v.magnitude());
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
			var v:Vec2 = new Vec2(item.x, item.y);
			v.normalize(item.nlen);
			MathAssert.floatEqual(item.nx, v.x);
			MathAssert.floatEqual(item.ny, v.y);
		}
	}
	
	@Test
	public function testNormalizeByZero():Void
	{
		var v:Vec2 = new Vec2(1.0, 0.0);
		v.normalize(0.0);
		
		MathAssert.floatEqual(0.0, v.x);
		MathAssert.floatEqual(0.0, v.y);
	}
	
	@Test
	public function testNormalizeByInfinity():Void
	{
		var v:Vec2 = new Vec2();
		
		v.x = 1.0;
		v.y = 0.1;
		v.normalize(Math.POSITIVE_INFINITY);
		
		MathAssert.floatEqual(Math.POSITIVE_INFINITY, v.x);
		MathAssert.floatEqual(Math.POSITIVE_INFINITY, v.y);
	}
	
	@Test
	public function testNormalizeZeroLength():Void
	{
		var v:Vec2 = new Vec2(0.0, 0.0);
		v.normalize(1.0);
		
		Assert.isNaN(v.x);
		Assert.isNaN(v.y);
		
		v.x = 0.0;
		v.y = 0.0;
		v.normalize(0.0);
		
		Assert.isNaN(v.x);
		Assert.isNaN(v.y);
	}
	
	@Test
	public function testNormalizeInfinityLength():Void
	{
		var v:Vec2 = new Vec2(Math.POSITIVE_INFINITY, Math.POSITIVE_INFINITY);
		v.normalize(1.0);
		
		Assert.isNaN(v.x);
		Assert.isNaN(v.y);
		
		v.x = Math.POSITIVE_INFINITY;
		v.y = Math.POSITIVE_INFINITY;
		v.normalize(0.0);
		
		Assert.isNaN(v.x);
		Assert.isNaN(v.y);
	}
}