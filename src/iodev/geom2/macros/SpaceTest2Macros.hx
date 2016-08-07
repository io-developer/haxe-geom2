package iodev.geom2.macros;

class SpaceTest2Macros
{
	macro public static function isPointInRaySpace( pX, pY, rposX, rposY, rvecX, rvecY )
	{
		return macro {
			((
				Vecop2Macros.dotProd($rvecX, $rvecY, ($pX - $rposX), ($pY - $rposY))
			) >= 0);
		}
	}
	
	macro public static function isPointInSegmentSpace( pX, pY, sposX, sposY, svecX, svecY )
	{
		return macro {
			((
				Vecop2Macros.dotProd($svecX, $svecY, ($pX - $sposX), ($pY - $sposY))
				* Vecop2Macros.dotProd($svecX, $svecY, ($pX - ($sposX + $svecX)), ($pY - ($sposY + $svecY)))
			) <= 0);
		}
	}
	
	macro public static function isPointInCircle( pX, pY, cX, cY, cRadius )
	{
		return macro {
			var dx:Float, dy:Float;
			Vecop2Macros.sub(dx, dy, $pX, $pY, $cX, $cY);
			(Vecop2Macros.magnitude(dx, dy) <= $cRadius * $cRadius);
		}
	}
}