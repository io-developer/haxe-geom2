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
		var ax:Float, ay:Float, bx:Float, by:Float, cnt:Int, dstarr:Array<Vec>;
		CircleIntersecMacros.circleLine(ax, ay, bx, by, cnt, cpos.x, cpos.y, cradius, lpos.x, lpos.y, lvec.x, lvec.y);
		VecMacros.arrayFromTwoOrLess(dstarr, cnt, ax, ay, bx, by);
		return dstarr;
	}
	
	public static function circleLineTo( dsta:Vec, dstb:Vec, cpos:Vec, cradius:Float, lpos:Vec, lvec:Vec ) : Int
	{
		var cnt:Int;
		CircleIntersecMacros.circleLine(dsta.x, dsta.y, dstb.x, dstb.y, cnt, cpos.x, cpos.y, cradius, lpos.x, lpos.y, lvec.x, lvec.y);
		return cnt;
	}
	
	public static function circleRay( cpos:Vec, cradius:Float, rpos:Vec, rvec:Vec ) : Array<Vec>
	{
		var ax:Float, ay:Float, bx:Float, by:Float, cnt:Int, dstarr:Array<Vec>;
		CircleIntersecMacros.circleRay(ax, ay, bx, by, cnt, cpos.x, cpos.y, cradius, rpos.x, rpos.y, rvec.x, rvec.y);
		VecMacros.arrayFromTwoOrLess(dstarr, cnt, ax, ay, bx, by);
		return dstarr;
	}
	
	public static function circleRayTo( dsta:Vec, dstb:Vec, cpos:Vec, cradius:Float, rpos:Vec, rvec:Vec ) : Int
	{
		var cnt:Int;
		CircleIntersecMacros.circleRay(dsta.x, dsta.y, dstb.x, dstb.y, cnt, cpos.x, cpos.y, cradius, rpos.x, rpos.y, rvec.x, rvec.y);
		return cnt;
	}
	
	public static function circleSegm( cpos:Vec, cradius:Float, spos:Vec, svec:Vec ) : Array<Vec>
	{
		var ax:Float, ay:Float, bx:Float, by:Float, cnt:Int, dstarr:Array<Vec>;
		CircleIntersecMacros.circleSegm(ax, ay, bx, by, cnt, cpos.x, cpos.y, cradius, spos.x, spos.y, svec.x, svec.y);
		VecMacros.arrayFromTwoOrLess(dstarr, cnt, ax, ay, bx, by);
		return dstarr;
	}
	
	public static function circleSegmTo( dsta:Vec, dstb:Vec, cpos:Vec, cradius:Float, spos:Vec, svec:Vec ) : Int
	{
		var cnt:Int;
		CircleIntersecMacros.circleSegm(dsta.x, dsta.y, dstb.x, dstb.y, cnt, cpos.x, cpos.y, cradius, spos.x, spos.y, svec.x, svec.y);
		return cnt;
	}
}