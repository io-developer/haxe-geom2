package iodev.geom2.macros;

class VecMacros
{
	// covered: result
	macro public static function arrayFromTwoOrLess( dstarr, cnt, ax, ay, bx, by )
	{
		return macro {
			if ($cnt == 2) {
				$dstarr = [ new Vec($ax, $ay), new Vec($bx, $by) ];
			} else if ($cnt == 1) {
				$dstarr = [ new Vec($ax, $ay) ];
			} else {
				$dstarr = [];
			}
		}
	}
	
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
	
	// covered: result
	macro public static function swapVecs( ax, ay, bx, by )
	{
		return macro {
			var t:Float = $ax;
			$ax = $bx;
			$bx = t;
			t = $ay;
			$ay = $by;
			$by = t;
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
			VecMacros.magnitude(vX, vY);
		}
	}
	
	// covered: result
	macro public static function length( vX, vY )
	{
		return macro {
			Math.sqrt(VecMacros.magnitude($vX, $vY));
		}
	}
	
	// covered: result
	macro public static function lengthBetween( aX, aY, bX, bY )
	{
		return macro {
			var vX:Float = $bX - $aX;
			var vY:Float = $bY - $aY;
			VecMacros.length(vX, vY);
		}
	}
	
	// covered: result
	macro public static function normalize( dstX, dstY, vX, vY, len )
	{
		return macro {
			var m:Float = $len / VecMacros.length($vX, $vY);
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
			
			VecMacros.normalize(normAX, normAY, $aX, $aY, 1.0);
			VecMacros.normalize(normBX, normBY, $bX, $bY, 1.0);
			VecMacros.radiansBetweenNormals(normAX, normAY, normBX, normBY);
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
			
			VecMacros.normalize(normAX, normAY, $aX, $aY, 1.0);
			VecMacros.normalize(normBX, normBY, $bX, $bY, 1.0);
			
			VecMacros.add(sumX, sumY, normAX, normAY, normBX, normBY);
			VecMacros.normalize($dstX, $dstY, sumX, sumY, 1.0);
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
			VecMacros.normalize(nx, ny, $dirX, $dirY, 1.0);
			VecMacros.mirrorByNormal($dstX, $dstY, $vX, $vY, nx, ny);
		}
	}
	
	// covered: result, args
	macro public static function mirrorByNormal( dstX, dstY, vX, vY, nX, nY )
	{
		return macro {
			var rx:Float = $nY;
			var ry:Float = -$nX;
			var m:Float = -2.0 * VecMacros.dotProd($vX, $vY, rx, ry);
			$dstX = $vX + m * rx;
			$dstY = $vY + m * ry;
		}
	}
}