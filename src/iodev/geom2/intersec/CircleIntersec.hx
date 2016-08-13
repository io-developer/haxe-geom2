package iodev.geom2.intersec;

import iodev.geom2.Vec;
import iodev.geom2.macros.CircleIntersecMacros;
import iodev.geom2.macros.LineIntersecMacros;
import iodev.geom2.macros.SpaceTestMacros;
import iodev.geom2.macros.VecMacros;

@:expose
class CircleIntersec
{
	public static function circleLine( cpos:Vec, cradius:Float, lpos:Vec, lvec:Vec ) : Array<Vec>
	{
		var ax:Float, ay:Float, bx:Float, by:Float, cnt:Int;
		CircleIntersecMacros.circleLine(ax, ay, bx, by, cnt, lpos.x, lpos.y, lvec.x, lvec.y, cpos.x, cpos.y, cradius);
		if (cnt == 2) {
			return [ new Vec(ax, ay), new Vec(bx, by) ];
		}
		if (cnt == 1) {
			return [ new Vec(ax, ay) ];
		}
		return [];
	}
	
	public static function circleLineTo( dstA:Vec, dstB:Vec, cpos:Vec, cradius:Float, lpos:Vec, lvec:Vec ) : Int
	{
		var dstCount:Int = 0;
		CircleIntersecMacros.circleLine(dstA.x, dstA.y, dstB.x, dstB.y, dstCount, lpos.x, lpos.y, lvec.x, lvec.y, cpos.x, cpos.y, cradius);
		return dstCount;
	}
	
	public static function circleRayTo( dstA:Vec, dstB:Vec, cpos:Vec, cradius:Float, rpos:Vec, rvec:Vec ) : Int
	{
		var dstCount:Int = 0;
		CircleIntersecMacros.circleLine(dstA.x, dstA.y, dstB.x, dstB.y, dstCount, rpos.x, rpos.y, rvec.x, rvec.y, cpos.x, cpos.y, cradius);
		return dstCount;
	}
}