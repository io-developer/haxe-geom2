package iodev.geom2.macros;

class CircleIntersecMacros
{
	macro public static function circleLine( dstX1, dstY1, dstX2, dstY2, dstCount, lposX, lposY, lvecX, lvecY, cposX, cposY, cRadius )
	{
		return macro {
			var lvx:Float = $lvecX;
			var lvy:Float = $lvecY;
			var lvmag:Float = VecMacros.magnitude(lvx, lvy);
			
			var cvx:Float = $cposX - $lposX;
			var cvy:Float = $cposY - $lposY;
			
			var m:Float = VecMacros.dotProd(lvx, lvy, cvx, cvy) / lvmag;
			
			var pvx:Float = m * lvx;
			var pvy:Float = m * lvy;
			
			var dmag:Float = $cRadius * $cRadius - VecMacros.magnitude(pvx - cvx, pvy - cvy);
			if (dmag > 0) {
				var sm:Float = Math.sqrt(dmag / lvmag);
				
				$dstX1 = $lposX + pvx - sm * lvx;
				$dstY1 = $lposY + pvy - sm * lvy;
				
				$dstX2 = $lposX + pvx + sm * lvx;
				$dstY2 = $lposY + pvy + sm * lvy;
				
				$dstCount = 2;
			} else if (dmag == 0) {
				$dstX1 = $dstX2 = $lposX + pvx;
				$dstY1 = $dstY2 = $lposY + pvy;
				
				$dstCount = 1;
			} else {
				$dstX1 = $dstX2 = Math.NaN;
				$dstY1 = $dstY2 = Math.NaN;
				
				$dstCount = 0;
			}
		}
	}
}