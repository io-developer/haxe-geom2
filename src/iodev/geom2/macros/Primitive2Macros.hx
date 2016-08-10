package iodev.geom2.macros;

import iodev.geom2.macros.Vec2Macros;

class Primitive2Macros
{
	macro public static function projectPointToLine( dstX, dstY, pX, pY, lposX, lposY, lvecX, lvecY )
	{
		return macro {
			var lx:Float = $lposX;
			var ly:Float = $lposY;
			var lvx:Float = $lvecX;
			var lvy:Float = $lvecY;
			var dvx:Float = $pX - lx;
			var dvy:Float = $pY - lY;
			var m:Float = Vec2Macros.dotProd(lvx, lvy, dvx, dvy) / Vec2Macros.magnitude(lvx, lvy);
			$dstX = lx + m * lvx;
			$dstY = ly + m * lvy;
		}
	}
	
	macro public static function tangentPointToCircle( dstX1, dstY1, dstX2, dstY2, dstCount, pX, pY, cposX, cposY, cRadius )
	{
		return macro {
			var cr:Float = $cRadius;
			var cr2:Float = cr * cr;
			
			var cx:Float = $cposX;
			var cy:Float = $cposY;
			
			var cvx:Float = cx - $pX;
			var cvy:Float = cy - $pY;
			var cvmag:Float = Vec2Macros.magnitude(cvx, cvy);
			
			if (cvmag < cr2) {
				$dstX1 = $dstX2 = Math.NaN;
				$dstY1 = $dstY2 = Math.NaN;
				$dstCount = 0;
			} else if (cvmag == cr2) {
				$dstX1 = $dstX2 = $pX;
				$dstY1 = $dstY2 = $pY;
				$dstCount = 1;
			} else {
				var m:Float = cr2 / cvmag;
				var dvx:Float = -m * cvx;
				var dvy:Float = -m * cvy;
				var dvmag:Float = Vec2Macros.magnitude(dvx, dvy);
				
				m = cr * Math.sqrt((cr2 - dvmag) / (dvmag * cr2));
				var evx:Float = m * dvy;
				var evy:Float = -m * dvx;
				
				$dstX1 = cx + dvx - evx;
				$dstY1 = cy + dvy - evy;
				
				$dstX2 = cx + dvx + evx;
				$dstY2 = cy + dvy + evy;
				
				$dstCount = 2;
			}
		}
	}
	
	/*
	macro public static function tangentPointToCircle_core(
		dstDvX, dstDvY, dstEvX, dstEvY, pX, pY, cx, cy, cr, cr2, cvx, cvy )
	{
		return macro {
			var cr:Float = $cRadius;
			var cr2:Float = cr * cr;
			
			var cx:Float = $cposX;
			var cy:Float = $cposY;
			
			var cvmag:Float = Vec2Macros.magnitude($cvx, $cvy);
			
			var m:Float = cr2 / cvmag;
			$dstDvX = -m * $cvx;
			$dstDvY = -m * $cvy;
			var dvmag:Float = Vec2Macros.magnitude($dstDvX, $dstDvY);
			
			m = cr * Math.sqrt((cr2 - dvmag) / (dvmag * cr2));
			$dstEvX = m * $dstDvY;
			$dstEvY = -m * $dstDvX;
		}
	}
	*/
	
	/*
	macro public static function projectPointToSegment( dstX, dstY, dstTest, pX, pY, sposX, sposY, svecX, svecY )
	{
		return macro {
			Primitive2Macros.projectPointToLine($dstX, $dstY, $pX, $pY, $sposX, $sposY, $svecX, $svecY);
			$dstTest = Space2Macros.isPointInSegmentSpace($dstX, $dstY, $sposX, $sposY, $svecX, $svecY);
		}
	}
	
	macro public static function projectPointToRay( dstX, dstY, dstTest, pX, pY, rposX, rposY, rvecX, rvecY )
	{
		return macro {
			Primitive2Macros.projectPointToLine($dstX, $dstY, $pX, $pY, $rposX, $rposY, $rvecX, $rvecY);
			$dstTest = Space2Macros.isPointInRaySpace($dstX, $dstY, $rposX, $rposY, $rvecX, $rvecY);
		}
	}
	*/
	
	/*
	public final function tanCirclePoint( cpos:Vec2, cradius:Number, p:Vec2, dst0:Vec2, dst1:Vec2 ) : int
	{
		var ax:Number = p.x - cpos.x;
		var ay:Number = p.y - cpos.y;
		var am:Number = ax * ax + ay * ay;
		var r2:Number = cradius * cradius;
		if ((am - r2) < 0)
		{
			dst0.x = dst0.y = dst1.x = dst1.y = NaN;
			return 0;
		}
		if ((am - r2) == 0)
		{
			dst0.x = dst1.x = p.x;
			dst0.y = dst1.y = p.y;
			return 1;
		}
		
		ax *= 0.5;
		ay *= 0.5;
		var pm:Number = ax * ax + ay * ay;
		var qk:Number = 0.5 * (r2 - 0.25 * am + pm) / pm;
		var dx:Number = dst0.x = dst1.x = cpos.x + qk * ax;
		var dy:Number = dst0.y = dst1.y = cpos.y + qk * ay;
		
		qk = (ay * (cpos.x - dx) - ax * (cpos.y - dy)) / pm;
		dx = ay * qk - (cpos.x - dx);
		dy = -ax * qk - (cpos.y - dy);
		var qm:Number = Math.sqrt((r2 - (dx * dx + dy * dy)) / pm);
		
		dst0.x -= ay * qm;
		dst0.y += ax * qm;
		
		dst1.x += ay * qm;
		dst1.y -= ax * qm;
		
		return 2;
	}
	
	public final function tanCircleCircle( apos:Vec2, aradius:Number, bpos:Vec2, bradius:Number, dst0:Vec2, dst1:Vec2 ) : int
	{
		throw new DefinitionError("Not implemented");
		return -1;
	}
	
	public final function tanCircleCircleInv( apos:Vec2, aradius:Number, bpos:Vec2, bradius:Number, dst0:Vec2, dst1:Vec2 ) : int
	{
		throw new DefinitionError("Not implemented");
		return -1;
	}
	*/
}