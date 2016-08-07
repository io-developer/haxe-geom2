package iodev.geom2.macros;

class Vecop2Macros
{
	// covered: result, args
	macro public static function equals( aX, aY, bX, bY )
	{
		return macro {
			($aX == $bX && $aY == $bY);
		}
	}
	
	// covered: result, args
	macro public static function negate( dstX, dstY, vX, vY )
	{
		return macro {
			$dstX = -$vX;
			$dstY = -$vY;
		}
	}
	
	// covered: result, args
	macro public static function swapXY( dstX, dstY, vX, vY )
	{
		return macro {
			var t:Float = $vX;
			$dstX = $vY;
			$dstY = t;
		}
	}
	
	// covered: result, args
	macro public static function add( dstX, dstY, aX, aY, bX, bY )
	{
		return macro {
			$dstX = $aX + $bX;
			$dstY = $aY + $bY;
		}
	}
	
	// covered: result, args
	macro public static function sub( dstX, dstY, aX, aY, bX, bY )
	{
		return macro {
			$dstX = $aX - $bX;
			$dstY = $aY - $bY;
		}
	}
	
	// covered: result, args
	macro public static function mul( dstX, dstY, aX, aY, bX, bY )
	{
		return macro {
			$dstX = $aX * $bX;
			$dstY = $aY * $bY;
		}
	}
	
	// covered: result, args
	macro public static function div( dstX, dstY, aX, aY, bX, bY )
	{
		return macro {
			$dstX = $aX / $bX;
			$dstY = $aY / $bY;
		}
	}
	
	// covered: result
	macro public static function magnitude( vX, vY )
	{
		return macro {
			$vX * $vX + $vY * $vY;
		}
	}
	
	// covered: result
	macro public static function magnitudeBetween( aX, aY, bX, bY )
	{
		return macro {
			var vX:Float = $bX - $aX;
			var vY:Float = $bY - $aY;
			Vecop2Macros.magnitude(vX, vY);
		}
	}
	
	// covered: result
	macro public static function length( vX, vY )
	{
		return macro {
			Math.sqrt(Vecop2Macros.magnitude($vX, $vY));
		}
	}
	
	// covered: result
	macro public static function lengthBetween( aX, aY, bX, bY )
	{
		return macro {
			var vX:Float = $bX - $aX;
			var vY:Float = $bY - $aY;
			Vecop2Macros.length(vX, vY);
		}
	}
	
	// covered: result
	macro public static function normalize( dstX, dstY, vX, vY, len )
	{
		return macro {
			var m:Float = $len / Vecop2Macros.length($vX, $vY);
			$dstX = m * $vX;
			$dstY = m * $vY;
		}
	}
	
	// covered: result
	macro public static function dotProd( aX, aY, bX, bY )
	{
		return macro {
			$aX * $bX + $aY * $bY;
		}
	}
	
	// covered: result
	macro public static function skewProd( aX, aY, bX, bY )
	{
		return macro {
			$aX * $bY - $aY * $bX;
		}
	}
	
	// covered: result
	macro public static function polar( dstX, dstY, radians, len )
	{
		return macro {
			$dstX = $len * Math.cos($radians);
			$dstY = $len * Math.sin($radians);
		}
	}
	
	// covered: result
	macro public static function radiansOf( vX, vY )
	{
		return macro {
			Math.atan2($vY, $vX);
		}
	}
	
	// covered: result
	macro public static function radiansBetween( aX, aY, bX, bY )
	{
		return macro {
			var normAX:Float, normAY:Float, normBX:Float, normBY:Float;
			
			Vecop2Macros.normalize(normAX, normAY, $aX, $aY, 1.0);
			Vecop2Macros.normalize(normBX, normBY, $bX, $bY, 1.0);
			Vecop2Macros.radiansBetweenNormals(normAX, normAY, normBX, normBY);
		}
	}
	
	// covered: result
	macro public static function radiansBetweenNormals( aX, aY, bX, bY )
	{
		return macro {
			Math.acos($aX * $bX + $aY * $bY);
		}
	}
	
	// covered: result, args
	macro public static function normalBisector( dstX, dstY, aX, aY, bX, bY )
	{
		return macro {
			var normAX:Float, normAY:Float, normBX:Float, normBY:Float, sumX:Float, sumY:Float;
			
			Vecop2Macros.normalize(normAX, normAY, $aX, $aY, 1.0);
			Vecop2Macros.normalize(normBX, normBY, $bX, $bY, 1.0);
			
			Vecop2Macros.add(sumX, sumY, normAX, normAY, normBX, normBY);
			Vecop2Macros.normalize($dstX, $dstY, sumX, sumY, 1.0);
		}
	}
	
	// covered: result, args
	macro public static function rotate( dstX, dstY, vX, vY, radians )
	{
		return macro {
			var sn:Float = Math.sin($radians);
			var cs:Float = Math.cos($radians);
			var sx:Float = $vX;
			$dstX = sx * cs - $vY * sn; 
			$dstY = sx * sn + $vY * cs;
		}
	}
	
	// covered: result, args
	macro public static function rotateQuart( dstX, dstY, vX, vY, times )
	{
		return macro {
			var n:Int = (4 + ($times % 4)) % 4;
			var sn:Int = (2 - n) % 2;
			var cs:Int = (1 - n) % 2;
			var sx:Float = $vX;
			$dstX = sx * cs - $vY * sn; 
			$dstY = sx * sn + $vY * cs;
		}
	}
	
	// covered: result, args
	macro public static function mirrorBy( dstX, dstY, vX, vY, dirX, dirY )
	{
		return macro {
			var nx:Float, ny:Float;
			Vecop2Macros.normalize(nx, ny, $dirX, $dirY, 1.0);
			Vecop2Macros.mirrorByNormal($dstX, $dstY, $vX, $vY, nx, ny);
		}
	}
	
	// covered: result, args
	macro public static function mirrorByNormal( dstX, dstY, vX, vY, nX, nY )
	{
		return macro {
			var rx:Float = $nY;
			var ry:Float = -$nX;
			var m:Float = -2.0 * Vecop2Macros.dotProd($vX, $vY, rx, ry);
			$dstX = $vX + m * rx;
			$dstY = $vY + m * ry;
		}
	}
}