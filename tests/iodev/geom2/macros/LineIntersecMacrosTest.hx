package iodev.geom2.macros;

import data.LineIntersecTestData;
import massive.munit.Assert;

class LineIntersecMacrosTest
{
	//{ lineLine
	
	@Test
	public function testLineLine_cross() : Void
	{
		for (data in LineIntersecTestData.forCross()) {
			trace(data.title);
			
			var dstx, dsty;
			LineIntersecMacros.lineLine(
				dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineLine_touch() : Void
	{
		for (data in LineIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dstx, dsty;
			LineIntersecMacros.lineLine(
				dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineLine_projectIn() : Void
	{
		for (data in LineIntersecTestData.forProjectIn()) {
			trace(data.title);
			
			var dstx, dsty;
			LineIntersecMacros.lineLine(
				dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineLine_projectOut() : Void
	{
		for (data in LineIntersecTestData.forProjectOut()) {
			trace(data.title);
			
			var dstx, dsty;
			LineIntersecMacros.lineLine(
				dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineLine_castIn() : Void
	{
		for (data in LineIntersecTestData.forCastIn()) {
			trace(data.title);
			
			var dstx, dsty;
			LineIntersecMacros.lineLine(
				dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineLine_castOut() : Void
	{
		for (data in LineIntersecTestData.forCastOut()) {
			trace(data.title);
			
			var dstx, dsty;
			LineIntersecMacros.lineLine(
				dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineLine_castAway() : Void
	{
		for (data in LineIntersecTestData.forCastAway()) {
			trace(data.title);
			
			var dstx, dsty;
			LineIntersecMacros.lineLine(
				dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineLine_parallel() : Void
	{
		for (data in LineIntersecTestData.forParallel()) {
			trace(data.title);
			
			var dstx, dsty;
			LineIntersecMacros.lineLine(
				dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	//}
	
	//{ lineRay
	
	@Test
	public function testLineRay_cross() : Void
	{
		for (data in LineIntersecTestData.forCross()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.lineRay(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isTrue(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineRay_touch() : Void
	{
		for (data in LineIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.lineRay(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isTrue(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineRay_projectIn_ba() : Void
	{
		for (data in LineIntersecTestData.forProjectIn()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.lineRay(
				dstres, dstx, dsty
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
			);
			
			Assert.isTrue(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineRay_projectOut_ba() : Void
	{
		for (data in LineIntersecTestData.forProjectOut()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.lineRay(
				dstres, dstx, dsty
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineRay_castIn() : Void
	{
		for (data in LineIntersecTestData.forCastIn()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.lineRay(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isTrue(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineRay_castOut_ba() : Void
	{
		for (data in LineIntersecTestData.forCastOut()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.lineRay(
				dstres, dstx, dsty
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineRay_castAway() : Void
	{
		for (data in LineIntersecTestData.forCastAway()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.lineRay(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineRay_parallel_lite() : Void
	{
		for (data in LineIntersecTestData.forParallel()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.lineRay(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			if (dstres) {
				MathAssert.floatEqual(data.dstx, dstx);
				MathAssert.floatEqual(data.dsty, dsty);
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
			
			var dstres, dstx, dsty;
			LineIntersecMacros.lineSegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isTrue(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineSegm_touch() : Void
	{
		for (data in LineIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.lineSegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isTrue(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineSegm_projectIn_ba() : Void
	{
		for (data in LineIntersecTestData.forProjectIn()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.lineSegm(
				dstres, dstx, dsty
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineSegm_projectOut_ba() : Void
	{
		for (data in LineIntersecTestData.forProjectOut()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.lineSegm(
				dstres, dstx, dsty
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineSegm_castIn() : Void
	{
		for (data in LineIntersecTestData.forCastIn()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.lineSegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineSegm_castOut_ba() : Void
	{
		for (data in LineIntersecTestData.forCastOut()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.lineSegm(
				dstres, dstx, dsty
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineSegm_castAway() : Void
	{
		for (data in LineIntersecTestData.forCastAway()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.lineSegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testLineSegm_parallel() : Void
	{
		for (data in LineIntersecTestData.forParallel()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.lineSegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	//}
	
	//{ rayRay
	
	@Test
	public function testRayRay_cross() : Void
	{
		for (data in LineIntersecTestData.forCross()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.rayRay(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isTrue(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testRayRay_touch() : Void
	{
		for (data in LineIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.rayRay(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isTrue(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testRayRay_projectIn() : Void
	{
		for (data in LineIntersecTestData.forProjectIn()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.rayRay(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isTrue(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testRayRay_projectOut() : Void
	{
		for (data in LineIntersecTestData.forProjectOut()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.rayRay(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testRayRay_castIn() : Void
	{
		for (data in LineIntersecTestData.forCastIn()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.rayRay(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isTrue(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testRayRay_castOut() : Void
	{
		for (data in LineIntersecTestData.forCastOut()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.rayRay(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testRayRay_castAway() : Void
	{
		for (data in LineIntersecTestData.forCastAway()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.rayRay(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testRayRay_parallel_lite() : Void
	{
		for (data in LineIntersecTestData.forParallel()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.rayRay(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			if (dstres) {
				MathAssert.floatEqual(data.dstx, dstx);
				MathAssert.floatEqual(data.dsty, dsty);
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
			
			var dstres, dstx, dsty;
			LineIntersecMacros.raySegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isTrue(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testRaySegm_touch() : Void
	{
		for (data in LineIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.raySegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isTrue(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testRaySegm_projectIn() : Void
	{
		for (data in LineIntersecTestData.forProjectIn()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.raySegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isTrue(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testRaySegm_projectOut() : Void
	{
		for (data in LineIntersecTestData.forProjectOut()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.raySegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testRaySegm_castIn() : Void
	{
		for (data in LineIntersecTestData.forCastIn()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.raySegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testRaySegm_castOut() : Void
	{
		for (data in LineIntersecTestData.forCastOut()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.raySegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testRaySegm_castAway() : Void
	{
		for (data in LineIntersecTestData.forCastAway()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.raySegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testRaySegm_parallel() : Void
	{
		for (data in LineIntersecTestData.forParallel()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.raySegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	//}
	
	//{ segmSegm
	
	@Test
	public function testSegmSegm_cross() : Void
	{
		for (data in LineIntersecTestData.forCross()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.segmSegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isTrue(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testSegmSegm_touch() : Void
	{
		for (data in LineIntersecTestData.forTouch()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.segmSegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isTrue(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testSegmSegm_projectIn() : Void
	{
		for (data in LineIntersecTestData.forProjectIn()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.segmSegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testSegmSegm_projectOut() : Void
	{
		for (data in LineIntersecTestData.forProjectOut()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.segmSegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testSegmSegm_castIn() : Void
	{
		for (data in LineIntersecTestData.forCastIn()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.segmSegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testSegmSegm_castOut() : Void
	{
		for (data in LineIntersecTestData.forCastOut()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.segmSegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testSegmSegm_castAway() : Void
	{
		for (data in LineIntersecTestData.forCastAway()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.segmSegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	@Test
	public function testSegmSegm_parallel() : Void
	{
		for (data in LineIntersecTestData.forParallel()) {
			trace(data.title);
			
			var dstres, dstx, dsty;
			LineIntersecMacros.segmSegm(
				dstres, dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			Assert.isFalse(dstres);
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
	
	//}
}