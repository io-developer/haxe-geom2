package iodev.geom2.macros;

class LineIntersec2Macros
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
}