package;

import haxe.PosInfos;
import massive.munit.Assert;

class MathAssert
{
	public static function floatEqual( expected:Float, actual:Float, ?info:PosInfos ) : Void
	{
		if (!_floatEqualPrecise(expected, actual, 0.00001)) {
			Assert.fail("Float numbers are not equal. Expected '" + expected + "' actual '" + actual + "'", info);
		}
	}
	
	public static function floatNotEqual( expected:Float, actual:Float, ?info:PosInfos ) : Void
	{
		if (_floatEqualPrecise(expected, actual, 0.00001)) {
			Assert.fail("Float numbers are equal. Expected '" + expected + "' actual '" + actual + "'", info);
		}
	}
	
	private static function _floatEqualPrecise( expected:Float, actual:Float, precision:Float ) : Bool
	{
		if (Math.isFinite(expected) && Math.isFinite(actual)) {
			var delta:Float = Math.abs(expected - actual);
			if (delta <= precision) {
				return true;
			}
		} else if (Math.isNaN(expected) && Math.isNaN(actual)) {
			return true;
		} else if (expected == actual) {
			return true;
		}
		return false;
	}
}