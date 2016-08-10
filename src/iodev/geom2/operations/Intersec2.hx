package iodev.geom2.operations;

import iodev.geom2.macros.SpaceTest2Macros;
import iodev.geom2.macros.Vec2Macros;
import iodev.geom2.macros.Intersec2Macros;
import iodev.geom2.Vec2;

class Intersec2
{
	public static function lineLine( dst:Vec2, apos:Vec2, avec:Vec2, bpos:Vec2, bvec:Vec2 ) : Void
	{
		Intersec2Macros.lineLine(dst.x, dst.y, apos.x, apos.y, avec.x, avec.y, bpos.x, bpos.y, bvec.x, bvec.y);
	}
	
	public static function lineRay( dst:Vec2, lpos:Vec2, lvec:Vec2, rpos:Vec2, rvec:Vec2 ) : Bool
	{
		Intersec2Macros.lineLine(dst.x, dst.y, lpos.x, lpos.y, lvec.x, lvec.y, rpos.x, rpos.y, rvec.x, rvec.y);
		return SpaceTest2Macros.isPointInRaySpace(dst.x, dst.y, rpos.x, rpos.y, rvec.x, rvec.y);
	}
	
	public static function lineSegm( dst:Vec2, lpos:Vec2, lvec:Vec2, spos:Vec2, svec:Vec2 ) : Bool
	{
		Intersec2Macros.lineLine(dst.x, dst.y, lpos.x, lpos.y, lvec.x, lvec.y, spos.x, spos.y, svec.x, svec.y);
		return SpaceTest2Macros.isPointInSegmentSpace(dst.x, dst.y, spos.x, spos.y, svec.x, svec.y);
	}
	
	public static function rayRay( dst:Vec2, apos:Vec2, avec:Vec2, bpos:Vec2, bvec:Vec2 ) : Bool
	{
		Intersec2Macros.lineLine(dst.x, dst.y, apos.x, apos.y, avec.x, avec.y, bpos.x, bpos.y, bvec.x, bvec.y);
		return (
			SpaceTest2Macros.isPointInRaySpace(dst.x, dst.y, apos.x, apos.y, avec.x, avec.y)
			&& SpaceTest2Macros.isPointInRaySpace(dst.x, dst.y, bpos.x, bpos.y, bvec.x, bvec.y)
		);
	}
	
	public static function raySegm( dst:Vec2, rpos:Vec2, rvec:Vec2, spos:Vec2, svec:Vec2 ) : Bool
	{
		Intersec2Macros.lineLine(dst.x, dst.y, rpos.x, rpos.y, rvec.x, rvec.y, spos.x, spos.y, svec.x, svec.y);
		return (
			SpaceTest2Macros.isPointInRaySpace(dst.x, dst.y, rpos.x, rpos.y, rvec.x, rvec.y)
			&& SpaceTest2Macros.isPointInSegmentSpace(dst.x, dst.y, spos.x, spos.y, svec.x, svec.y)
		);
	}
	
	public static function segmSegm( dst:Vec2, apos:Vec2, avec:Vec2, bpos:Vec2, bvec:Vec2 ) : Bool
	{
		Intersec2Macros.lineLine(dst.x, dst.y, apos.x, apos.y, avec.x, avec.y, bpos.x, bpos.y, bvec.x, bvec.y);
		return (
			SpaceTest2Macros.isPointInSegmentSpace(dst.x, dst.y, apos.x, apos.y, avec.x, avec.y)
			&& SpaceTest2Macros.isPointInSegmentSpace(dst.x, dst.y, bpos.x, bpos.y, bvec.x, bvec.y)
		);
	}
	
	public static function circleLine( dstA:Vec2, dstB:Vec2, lpos:Vec2, lvec:Vec2, cpos:Vec2, cRadius:Float ) : Int
	{
		var dstCount:Int = 0;
		Intersec2Macros.circleLine(dstA.x, dstA.y, dstB.x, dstB.y, dstCount, lpos.x, lpos.y, lvec.x, lvec.y, cpos.x, cpos.y, cRadius);
		return dstCount;
	}
}