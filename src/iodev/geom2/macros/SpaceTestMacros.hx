package iodev.geom2.macros;

class SpaceTestMacros
{
	macro public static function isRaySpace( px, py, rposx, rposy, rvecx, rvecy )
	{
		return macro {
			((
				VecMacros.dotProd($rvecx, $rvecy, ($px - $rposx), ($py - $rposy))
			) >= 0);
		}
	}
	
	macro public static function isSegmSpace( px, py, sposx, sposy, svecx, svecy )
	{
		return macro {
			((
				VecMacros.dotProd($svecx, $svecy, ($px - $sposx), ($py - $sposy))
				* VecMacros.dotProd($svecx, $svecy, ($px - ($sposx + $svecx)), ($py - ($sposy + $svecy)))
			) <= 0);
		}
	}
	
	macro public static function isCircleSpace( px, py, cx, cy, cradius )
	{
		return macro {
			var dx:Float, dy:Float;
			VecMacros.sub(dx, dy, $px, $py, $cx, $cy);
			(VecMacros.magnitude(dx, dy) <= $cradius * $cradius);
		}
	}
}