package iodev.geom2.macros;
import massive.munit.Assert;

class Vecop2Macros_argTest
{
	@Test
	public function testEquals_immutation() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = new Vec2();
		Vecop2Macros.equals(a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var dst:Vec2 = new Vec2();
		Vecop2Macros.negate(dst.x, dst.y, a.x, a.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
	}
	
	@Test
	public function testAdd_asOutput() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		var dst:Vec2 = a;
		Vecop2Macros.negate(dst.x, dst.y, a.x, a.y);
		
		MathAssert.floatNotEqual(ax, a.x);
		MathAssert.floatNotEqual(ay, a.y);
	}
	
	
	
	@Test
	public function testSwapXY_immutation() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		var dst:Vec2 = new Vec2();
		Vecop2Macros.swapXY(dst.x, dst.y, a.x, a.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
	}
	
	@Test
	public function testSwapXY_asOutput() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		var dst:Vec2 = a;
		Vecop2Macros.swapXY(dst.x, dst.y, a.x, a.y);
		
		MathAssert.floatNotEqual(ax, a.x);
		MathAssert.floatNotEqual(ay, a.y);
	}
	
	
	
	@Test
	public function testAdd_immutation() : Void
	{
		var ax:Float = Math.random();
		var ay:Float = Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = new Vec2();
		Vecop2Macros.add(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = a;
		Vecop2Macros.add(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = b;
		Vecop2Macros.add(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = new Vec2();
		Vecop2Macros.sub(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = a;
		Vecop2Macros.sub(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = b;
		Vecop2Macros.sub(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = new Vec2();
		Vecop2Macros.mul(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = a;
		Vecop2Macros.mul(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = b;
		Vecop2Macros.mul(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = 1.0 + Math.random();
		var by:Float = 1.0 + Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = new Vec2();
		Vecop2Macros.div(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = a;
		Vecop2Macros.div(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = b;
		Vecop2Macros.div(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = 1.0 + Math.random();
		var by:Float = 1.0 + Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = new Vec2();
		Vecop2Macros.normalBisector(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = a;
		Vecop2Macros.normalBisector(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = b;
		Vecop2Macros.normalBisector(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		var dst:Vec2 = new Vec2();
		
		Vecop2Macros.rotate(dst.x, dst.y, a.x, a.y, 0.2);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
	}
	
	@Test
	public function testRotate_asOutput() : Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		var dst:Vec2 = a;
		
		Vecop2Macros.rotate(dst.x, dst.y, a.x, a.y, 0.2);
		
		MathAssert.floatNotEqual(ax, a.x);
		MathAssert.floatNotEqual(ay, a.y);
	}
	
	
	
	@Test
	public function testRotateQuart_immutation() : Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		var dst:Vec2 = new Vec2();
		
		Vecop2Macros.rotate(dst.x, dst.y, a.x, a.y, -7);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
	}
	
	@Test
	public function testRotateQuart_asOutput() : Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		var dst:Vec2 = a;
		
		Vecop2Macros.rotate(dst.x, dst.y, a.x, a.y, 9);
		
		MathAssert.floatNotEqual(ax, a.x);
		MathAssert.floatNotEqual(ay, a.y);
	}
	
	
	
	@Test
	public function testMirrorBy_immutation() : Void
	{
		var ax:Float = 1.0 + Math.random();
		var ay:Float = 1.0 + Math.random();
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = 1.0 + Math.random();
		var by:Float = 1.0 + Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = new Vec2();
		Vecop2Macros.mirrorBy(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = a;
		Vecop2Macros.mirrorBy(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = b;
		Vecop2Macros.mirrorBy(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = 1.0 + Math.random();
		var by:Float = 1.0 + Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = new Vec2();
		Vecop2Macros.mirrorByNormal(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = a;
		Vecop2Macros.mirrorByNormal(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
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
		var a:Vec2 = new Vec2(ax, ay);
		
		var bx:Float = Math.random();
		var by:Float = Math.random();
		var b:Vec2 = new Vec2(bx, by);
		
		var dst:Vec2 = b;
		Vecop2Macros.mirrorByNormal(dst.x, dst.y, a.x, a.y, b.x, b.y);
		
		MathAssert.floatEqual(ax, a.x);
		MathAssert.floatEqual(ay, a.y);
		
		MathAssert.floatNotEqual(bx, b.x);
		MathAssert.floatNotEqual(by, b.y);
		
		Assert.areNotSame(a, dst);
		Assert.areSame(b, dst);
	}
}