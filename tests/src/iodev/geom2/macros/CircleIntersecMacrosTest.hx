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
	
	//}
}