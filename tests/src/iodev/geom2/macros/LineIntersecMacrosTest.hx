package iodev.geom2.macros;

import data.LineIntersecTestData;
import massive.munit.Assert;

class LineIntersecMacrosTest
{
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
}