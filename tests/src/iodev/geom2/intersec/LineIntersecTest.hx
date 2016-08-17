package iodev.geom2.intersec;

import data.LineIntersecTestData;
import iodev.geom2.Vec;
import massive.munit.Assert;

class LineIntersecTest
{

	//{ lineLine

	@Test
	public function testLineLine_cross() : Void
	{
		for (data in LineIntersecTestData.forCross()) {
			trace(data.title);
			
			var dst = LineIntersec.lineLine(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineLine_touch() : Void
	{
		for (data in LineIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dst = LineIntersec.lineLine(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineLine_projectIn() : Void
	{
		for (data in LineIntersecTestData.forProjectIn()) {
			trace(data.title);
			
			var dst = LineIntersec.lineLine(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineLine_projectOut() : Void
	{
		for (data in LineIntersecTestData.forProjectOut()) {
			trace(data.title);
			
			var dst = LineIntersec.lineLine(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineLine_castIn() : Void
	{
		for (data in LineIntersecTestData.forCastIn()) {
			trace(data.title);
			
			var dst = LineIntersec.lineLine(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineLine_castOut() : Void
	{
		for (data in LineIntersecTestData.forCastOut()) {
			trace(data.title);
			
			var dst = LineIntersec.lineLine(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineLine_castAway() : Void
	{
		for (data in LineIntersecTestData.forCastAway()) {
			trace(data.title);
			
			var dst = LineIntersec.lineLine(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineLine_parallel() : Void
	{
		for (data in LineIntersecTestData.forParallel()) {
			trace(data.title);
			
			var dst = LineIntersec.lineLine(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	//}
	
	//{ lineLineTo

	@Test
	public function testLineLineTo_cross() : Void
	{
		for (data in LineIntersecTestData.forCross()) {
			trace(data.title);
			
			var dst = new Vec();
			LineIntersec.lineLineTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineLineTo_touch() : Void
	{
		for (data in LineIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dst = new Vec();
			LineIntersec.lineLineTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineLineTo_projectIn() : Void
	{
		for (data in LineIntersecTestData.forProjectIn()) {
			trace(data.title);
			
			var dst = new Vec();
			LineIntersec.lineLineTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineLineTo_projectOut() : Void
	{
		for (data in LineIntersecTestData.forProjectOut()) {
			trace(data.title);
			
			var dst = new Vec();
			LineIntersec.lineLineTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineLineTo_castIn() : Void
	{
		for (data in LineIntersecTestData.forCastIn()) {
			trace(data.title);
			
			var dst = new Vec();
			LineIntersec.lineLineTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineLineTo_castOut() : Void
	{
		for (data in LineIntersecTestData.forCastOut()) {
			trace(data.title);
			
			var dst = new Vec();
			LineIntersec.lineLineTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineLineTo_castAway() : Void
	{
		for (data in LineIntersecTestData.forCastAway()) {
			trace(data.title);
			
			var dst = new Vec();
			LineIntersec.lineLineTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineLineTo_parallel() : Void
	{
		for (data in LineIntersecTestData.forParallel()) {
			trace(data.title);
			
			var dst = new Vec();
			LineIntersec.lineLineTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	//}
	
	
	//{ lineRay
	
	@Test
	public function testLineRay_cross() : Void
	{
		for (data in LineIntersecTestData.forCross()) {
			trace(data.title);
			
			var dst = LineIntersec.lineRay(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNotNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testLineRay_touch() : Void
	{
		for (data in LineIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dst = LineIntersec.lineRay(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNotNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testLineRay_projectIn_ba() : Void
	{
		for (data in LineIntersecTestData.forProjectIn()) {
			trace(data.title);
			
			var dst = LineIntersec.lineRay(
				new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
			);
			
			Assert.isNotNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testLineRay_projectOut_ba() : Void
	{
		for (data in LineIntersecTestData.forProjectOut()) {
			trace(data.title);
			
			var dst = LineIntersec.lineRay(
				new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testLineRay_castIn() : Void
	{
		for (data in LineIntersecTestData.forCastIn()) {
			trace(data.title);
			
			var dst = LineIntersec.lineRay(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNotNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testLineRay_castOut_ba() : Void
	{
		for (data in LineIntersecTestData.forCastOut()) {
			trace(data.title);
			
			var dst = LineIntersec.lineRay(
				new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testLineRay_castAway() : Void
	{
		for (data in LineIntersecTestData.forCastAway()) {
			trace(data.title);
			
			var dst = LineIntersec.lineRay(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testLineRay_parallel_lite() : Void
	{
		for (data in LineIntersecTestData.forParallel()) {
			trace(data.title);
			
			var dst = LineIntersec.lineRay(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	//}
	
	//{ lineRayTo
	
	@Test
	public function testLineRayTo_cross() : Void
	{
		for (data in LineIntersecTestData.forCross()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.lineRayTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isTrue(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineRayTo_touch() : Void
	{
		for (data in LineIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.lineRayTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isTrue(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineRayTo_projectIn_ba() : Void
	{
		for (data in LineIntersecTestData.forProjectIn()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.lineRayTo(
				dst
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
			);
			
			Assert.isTrue(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineRayTo_projectOut_ba() : Void
	{
		for (data in LineIntersecTestData.forProjectOut()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.lineRayTo(
				dst
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineRayTo_castIn() : Void
	{
		for (data in LineIntersecTestData.forCastIn()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.lineRayTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isTrue(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineRayTo_castOut_ba() : Void
	{
		for (data in LineIntersecTestData.forCastOut()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.lineRayTo(
				dst
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineRayTo_castAway() : Void
	{
		for (data in LineIntersecTestData.forCastAway()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.lineRayTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineRayTo_parallel_lite() : Void
	{
		for (data in LineIntersecTestData.forParallel()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.lineRayTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			if (res) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	//}
	
	
	//{ lineSegm
	
	@Test
	public function testLineSegm_cross() : Void
	{
		for (data in LineIntersecTestData.forCross()) {
			trace(data.title);
			
			var dst = LineIntersec.lineSegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNotNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testLineSegm_touch() : Void
	{
		for (data in LineIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dst = LineIntersec.lineSegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNotNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testLineSegm_projectIn_ba() : Void
	{
		for (data in LineIntersecTestData.forProjectIn()) {
			trace(data.title);
			
			var dst = LineIntersec.lineSegm(
				new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testLineSegm_projectOut_ba() : Void
	{
		for (data in LineIntersecTestData.forProjectOut()) {
			trace(data.title);
			
			var dst = LineIntersec.lineSegm(
				new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testLineSegm_castIn() : Void
	{
		for (data in LineIntersecTestData.forCastIn()) {
			trace(data.title);
			
			var dst = LineIntersec.lineSegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testLineSegm_castOut_ba() : Void
	{
		for (data in LineIntersecTestData.forCastOut()) {
			trace(data.title);
			
			var dst = LineIntersec.lineSegm(
				new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testLineSegm_castAway() : Void
	{
		for (data in LineIntersecTestData.forCastAway()) {
			trace(data.title);
			
			var dst = LineIntersec.lineSegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testLineSegm_parallel() : Void
	{
		for (data in LineIntersecTestData.forParallel()) {
			trace(data.title);
			
			var dst = LineIntersec.lineSegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	//}
	
	//{ lineSegmTo
	
	@Test
	public function testLineSegmTo_cross() : Void
	{
		for (data in LineIntersecTestData.forCross()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.lineSegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isTrue(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineSegmTo_touch() : Void
	{
		for (data in LineIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.lineSegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isTrue(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineSegmTo_projectIn_ba() : Void
	{
		for (data in LineIntersecTestData.forProjectIn()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.lineSegmTo(
				dst
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineSegmTo_projectOut_ba() : Void
	{
		for (data in LineIntersecTestData.forProjectOut()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.lineSegmTo(
				dst
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineSegmTo_castIn() : Void
	{
		for (data in LineIntersecTestData.forCastIn()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.lineSegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineSegmTo_castOut_ba() : Void
	{
		for (data in LineIntersecTestData.forCastOut()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.lineSegmTo(
				dst
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineSegmTo_castAway() : Void
	{
		for (data in LineIntersecTestData.forCastAway()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.lineSegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testLineSegmTo_parallel() : Void
	{
		for (data in LineIntersecTestData.forParallel()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.lineSegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	//}
	
	
	//{ rayRay
	
	@Test
	public function testRayRay_cross() : Void
	{
		for (data in LineIntersecTestData.forCross()) {
			trace(data.title);
			
			var dst = LineIntersec.rayRay(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNotNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testRayRay_touch() : Void
	{
		for (data in LineIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dst = LineIntersec.rayRay(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNotNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testRayRay_projectIn() : Void
	{
		for (data in LineIntersecTestData.forProjectIn()) {
			trace(data.title);
			
			var dst = LineIntersec.rayRay(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNotNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testRayRay_projectOut() : Void
	{
		for (data in LineIntersecTestData.forProjectOut()) {
			trace(data.title);
			
			var dst = LineIntersec.rayRay(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testRayRay_castIn() : Void
	{
		for (data in LineIntersecTestData.forCastIn()) {
			trace(data.title);
			
			var dst = LineIntersec.rayRay(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNotNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testRayRay_castOut() : Void
	{
		for (data in LineIntersecTestData.forCastOut()) {
			trace(data.title);
			
			var dst = LineIntersec.rayRay(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testRayRay_castAway() : Void
	{
		for (data in LineIntersecTestData.forCastAway()) {
			trace(data.title);
			
			var dst = LineIntersec.rayRay(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testRayRay_parallel_lite() : Void
	{
		for (data in LineIntersecTestData.forParallel()) {
			trace(data.title);
			
			var dst = LineIntersec.rayRay(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	//}
	
	//{ rayRayTo
	
	@Test
	public function testRayRayTo_cross() : Void
	{
		for (data in LineIntersecTestData.forCross()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.rayRayTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isTrue(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testRayRayTo_touch() : Void
	{
		for (data in LineIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.rayRayTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isTrue(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testRayRayTo_projectIn() : Void
	{
		for (data in LineIntersecTestData.forProjectIn()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.rayRayTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isTrue(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testRayRayTo_projectOut() : Void
	{
		for (data in LineIntersecTestData.forProjectOut()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.rayRayTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testRayRayTo_castIn() : Void
	{
		for (data in LineIntersecTestData.forCastIn()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.rayRayTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isTrue(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testRayRayTo_castOut() : Void
	{
		for (data in LineIntersecTestData.forCastOut()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.rayRayTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testRayRayTo_castAway() : Void
	{
		for (data in LineIntersecTestData.forCastAway()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.rayRayTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testRayRayTo_parallel_lite() : Void
	{
		for (data in LineIntersecTestData.forParallel()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.rayRayTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			if (res) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	//}
	
	
	//{ raySegm
	
	@Test
	public function testRaySegm_cross() : Void
	{
		for (data in LineIntersecTestData.forCross()) {
			trace(data.title);
			
			var dst = LineIntersec.raySegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNotNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testRaySegm_touch() : Void
	{
		for (data in LineIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dst = LineIntersec.raySegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNotNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testRaySegm_projectIn() : Void
	{
		for (data in LineIntersecTestData.forProjectIn()) {
			trace(data.title);
			
			var dst = LineIntersec.raySegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNotNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testRaySegm_projectOut() : Void
	{
		for (data in LineIntersecTestData.forProjectOut()) {
			trace(data.title);
			
			var dst = LineIntersec.raySegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testRaySegm_castIn() : Void
	{
		for (data in LineIntersecTestData.forCastIn()) {
			trace(data.title);
			
			var dst = LineIntersec.raySegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testRaySegm_castOut() : Void
	{
		for (data in LineIntersecTestData.forCastOut()) {
			trace(data.title);
			
			var dst = LineIntersec.raySegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testRaySegm_castAway() : Void
	{
		for (data in LineIntersecTestData.forCastAway()) {
			trace(data.title);
			
			var dst = LineIntersec.raySegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testRaySegm_parallel() : Void
	{
		for (data in LineIntersecTestData.forParallel()) {
			trace(data.title);
			
			var dst = LineIntersec.raySegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	//}
	
	//{ raySegmTo
	
	@Test
	public function testRaySegmTo_cross() : Void
	{
		for (data in LineIntersecTestData.forCross()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.raySegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isTrue(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testRaySegmTo_touch() : Void
	{
		for (data in LineIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.raySegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isTrue(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testRaySegmTo_projectIn() : Void
	{
		for (data in LineIntersecTestData.forProjectIn()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.raySegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isTrue(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testRaySegmTo_projectOut() : Void
	{
		for (data in LineIntersecTestData.forProjectOut()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.raySegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testRaySegmTo_castIn() : Void
	{
		for (data in LineIntersecTestData.forCastIn()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.raySegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testRaySegmTo_castOut() : Void
	{
		for (data in LineIntersecTestData.forCastOut()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.raySegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testRaySegmTo_castAway() : Void
	{
		for (data in LineIntersecTestData.forCastAway()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.raySegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testRaySegmTo_parallel() : Void
	{
		for (data in LineIntersecTestData.forParallel()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.raySegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	//}
	
	
	//{ segmSegm
	
	@Test
	public function testSegmSegm_cross() : Void
	{
		for (data in LineIntersecTestData.forCross()) {
			trace(data.title);
			
			var dst = LineIntersec.segmSegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNotNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testSegmSegm_touch() : Void
	{
		for (data in LineIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dst = LineIntersec.segmSegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNotNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testSegmSegm_projectIn() : Void
	{
		for (data in LineIntersecTestData.forProjectIn()) {
			trace(data.title);
			
			var dst = LineIntersec.segmSegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testSegmSegm_projectOut() : Void
	{
		for (data in LineIntersecTestData.forProjectOut()) {
			trace(data.title);
			
			var dst = LineIntersec.segmSegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testSegmSegm_castIn() : Void
	{
		for (data in LineIntersecTestData.forCastIn()) {
			trace(data.title);
			
			var dst = LineIntersec.segmSegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testSegmSegm_castOut() : Void
	{
		for (data in LineIntersecTestData.forCastOut()) {
			trace(data.title);
			
			var dst = LineIntersec.segmSegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testSegmSegm_castAway() : Void
	{
		for (data in LineIntersecTestData.forCastAway()) {
			trace(data.title);
			
			var dst = LineIntersec.segmSegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	@Test
	public function testSegmSegm_parallel() : Void
	{
		for (data in LineIntersecTestData.forParallel()) {
			trace(data.title);
			
			var dst = LineIntersec.segmSegm(
				new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isNull(dst);
			if (dst != null) {
				MathAssert.floatEqual(data.dstx, dst.x);
				MathAssert.floatEqual(data.dsty, dst.y);
			}
		}
	}
	
	//}
	
	//{ segmSegmTo
	
	@Test
	public function testSegmSegmTo_cross() : Void
	{
		for (data in LineIntersecTestData.forCross()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.segmSegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isTrue(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testSegmSegmTo_touch() : Void
	{
		for (data in LineIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.segmSegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isTrue(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testSegmSegmTo_projectIn() : Void
	{
		for (data in LineIntersecTestData.forProjectIn()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.segmSegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testSegmSegmTo_projectOut() : Void
	{
		for (data in LineIntersecTestData.forProjectOut()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.segmSegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testSegmSegmTo_castIn() : Void
	{
		for (data in LineIntersecTestData.forCastIn()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.segmSegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testSegmSegmTo_castOut() : Void
	{
		for (data in LineIntersecTestData.forCastOut()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.segmSegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testSegmSegmTo_castAway() : Void
	{
		for (data in LineIntersecTestData.forCastAway()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.segmSegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	@Test
	public function testSegmSegmTo_parallel() : Void
	{
		for (data in LineIntersecTestData.forParallel()) {
			trace(data.title);
			
			var dst = new Vec();
			var res = LineIntersec.segmSegmTo(
				dst
				, new Vec(data.ax0, data.ay0)
				, new Vec(data.ax1 - data.ax0, data.ay1 - data.ay0)
				, new Vec(data.bx0, data.by0)
				, new Vec(data.bx1 - data.bx0, data.by1 - data.by0)
			);
			
			Assert.isFalse(res);
			MathAssert.floatEqual(data.dstx, dst.x);
			MathAssert.floatEqual(data.dsty, dst.y);
		}
	}
	
	//}
}