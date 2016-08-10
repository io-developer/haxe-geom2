package iodev.geom2.macros;

class SpaceTest2Macros
{
	macro public static function isPointInRaySpace( pX, pY, rposX, rposY, rvecX, rvecY )
	{
		return macro {
			((
				Vec2Macros.dotProd($rvecX, $rvecY, ($pX - $rposX), ($pY - $rposY))
			) >= 0);
		}
	}
	
	macro public static function isPointInSegmentSpace( pX, pY, sposX, sposY, svecX, svecY )
	{
		return macro {
			((
				Vec2Macros.dotProd($svecX, $svecY, ($pX - $sposX), ($pY - $sposY))
				* Vec2Macros.dotProd($svecX, $svecY, ($pX - ($sposX + $svecX)), ($pY - ($sposY + $svecY)))
			) <= 0);
		}
	}
	
	macro public static function isPointInCircle( pX, pY, cX, cY, cRadius )
	{
		return macro {
			var dx:Float, dy:Float;
			Vec2Macros.sub(dx, dy, $pX, $pY, $cX, $cY);
			(Vec2Macros.magnitude(dx, dy) <= $cRadius * $cRadius);
		}
	}
}