package iodev.geom2.macros;

import massive.munit.Assert;

class VecMacrosTest_argTest
{
	@Test
	public function testEquals_immutation() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = new Vec();
		VecMacros.equals(a.x, a.y, b.x, b.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
	}
	
	
	
	@Test
	public function testNegate_immutation() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var dst:Vec = new Vec();
		VecMacros.negate(dst.x, dst.y, a.x, a.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
	}
	
	@Test
	public function testAdd_asOutput() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var dst:Vec = a;
		VecMacros.negate(dst.x, dst.y, a.x, a.y);
		
		MathAssert.floatNotEqual(ax, a.x);
		MathAssert.floatNotEqual(ay, a.y);
	}
	
	
	
	@Test
	public function testSwapXY_immutation() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var dst:Vec = new Vec();
		VecMacros.swapXY(dst.x, dst.y, a.x, a.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
	}
	
	@Test
	public function testSwapXY_asOutput() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var dst:Vec = a;
		VecMacros.swapXY(dst.x, dst.y, a.x, a.y);
		
		MathAssert.floatNotEqual(ax, a.x);
		MathAssert.floatNotEqual(ay, a.y);
	}
	
	
	
	@Test
	public function testAdd_immutation() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = new Vec();
		VecMacros.add(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
	}
	
	@Test
	public function testAdd_asOutput_a() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = a;
		VecMacros.add(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatNotEqual(ax, a.x);
		MathAssert.floatNotEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
	}
	
	@Test
	public function testAdd_asOutput_b() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = b;
		VecMacros.add(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatNotEqual(bx, b.x);
		MathAssert.floatNotEqual(by, b.y);
	}
	
	
	
	@Test
	public function testSub_immutation() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = new Vec();
		VecMacros.sub(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
	}
	
	@Test
	public function testSub_asOutput_a() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = a;
		VecMacros.sub(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatNotEqual(ax, a.x);
		MathAssert.floatNotEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
	}
	
	@Test
	public function testSub_asOutput_b() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = b;
		VecMacros.sub(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatNotEqual(bx, b.x);
		MathAssert.floatNotEqual(by, b.y);
	}
	
	
	
	@Test
	public function testMul_immutation() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = new Vec();
		VecMacros.mul(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
	}
	
	@Test
	public function testMul_asOutput_a() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = a;
		VecMacros.mul(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatNotEqual(ax, a.x);
		MathAssert.floatNotEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
	}
	
	@Test
	public function testMul_asOutput_b() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = b;
		VecMacros.mul(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatNotEqual(bx, b.x);
		MathAssert.floatNotEqual(by, b.y);
	}
	
	
	
	@Test
	public function testDiv_immutation() : Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = 1.0 + Math.random();
		var by:Float = 1.0 + Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = new Vec();
		VecMacros.div(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
	}
	
	@Test
	public function testDiv_asOutput_a() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = a;
		VecMacros.div(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatNotEqual(ax, a.x);
		MathAssert.floatNotEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
	}
	
	@Test
	public function testDiv_asOutput_b() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = b;
		VecMacros.div(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatNotEqual(bx, b.x);
		MathAssert.floatNotEqual(by, b.y);
	}
	
	
	
	@Test
	public function testNormalBisector_immutation() : Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = 1.0 + Math.random();
		var by:Float = 1.0 + Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = new Vec();
		VecMacros.normalBisector(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
		
		Assert.areNotSame(a, dst);
		Assert.areNotSame(b, dst);
	}
	
	@Test
	public function testNormalBisector_asOutput_a() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = a;
		VecMacros.normalBisector(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatNotEqual(ax, a.x);
		MathAssert.floatNotEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
		
		Assert.areSame(a, dst);
		Assert.areNotSame(b, dst);
	}
	
	@Test
	public function testNormalBisector_asOutput_b() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = b;
		VecMacros.normalBisector(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatNotEqual(bx, b.x);
		MathAssert.floatNotEqual(by, b.y);
		
		Assert.areNotSame(a, dst);
		Assert.areSame(b, dst);
	}
	
	
	
	@Test
	public function testRotate_immutation() : Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec = new Vec(ax, ay);
		var dst:Vec = new Vec();
		
		VecMacros.rotate(dst.x, dst.y, a.x, a.y, 0.2);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
	}
	
	@Test
	public function testRotate_asOutput() : Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec = new Vec(ax, ay);
		var dst:Vec = a;
		
		VecMacros.rotate(dst.x, dst.y, a.x, a.y, 0.2);
		
		MathAssert.floatNotEqual(ax, a.x);
		MathAssert.floatNotEqual(ay, a.y);
	}
	
	
	
	@Test
	public function testRotateQuart_immutation() : Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec = new Vec(ax, ay);
		var dst:Vec = new Vec();
		
		VecMacros.rotate(dst.x, dst.y, a.x, a.y, -7);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
	}
	
	@Test
	public function testRotateQuart_asOutput() : Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec = new Vec(ax, ay);
		var dst:Vec = a;
		
		VecMacros.rotate(dst.x, dst.y, a.x, a.y, 9);
		
		MathAssert.floatNotEqual(ax, a.x);
		MathAssert.floatNotEqual(ay, a.y);
	}
	
	
	
	@Test
	public function testMirrorBy_immutation() : Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = 1.0 + Math.random();
		var by:Float = 1.0 + Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = new Vec();
		VecMacros.mirrorBy(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
		
		Assert.areNotSame(a, dst);
		Assert.areNotSame(b, dst);
	}
	
	@Test
	public function testMirrorBy_asOutput_a() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = a;
		VecMacros.mirrorBy(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatNotEqual(ax, a.x);
		MathAssert.floatNotEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
		
		Assert.areSame(a, dst);
		Assert.areNotSame(b, dst);
	}
	
	@Test
	public function testMirrorBy_asOutput_b() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = b;
		VecMacros.mirrorBy(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatNotEqual(bx, b.x);
		MathAssert.floatNotEqual(by, b.y);
		
		Assert.areNotSame(a, dst);
		Assert.areSame(b, dst);
	}
	
	
	
	@Test
	public function testMirrorByNormal_immutation() : Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = 1.0 + Math.random();
		var by:Float = 1.0 + Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = new Vec();
		VecMacros.mirrorByNormal(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
		
		Assert.areNotSame(a, dst);
		Assert.areNotSame(b, dst);
	}
	
	@Test
	public function testMirrorByNormal_asOutput_a() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = a;
		VecMacros.mirrorByNormal(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatNotEqual(ax, a.x);
		MathAssert.floatNotEqual(ay, a.y);
		
		MathAssert.floatEqual(bx, b.x);
		MathAssert.floatEqual(by, b.y);
		
		Assert.areSame(a, dst);
		Assert.areNotSame(b, dst);
	}
	
	@Test
	public function testMirrorByNormal_asOutput_b() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec = new Vec(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec = new Vec(bx, by);
		
		var dst:Vec = b;
		VecMacros.mirrorByNormal(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatNotEqual(bx, b.x);
		MathAssert.floatNotEqual(by, b.y);
		
		Assert.areNotSame(a, dst);
		Assert.areSame(b, dst);
	}
}