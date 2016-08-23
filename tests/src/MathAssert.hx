package;

import haxe.PosInfos;
import massive.munit.Assert;

class MathAssert
{
	public static function floatEqual( expected:Dynamic, actual:Float, ?info:PosInfos ) : Void
	{
		if (!MathHelper.floatEqual(expected, actual)) {
			Assert.fail("Float numbers are not equal. Expected '" + expected + "' actual '" + actual + "'", info);
		}
	}
	
	public static function floatNotEqual( expected:Dynamic, actual:Float, ?info:PosInfos ) : Void
	{
		if (MathHelper.floatEqual(expected, actual)) {
			Assert.fail("Float numbers are equal. Expected '" + expected + "' actual '" + actual + "'", info);
		}
	}
}