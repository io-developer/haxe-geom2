package iodev.geom2.operations;

import massive.munit.Assert;

class Vecop2_argTest
{
	@Test
	public function testAdd_immutation():Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = Vecop2.add(a, b);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
		
		Assert.areNotSame(a, dst);
		Assert.areNotSame(b, dst);
	}
	
	
	@Test
	public function testSubtract_immutation():Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = Vecop2.subtract(a, b);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
		
		Assert.areNotSame(a, dst);
		Assert.areNotSame(b, dst);
	}
	
	
	@Test
	public function testMultiply_immutation():Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = Vecop2.multiply(a, b);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
		
		Assert.areNotSame(a, dst);
		Assert.areNotSame(b, dst);
	}
	
	
	@Test
	public function testDivide_immutation():Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = 1.0 + Math.random();
		var by:Float = 1.0 + Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = Vecop2.divide(a, b);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
		
		Assert.areNotSame(a, dst);
		Assert.areNotSame(b, dst);
	}
	
	
	@Test
	public function testDotProd_immutation():Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = 1.0 + Math.random();
		var by:Float = 1.0 + Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		Vecop2.dotProd(a, b);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
	}
	
	
	@Test
	public function testSkewProd_immutation():Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = 1.0 + Math.random();
		var by:Float = 1.0 + Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		Vecop2.skewProd(a, b);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
	}
	
	
	@Test
	public function testLengthBetween_immutation():Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = 1.0 + Math.random();
		var by:Float = 1.0 + Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		Vecop2.lengthBetween(a, b);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
	}
	
	
	@Test
	public function testMagnitudeBetween_immutation():Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = 1.0 + Math.random();
		var by:Float = 1.0 + Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		Vecop2.magnitudeBetween(a, b);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
	}
	
	
	@Test
	public function testRadiansOf_immutation():Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		Vecop2.radiansOf(a);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
	}
	
	
	@Test
	public function testRadiansBetween_immutation():Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = 1.0 + Math.random();
		var by:Float = 1.0 + Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		Vecop2.radiansBetween(a, b);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
	}
	
	
	@Test
	public function testRadiansBetweenNormals_immutation():Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = 1.0 + Math.random();
		var by:Float = 1.0 + Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		Vecop2.radiansBetweenNormals(a, b);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
	}
	
	
	@Test
	public function testNormalBisector_immutation():Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = 1.0 + Math.random();
		var by:Float = 1.0 + Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		Vecop2.normalBisector(a, b);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
	}
	
	
	@Test
	public function testRotate_immutation():Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		Vecop2.rotate(a, 0.2);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
	}
	
	
	@Test
	public function testRotateQuart_immutation():Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		Vecop2.rotateQuart(a, 7);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
	}
	
	
	@Test
	public function testMirrorBy_immutation():Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = 1.0 + Math.random();
		var by:Float = 1.0 + Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		Vecop2.mirrorBy(a, b);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
	}
	
	
	@Test
	public function testMirrorByNormal_immutation():Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = 1.0 + Math.random();
		var by:Float = 1.0 + Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		Vecop2.mirrorByNormal(a, b);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
	}
}