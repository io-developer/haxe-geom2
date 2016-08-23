package iodev.geom2.macros;
import data.CircleIntersecTestData;
import iodev.geom2.macros.CircleIntersecMacros;
import massive.munit.Assert;

class CircleIntersecMacrosTest
{
	//{ circleLine
	
	@Test
	public function testCircleLine_crossFull() : Void
	{
		for (data in CircleIntersecTestData.forCrossFull()) {
			trace(data.title);
			
			var dstax, dstay,  dstbx, dstby,  dstcount;
			CircleIntersecMacros.circleLine(
				dstax, dstay,  dstbx, dstby,  dstcount
				, data.cx, data.cy, data.crad
				, data.lx0, data.ly0, data.lx1 - data.lx0, data.ly1 - data.ly0
			);
			
			Assert.areEqual(2, dstcount);
			MathAssert.floatEqual(data.dstax, dstax);
			MathAssert.floatEqual(data.dstay, dstay);
			MathAssert.floatEqual(data.dstbx, dstbx);
			MathAssert.floatEqual(data.dstby, dstby);
		}
	}
	
	@Test
	public function testCircleLine_crossIn() : Void
	{
		for (data in CircleIntersecTestData.forCrossIn()) {
			trace(data.title);
			
			var dstax, dstay,  dstbx, dstby,  dstcount;
			CircleIntersecMacros.circleLine(
				dstax, dstay,  dstbx, dstby,  dstcount
				, data.cx, data.cy, data.crad
				, data.lx0, data.ly0, data.lx1 - data.lx0, data.ly1 - data.ly0
			);
			
			Assert.areEqual(2, dstcount);
			MathAssert.floatEqual(data.dstax, dstax);
			MathAssert.floatEqual(data.dstay, dstay);
			MathAssert.floatEqual(data.dstbx, dstbx);
			MathAssert.floatEqual(data.dstby, dstby);
		}
	}
	
	@Test
	public function testCircleLine_crossOut() : Void
	{
		for (data in CircleIntersecTestData.forCrossOut()) {
			trace(data.title);
			
			var dstax, dstay,  dstbx, dstby,  dstcount;
			CircleIntersecMacros.circleLine(
				dstax, dstay,  dstbx, dstby,  dstcount
				, data.cx, data.cy, data.crad
				, data.lx0, data.ly0, data.lx1 - data.lx0, data.ly1 - data.ly0
			);
			
			Assert.areEqual(2, dstcount);
			MathAssert.floatEqual(data.dstax, dstax);
			MathAssert.floatEqual(data.dstay, dstay);
			MathAssert.floatEqual(data.dstbx, dstbx);
			MathAssert.floatEqual(data.dstby, dstby);
		}
	}
	
	@Test
	public function testCircleLine_inside() : Void
	{
		for (data in CircleIntersecTestData.forInside()) {
			trace(data.title);
			
			var dstax, dstay,  dstbx, dstby,  dstcount;
			CircleIntersecMacros.circleLine(
				dstax, dstay,  dstbx, dstby,  dstcount
				, data.cx, data.cy, data.crad
				, data.lx0, data.ly0, data.lx1 - data.lx0, data.ly1 - data.ly0
			);
			
			Assert.areEqual(2, dstcount);
			MathAssert.floatEqual(data.dstax, dstax);
			MathAssert.floatEqual(data.dstay, dstay);
			MathAssert.floatEqual(data.dstbx, dstbx);
			MathAssert.floatEqual(data.dstby, dstby);
		}
	}
	
	@Test
	public function testCircleLine_touch() : Void
	{
		for (data in CircleIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dstax, dstay,  dstbx, dstby,  dstcount;
			CircleIntersecMacros.circleLine(
				dstax, dstay,  dstbx, dstby,  dstcount
				, data.cx, data.cy, data.crad
				, data.lx0, data.ly0, data.lx1 - data.lx0, data.ly1 - data.ly0
			);
			
			Assert.areEqual(2, dstcount);
			MathAssert.floatEqual(data.dstax, dstax);
			MathAssert.floatEqual(data.dstay, dstay);
			MathAssert.floatEqual(data.dstbx, dstbx);
			MathAssert.floatEqual(data.dstby, dstby);
		}
	}
	
	@Test
	public function testCircleLine_tangentIn() : Void
	{
		for (data in CircleIntersecTestData.forTangentIn()) {
			trace(data.title);
			
			var dstax, dstay,  dstbx, dstby,  dstcount;
			CircleIntersecMacros.circleLine(
				dstax, dstay,  dstbx, dstby,  dstcount
				, data.cx, data.cy, data.crad
				, data.lx0, data.ly0, data.lx1 - data.lx0, data.ly1 - data.ly0
			);
			
			Assert.areEqual(1, dstcount);
			MathAssert.floatEqual(data.dstax, dstax);
			MathAssert.floatEqual(data.dstay, dstay);
			MathAssert.floatEqual(data.dstbx, dstbx);
			MathAssert.floatEqual(data.dstby, dstby);
		}
	}
	
	//}
	
	//{ circleRay
	
	@Test
	public function testCircleRay_crossFull() : Void
	{
		for (data in CircleIntersecTestData.forCrossFull()) {
			trace(data.title);
			
			var dstax, dstay,  dstbx, dstby,  dstcount;
			CircleIntersecMacros.circleRay(
				dstax, dstay,  dstbx, dstby,  dstcount
				, data.cx, data.cy, data.crad
				, data.lx0, data.ly0, data.lx1 - data.lx0, data.ly1 - data.ly0
			);
			
			Assert.areEqual(2, dstcount);
			MathAssert.floatEqual(data.dstax, dstax);
			MathAssert.floatEqual(data.dstay, dstay);
			MathAssert.floatEqual(data.dstbx, dstbx);
			MathAssert.floatEqual(data.dstby, dstby);
		}
	}
	
	@Test
	public function testCircleRay_crossIn() : Void
	{
		for (data in CircleIntersecTestData.forCrossIn()) {
			trace(data.title);
			
			var dstax, dstay,  dstbx, dstby,  dstcount;
			CircleIntersecMacros.circleRay(
				dstax, dstay,  dstbx, dstby,  dstcount
				, data.cx, data.cy, data.crad
				, data.lx0, data.ly0, data.lx1 - data.lx0, data.ly1 - data.ly0
			);
			
			Assert.areEqual(2, dstcount);
			MathAssert.floatEqual(data.dstax, dstax);
			MathAssert.floatEqual(data.dstay, dstay);
			MathAssert.floatEqual(data.dstbx, dstbx);
			MathAssert.floatEqual(data.dstby, dstby);
		}
	}
	
	@Test
	public function testCircleRay_crossOut() : Void
	{
		for (data in CircleIntersecTestData.forCrossOut()) {
			trace(data.title);
			
			var dstax, dstay,  dstbx, dstby,  dstcount;
			CircleIntersecMacros.circleRay(
				dstax, dstay,  dstbx, dstby,  dstcount
				, data.cx, data.cy, data.crad
				, data.lx0, data.ly0, data.lx1 - data.lx0, data.ly1 - data.ly0
			);
			
			Assert.areEqual(1, dstcount);
			MathAssert.floatEqual(dstax, dstbx);
			MathAssert.floatEqual(dstay, dstby);
			MathAssert.floatEqual(data.dstbx, dstax);
			MathAssert.floatEqual(data.dstby, dstay);
		}
	}
	
	@Test
	public function testCircleRay_inside() : Void
	{
		for (data in CircleIntersecTestData.forInside()) {
			trace(data.title);
			
			var dstax, dstay,  dstbx, dstby,  dstcount;
			CircleIntersecMacros.circleRay(
				dstax, dstay,  dstbx, dstby,  dstcount
				, data.cx, data.cy, data.crad
				, data.lx0, data.ly0, data.lx1 - data.lx0, data.ly1 - data.ly0
			);
			
			Assert.areEqual(1, dstcount);
			MathAssert.floatEqual(dstax, dstbx);
			MathAssert.floatEqual(dstay, dstby);
			MathAssert.floatEqual(data.dstbx, dstax);
			MathAssert.floatEqual(data.dstby, dstay);
		}
	}
	
	@Test
	public function testCircleRay_touch() : Void
	{
		for (data in CircleIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dstax, dstay,  dstbx, dstby,  dstcount;
			CircleIntersecMacros.circleRay(
				dstax, dstay,  dstbx, dstby,  dstcount
				, data.cx, data.cy, data.crad
				, data.lx0, data.ly0, data.lx1 - data.lx0, data.ly1 - data.ly0
			);
			
			Assert.areNotEqual(0, dstcount);
			if (!MathHelper.floatEqual(data.dstax, dstax) || !MathHelper.floatEqual(data.dstay, dstay)) {
				MathAssert.floatEqual(data.dstbx, dstbx);
				MathAssert.floatEqual(data.dstby, dstby);
			} else {
				MathAssert.floatEqual(data.dstax, dstax);
				MathAssert.floatEqual(data.dstay, dstay);
			}
		}
	}
	
	@Test
	public function testCircleRay_tangentIn() : Void
	{
		for (data in CircleIntersecTestData.forTangentIn()) {
			trace(data.title);
			
			var dstax, dstay,  dstbx, dstby,  dstcount;
			CircleIntersecMacros.circleRay(
				dstax, dstay,  dstbx, dstby,  dstcount
				, data.cx, data.cy, data.crad
				, data.lx0, data.ly0, data.lx1 - data.lx0, data.ly1 - data.ly0
			);
			
			Assert.areEqual(1, dstcount);
			MathAssert.floatEqual(data.dstax, dstax);
			MathAssert.floatEqual(data.dstay, dstay);
		}
	}
	
	//}
	
	//{ circleSegm
	
	@Test
	public function testCircleSegm_crossFull() : Void
	{
		for (data in CircleIntersecTestData.forCrossFull()) {
			trace(data.title);
			
			var dstax, dstay,  dstbx, dstby,  dstcount;
			CircleIntersecMacros.circleSegm(
				dstax, dstay,  dstbx, dstby,  dstcount
				, data.cx, data.cy, data.crad
				, data.lx0, data.ly0, data.lx1 - data.lx0, data.ly1 - data.ly0
			);
			
			Assert.areEqual(2, dstcount);
			MathAssert.floatEqual(data.dstax, dstax);
			MathAssert.floatEqual(data.dstay, dstay);
			MathAssert.floatEqual(data.dstbx, dstbx);
			MathAssert.floatEqual(data.dstby, dstby);
		}
	}
	
	@Test
	public function testCircleSegm_crossIn() : Void
	{
		for (data in CircleIntersecTestData.forCrossIn()) {
			trace(data.title);
			
			var dstax, dstay,  dstbx, dstby,  dstcount;
			CircleIntersecMacros.circleSegm(
				dstax, dstay,  dstbx, dstby,  dstcount
				, data.cx, data.cy, data.crad
				, data.lx0, data.ly0, data.lx1 - data.lx0, data.ly1 - data.ly0
			);
			
			Assert.areEqual(1, dstcount);
			MathAssert.floatEqual(dstax, dstbx);
			MathAssert.floatEqual(dstay, dstby);
			MathAssert.floatEqual(data.dstax, dstax);
			MathAssert.floatEqual(data.dstay, dstay);
		}
	}
	
	@Test
	public function testCircleSegm_crossOut() : Void
	{
		for (data in CircleIntersecTestData.forCrossOut()) {
			trace(data.title);
			
			var dstax, dstay,  dstbx, dstby,  dstcount;
			CircleIntersecMacros.circleSegm(
				dstax, dstay,  dstbx, dstby,  dstcount
				, data.cx, data.cy, data.crad
				, data.lx0, data.ly0, data.lx1 - data.lx0, data.ly1 - data.ly0
			);
			
			Assert.areEqual(1, dstcount);
			MathAssert.floatEqual(dstax, dstbx);
			MathAssert.floatEqual(dstay, dstby);
			MathAssert.floatEqual(data.dstbx, dstax);
			MathAssert.floatEqual(data.dstby, dstay);
		}
	}
	
	@Test
	public function testCircleSegm_inside() : Void
	{
		for (data in CircleIntersecTestData.forInside()) {
			trace(data.title);
			
			var dstax, dstay,  dstbx, dstby,  dstcount;
			CircleIntersecMacros.circleSegm(
				dstax, dstay,  dstbx, dstby,  dstcount
				, data.cx, data.cy, data.crad
				, data.lx0, data.ly0, data.lx1 - data.lx0, data.ly1 - data.ly0
			);
			
			Assert.areEqual(0, dstcount);
			MathAssert.floatEqual(dstax, dstbx);
			MathAssert.floatEqual(dstay, dstby);
		}
	}
	
	@Test
	public function testCircleSegm_touch() : Void
	{
		for (data in CircleIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dstax, dstay,  dstbx, dstby,  dstcount;
			CircleIntersecMacros.circleSegm(
				dstax, dstay,  dstbx, dstby,  dstcount
				, data.cx, data.cy, data.crad
				, data.lx0, data.ly0, data.lx1 - data.lx0, data.ly1 - data.ly0
			);
			
			Assert.areEqual(1, dstcount);
			if (!MathHelper.floatEqual(data.dstax, dstax) || !MathHelper.floatEqual(data.dstay, dstay)) {
				MathAssert.floatEqual(data.dstbx, dstbx);
				MathAssert.floatEqual(data.dstby, dstby);
			} else {
				MathAssert.floatEqual(data.dstax, dstax);
				MathAssert.floatEqual(data.dstay, dstay);
			}
		}
	}
	
	@Test
	public function testCircleSegm_tangentIn() : Void
	{
		for (data in CircleIntersecTestData.forTangentIn()) {
			trace(data.title);
			
			var dstax, dstay,  dstbx, dstby,  dstcount;
			CircleIntersecMacros.circleSegm(
				dstax, dstay,  dstbx, dstby,  dstcount
				, data.cx, data.cy, data.crad
				, data.lx0, data.ly0, data.lx1 - data.lx0, data.ly1 - data.ly0
			);
			
			Assert.areEqual(0, dstcount);
		}
	}
	
	//}
}