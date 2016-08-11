package iodev.geom2.macros;

import data.LineIntersec2TestData;
import massive.munit.Assert;

class LineIntersec2MacrosTest
{
	@Test
	public function testLineLine_cross() : Void
	{
		for (data in LineIntersec2TestData.forCross()) {
			trace(data.title);
			
			var dstx, dsty;
			LineIntersec2Macros.lineLine(
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
		for (data in LineIntersec2TestData.forTouch()) {
			trace(data.title);
			
			var dstx, dsty;
			LineIntersec2Macros.lineLine(
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
		for (data in LineIntersec2TestData.forProjectIn()) {
			trace(data.title);
			
			var dstx, dsty;
			LineIntersec2Macros.lineLine(
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
		for (data in LineIntersec2TestData.forProjectOut()) {
			trace(data.title);
			
			var dstx, dsty;
			LineIntersec2Macros.lineLine(
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
		for (data in LineIntersec2TestData.forCastIn()) {
			trace(data.title);
			
			var dstx, dsty;
			LineIntersec2Macros.lineLine(
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
		for (data in LineIntersec2TestData.forCastOut()) {
			trace(data.title);
			
			var dstx, dsty;
			LineIntersec2Macros.lineLine(
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
		for (data in LineIntersec2TestData.forCastAway()) {
			trace(data.title);
			
			var dstx, dsty;
			LineIntersec2Macros.lineLine(
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
		for (data in LineIntersec2TestData.forParallel()) {
			trace(data.title);
			
			var dstx, dsty;
			LineIntersec2Macros.lineLine(
				dstx, dsty
				, data.ax0, data.ay0, data.ax1 - data.ax0, data.ay1 - data.ay0
				, data.bx0, data.by0, data.bx1 - data.bx0, data.by1 - data.by0
			);
			
			MathAssert.floatEqual(data.dstx, dstx);
			MathAssert.floatEqual(data.dsty, dsty);
		}
	}
}