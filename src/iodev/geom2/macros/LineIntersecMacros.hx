package iodev.geom2.macros;

class LineIntersecMacros
{
	// covered: result
	macro public static function lineLine( dstx, dsty, aposx, aposy, avecx, avecy, bposx, bposy, bvecx, bvecy )
	{
		return macro {
			var dx1dy2:Float = $avecx * $bvecy;
			var dx2dy1:Float = $bvecx * $avecy;
			var isp:Float = 1.0 / (dx1dy2 - dx2dy1);
			$dstx = (($bposx * dx1dy2 - $aposx * dx2dy1) - ($bposy - $aposy) * $avecx * $bvecx) * isp;
			$dsty = (($aposy * dx1dy2 - $bposy * dx2dy1) + ($bposx - $aposx) * $avecy * $bvecy) * isp;
		}
	}
	
	// covered: result
	macro public static function lineRay( dstres, dstx, dsty, lposx, lposy, lvecx, lvecy, rposx, rposy, rvecx, rvecy )
	{
		return macro {
			LineIntersecMacros.lineLine($dstx, $dsty, $lposx, $lposy, $lvecx, $lvecy, $rposx, $rposy, $rvecx, $rvecy);
			$dstres = SpaceTestMacros.isRaySpace($dstx, $dsty, $rposx, $rposy, $rvecx, $rvecy);
		}
	}
	
	// covered: result (cross)
	macro public static function lineSegm( dstres, dstx, dsty, lposx, lposy, lvecx, lvecy, sposx, sposy, svecx, svecy )
	{
		return macro {
			LineIntersecMacros.lineLine($dstx, $dsty, $lposx, $lposy, $lvecx, $lvecy, $sposx, $sposy, $svecx, $svecy);
			$dstres = SpaceTestMacros.isSegmSpace($dstx, $dsty, $sposx, $sposy, $svecx, $svecy);
		}
	}
	
	// covered: result (cross)
	macro public static function rayRay( dstres, dstx, dsty, aposx, aposy, avecx, avecy, bposx, bposy, bvecx, bvecy )
	{
		return macro {
			LineIntersecMacros.lineLine($dstx, $dsty, $aposx, $aposy, $avecx, $avecy, $bposx, $bposy, $bvecx, $bvecy);
			$dstres = SpaceTestMacros.isRaySpace($dstx, $dsty, $aposx, $aposy, $avecx, $avecy)
				&& SpaceTestMacros.isRaySpace($dstx, $dsty, $bposx, $bposy, $bvecx, $bvecy);
		}
	}
	
	// covered: result (cross)
	macro public static function raySegm( dstres, dstx, dsty, rposx, rposy, rvecx, rvecy, sposx, sposy, svecx, svecy )
	{
		return macro {
			LineIntersecMacros.lineLine($dstx, $dsty, $rposx, $rposy, $rvecx, $rvecy, $sposx, $sposy, $svecx, $svecy);
			$dstres = SpaceTestMacros.isRaySpace($dstx, $dsty, $rposx, $rposy, $rvecx, $rvecy)
				&& SpaceTestMacros.isSegmSpace($dstx, $dsty, $sposx, $sposy, $svecx, $svecy);
		}
	}
	
	// covered: result (cross)
	macro public static function segmSegm( dstres, dstx, dsty, aposx, aposy, avecx, avecy, bposx, bposy, bvecx, bvecy )
	{
		return macro {
			LineIntersecMacros.lineLine($dstx, $dsty, $aposx, $aposy, $avecx, $avecy, $bposx, $bposy, $bvecx, $bvecy);
			$dstres = SpaceTestMacros.isSegmSpace($dstx, $dsty, $aposx, $aposy, $avecx, $avecy)
				&& SpaceTestMacros.isSegmSpace($dstx, $dsty, $bposx, $bposy, $bvecx, $bvecy);
		}
	}
}