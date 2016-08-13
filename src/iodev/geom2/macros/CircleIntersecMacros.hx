package iodev.geom2.macros;

class CircleIntersecMacros
{
	macro public static function circleLine( dstax, dstay, dstbx, dstby, dstcount, cposx, cposy, cradius, lposx, lposy, lvecx, lvecy )
	{
		return macro {
			var lvx:Float = $lvecx;
			var lvy:Float = $lvecy;
			var lvmag:Float = VecMacros.magnitude(lvx, lvy);
			
			var cvx:Float = $cposx - $lposx;
			var cvy:Float = $cposy - $lposy;
			
			var m:Float = VecMacros.dotProd(lvx, lvy, cvx, cvy) / lvmag;
			
			var pvx:Float = m * lvx;
			var pvy:Float = m * lvy;
			
			var dmag:Float = $cradius * $cradius - VecMacros.magnitude(pvx - cvx, pvy - cvy);
			if (dmag > 0) {
				var sm:Float = Math.sqrt(dmag / lvmag);
				
				$dstax = $lposx + pvx - sm * lvx;
				$dstay = $lposy + pvy - sm * lvy;
				
				$dstbx = $lposx + pvx + sm * lvx;
				$dstby = $lposy + pvy + sm * lvy;
				
				$dstcount = 2;
			} else if (dmag == 0) {
				$dstax = $dstbx = $lposx + pvx;
				$dstay = $dstby = $lposy + pvy;
				
				$dstcount = 1;
			} else {
				$dstax = $dstbx = Math.NaN;
				$dstay = $dstby = Math.NaN;
				
				$dstcount = 0;
			}
		}
	}
	
	macro public static function circleRay( dstax, dstay, dstbx, dstby, dstcount, cposx, cposy, cradius, rposx, rposy, rvecx, rvecy )
	{
		return macro {
			CircleIntersecMacros.circleLine($dstax, $dstay, $dstbx, $dstby, $dstcount, $cposx, $cposy, $cradius, $rposx, $rposy, $rvecx, $rvecy);
			
			if ($dstcount > 0 && !SpaceTestMacros.isRaySpace($dstbx, $dstby, $rposx, $rposy, $rvecx, $rvecy)) {
				$dstcount--;
				$dstbx = $dstax;
				$dstby = $dstay;
			}
			if ($dstcount > 0 && !SpaceTestMacros.isRaySpace($dstax, $dstay, $rposx, $rposy, $rvecx, $rvecy)) {
				$dstcount--;
				VecMacros.swapVecs($dstax, $dstay, $dstbx, $dstby);
			}
		}
	}
	
	macro public static function circleSegm( dstax, dstay, dstbx, dstby, dstcount, cposx, cposy, cradius, sposx, sposy, svecx, svecy )
	{
		return macro {
			CircleIntersecMacros.circleLine($dstax, $dstay, $dstbx, $dstby, $dstcount, $cposx, $cposy, $cradius, $sposx, $sposy, $svecx, $svecy);
			
			if ($dstcount > 0 && !SpaceTestMacros.isSegmSpace($dstbx, $dstby, $sposx, $sposy, $svecx, $svecy)) {
				$dstcount--;
				$dstbx = $dstax;
				$dstby = $dstay;
			}
			if ($dstcount > 0 && !SpaceTestMacros.isSegmSpace($dstax, $dstay, $sposx, $sposy, $svecx, $svecy)) {
				$dstcount--;
				VecMacros.swapVecs($dstax, $dstay, $dstbx, $dstby);
			}
		}
	}
}