package iodev.geom2.intersec;

import iodev.geom2.Vec2;
import iodev.geom2.macros.Intersec2Macros;
import iodev.geom2.macros.SpaceTest2Macros;
import iodev.geom2.macros.Vec2Macros;

@:expose
class CircleIntersec2
{
	public static function circleLineTo( dstA:Vec2, dstB:Vec2, cpos:Vec2, cradius:Float, lpos:Vec2, lvec:Vec2 ) : Int
	{
		var dstCount:Int = 0;
		Intersec2Macros.circleLine(dstA.x, dstA.y, dstB.x, dstB.y, dstCount, lpos.x, lpos.y, lvec.x, lvec.y, cpos.x, cpos.y, cradius);
		return dstCount;
	}
	
	public static function circleRayTo( dstA:Vec2, dstB:Vec2, cpos:Vec2, cradius:Float, rpos:Vec2, rvec:Vec2 ) : Int
	{
		var dstCount:Int = 0;
		Intersec2Macros.circleLine(dstA.x, dstA.y, dstB.x, dstB.y, dstCount, rpos.x, rpos.y, rvec.x, rvec.y, cpos.x, cpos.y, cradius);
		return dstCount;
	}
}