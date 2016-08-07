package iodev.geom2.macros;

import iodev.geom2.macros.Primitive2Macros;

class Intersec2Macros
{
	macro public static function lineLine( dstX, dstY, aposX, aposY, avecX, avecY, bposX, bposY, bvecX, bvecY )
	{
		return macro {
			var dx1dy2:Float = $avecX * $bvecY;
			var dx2dy1:Float = $bvecX * $avecY;
			var isp:Float = 1.0 / (dx1dy2 - dx2dy1);
			$dstX = (($bposX * dx1dy2 - $aposX * dx2dy1) - ($bposY - $aposY) * $avecX * $bvecX) * isp;
			$dstY = (($aposY * dx1dy2 - $bposY * dx2dy1) + ($bposX - $aposX) * $avecY * $bvecY) * isp;
		}
	}
	
	macro public static function circleLine( dstX1, dstY1, dstX2, dstY2, dstCount, lposX, lposY, lvecX, lvecY, cposX, cposY, cRadius )
	{
		return macro {
			var lvx:Float = $lvecX;
			var lvy:Float = $lvecY;
			var lvmag:Float = Vecop2Macros.magnitude(lvx, lvy);
			
			var cvx:Float = $cposX - $lposX;
			var cvy:Float = $cposY - $lposY;
			
			var m:Float = Vecop2Macros.dotProd(lvx, lvy, cvx, cvy) / lvmag;
			
			var pvx:Float = m * lvx;
			var pvy:Float = m * lvy;
			
			var dmag:Float = $cRadius * $cRadius - Vecop2Macros.magnitude(pvx - cvx, pvy - cvy);
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
	
	
	/*
	macro public static function lineSegment( dstX, dstY, dstResult, lposX, lposY, lvecX, lvecY, sposX, sposY, svecX, svecY )
	{
		return macro {
			Intersec2Macros.lineLine($dstX, $dstY, $lposX, $lposY, $lvecX, $lvecY, $sposX, $sposY, $svecX, $svecY);
			$dstResult = Space2Macros.isPointInSegmentSpace($dstX, $dstY, $sposX, $sposY, $svecX, $svecY);
		}
	}
	
	macro public static function lineRay( dstX, dstY, dstResult, lposX, lposY, lvecX, lvecY, rposX, rposY, rvecX, rvecY )
	{
		return macro {
			Intersec2Macros.lineLine($dstX, $dstY, $lposX, $lposY, $lvecX, $lvecY, $rposX, $rposY, $rvecX, $rvecY);
			$dstResult = Space2Macros.isPointInRaySpace($dstX, $dstY, $rposX, $rposY, $rvecX, $rvecY);
		}
	}
	
	macro public static function segmentSegment( dstX, dstY, dstResult, aposX, aposY, avecX, avecY, bposX, bposY, bvecX, bvecY )
	{
		return macro {
			Intersec2Macros.lineLine($dstX, $dstY, $aposX, $aposY, $avecX, $avecY, $bposX, $bposY, $bvecX, $bvecY);
			var resA:Bool = Space2Macros.isPointInSegmentSpace($dstX, $dstY, $aposX, $aposY, $avecX, $avecY);
			var resB:Bool = Space2Macros.isPointInSegmentSpace($dstX, $dstY, $bposX, $bposY, $bvecX, $bvecY);
			$dstResult = resA && resB;
		}
	}
	
	macro public static function rayRay( dstX, dstY, dstResult, aposX, aposY, avecX, avecY, bposX, bposY, bvecX, bvecY )
	{
		return macro {
			Intersec2Macros.lineLine($dstX, $dstY, $aposX, $aposY, $avecX, $avecY, $bposX, $bposY, $bvecX, $bvecY);
			var resA:Bool = Space2Macros.isPointInRaySpace($dstX, $dstY, $aposX, $aposY, $avecX, $avecY);
			var resB:Bool = Space2Macros.isPointInRaySpace($dstX, $dstY, $bposX, $bposY, $bvecX, $bvecY);
			$dstResult = resA && resB;
		}
	}
	
	macro public static function raySegment( dstX, dstY, dstResult, rposX, rposY, rvecX, rvecY, sposX, sposY, svecX, svecY )
	{
		return macro {
			Intersec2Macros.lineLine($dstX, $dstY, $rposX, $rposY, $rvecX, $rvecY, $sposX, $sposY, $svecX, $svecY);
			var resR:Bool = Space2Macros.isPointInRaySpace($dstX, $dstY, $rposX, $rposY, $rvecX, $rvecY);
			var resS:Bool = Space2Macros.isPointInSegmentSpace($dstX, $dstY, $sposX, $sposY, $svecX, $svecY);
			$dstResult = resR && resS;
		}
	}
	*/
	
}