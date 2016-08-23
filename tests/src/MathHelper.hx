package;

class MathHelper
{
	public static function floatEqual( expected:Dynamic, actual:Float, precision:Float=0.0001 ) : Bool
	{
		if (expected == "FINITE") {
			return Math.isFinite(actual);
		}
		if (expected == "NOT_FINITE") {
			return !Math.isFinite(actual);
		}
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