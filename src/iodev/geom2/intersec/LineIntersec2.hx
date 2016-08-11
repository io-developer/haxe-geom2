package iodev.geom2.intersec;

import iodev.geom2.Vec2;
import iodev.geom2.macros.Intersec2Macros;
import iodev.geom2.macros.SpaceTest2Macros;
import iodev.geom2.macros.Vec2Macros;

@:expose
class LineIntersec2
{
	public static function lineLine( apos:Vec2, avec:Vec2, bpos:Vec2, bvec:Vec2 ) : Vec2
	{
		var dstx:Float, dsty:Float;
		Intersec2Macros.lineLine(dstx, dsty, apos.x, apos.y, avec.x, avec.y, bpos.x, bpos.y, bvec.x, bvec.y);
		return new Vec2(dstx, dsty);
	}
	
	public static function lineLineTo( dst:Vec2, apos:Vec2, avec:Vec2, bpos:Vec2, bvec:Vec2 ) : Void
	{
		Intersec2Macros.lineLine(dst.x, dst.y, apos.x, apos.y, avec.x, avec.y, bpos.x, bpos.y, bvec.x, bvec.y);
	}
	
	public static function lineRay( lpos:Vec2, lvec:Vec2, rpos:Vec2, rvec:Vec2 ) : Vec2
	{
		var dstx:Float, dsty:Float;
		Intersec2Macros.lineLine(dstx, dsty, lpos.x, lpos.y, lvec.x, lvec.y, rpos.x, rpos.y, rvec.x, rvec.y);
		if (SpaceTest2Macros.isPointInRaySpace(dstx, dsty, rpos.x, rpos.y, rvec.x, rvec.y)) {
			return new Vec2(dstx, dsty);
		}
		return null;
	}
	
	public static function lineRayTo( dst:Vec2, lpos:Vec2, lvec:Vec2, rpos:Vec2, rvec:Vec2 ) : Bool
	{
		Intersec2Macros.lineLine(dst.x, dst.y, lpos.x, lpos.y, lvec.x, lvec.y, rpos.x, rpos.y, rvec.x, rvec.y);
		return SpaceTest2Macros.isPointInRaySpace(dst.x, dst.y, rpos.x, rpos.y, rvec.x, rvec.y);
	}
	
	public static function lineSegm( lpos:Vec2, lvec:Vec2, spos:Vec2, svec:Vec2 ) : Vec2
	{
		var dstx:Float, dsty:Float;
		Intersec2Macros.lineLine(dstx, dsty, lpos.x, lpos.y, lvec.x, lvec.y, spos.x, spos.y, svec.x, svec.y);
		if (SpaceTest2Macros.isPointInSegmentSpace(dstx, dsty, spos.x, spos.y, svec.x, svec.y)) {
			return new Vec2(dstx, dsty);
		}
		return null;
	}
	
	public static function lineSegmTo( dst:Vec2, lpos:Vec2, lvec:Vec2, spos:Vec2, svec:Vec2 ) : Bool
	{
		Intersec2Macros.lineLine(dst.x, dst.y, lpos.x, lpos.y, lvec.x, lvec.y, spos.x, spos.y, svec.x, svec.y);
		return SpaceTest2Macros.isPointInSegmentSpace(dst.x, dst.y, spos.x, spos.y, svec.x, svec.y);
	}
	
	public static function rayRay( apos:Vec2, avec:Vec2, bpos:Vec2, bvec:Vec2 ) : Vec2
	{
		var dstx:Float, dsty:Float;
		Intersec2Macros.lineLine(dstx, dsty, apos.x, apos.y, avec.x, avec.y, bpos.x, bpos.y, bvec.x, bvec.y);
		if (SpaceTest2Macros.isPointInRaySpace(dstx, dsty, apos.x, apos.y, avec.x, avec.y)
			&& SpaceTest2Macros.isPointInRaySpace(dstx, dsty, bpos.x, bpos.y, bvec.x, bvec.y)) {
			return new Vec2(dstx, dsty);
		}
		return null;
	}
	
	public static function rayRayTo( dst:Vec2, apos:Vec2, avec:Vec2, bpos:Vec2, bvec:Vec2 ) : Bool
	{
		Intersec2Macros.lineLine(dst.x, dst.y, apos.x, apos.y, avec.x, avec.y, bpos.x, bpos.y, bvec.x, bvec.y);
		return (
			SpaceTest2Macros.isPointInRaySpace(dst.x, dst.y, apos.x, apos.y, avec.x, avec.y)
			&& SpaceTest2Macros.isPointInRaySpace(dst.x, dst.y, bpos.x, bpos.y, bvec.x, bvec.y)
		);
	}
	
	public static function raySegm( rpos:Vec2, rvec:Vec2, spos:Vec2, svec:Vec2 ) : Vec2
	{
		var dstx:Float, dsty:Float;
		Intersec2Macros.lineLine(dstx, dsty, rpos.x, rpos.y, rvec.x, rvec.y, spos.x, spos.y, svec.x, svec.y);
		if (SpaceTest2Macros.isPointInRaySpace(dstx, dsty, rpos.x, rpos.y, rvec.x, rvec.y)
			&& SpaceTest2Macros.isPointInSegmentSpace(dstx, dsty, spos.x, spos.y, svec.x, svec.y)) {
			return new Vec2(dstx, dsty);
		}
		return null;
	}
	
	public static function raySegmTo( dst:Vec2, rpos:Vec2, rvec:Vec2, spos:Vec2, svec:Vec2 ) : Bool
	{
		Intersec2Macros.lineLine(dst.x, dst.y, rpos.x, rpos.y, rvec.x, rvec.y, spos.x, spos.y, svec.x, svec.y);
		return (
			SpaceTest2Macros.isPointInRaySpace(dst.x, dst.y, rpos.x, rpos.y, rvec.x, rvec.y)
			&& SpaceTest2Macros.isPointInSegmentSpace(dst.x, dst.y, spos.x, spos.y, svec.x, svec.y)
		);
	}
	
	public static function segmSegm( apos:Vec2, avec:Vec2, bpos:Vec2, bvec:Vec2 ) : Vec2
	{
		var dstx:Float, dsty:Float;
		Intersec2Macros.lineLine(dstx, dsty, apos.x, apos.y, avec.x, avec.y, bpos.x, bpos.y, bvec.x, bvec.y);
		if (SpaceTest2Macros.isPointInSegmentSpace(dstx, dsty, apos.x, apos.y, avec.x, avec.y)
			&& SpaceTest2Macros.isPointInSegmentSpace(dstx, dsty, bpos.x, bpos.y, bvec.x, bvec.y)) {
			return new Vec2(dstx, dsty);
		}
		return null;
	}
	
	public static function segmSegmTo( dst:Vec2, apos:Vec2, avec:Vec2, bpos:Vec2, bvec:Vec2 ) : Bool
	{
		Intersec2Macros.lineLine(dst.x, dst.y, apos.x, apos.y, avec.x, avec.y, bpos.x, bpos.y, bvec.x, bvec.y);
		return (
			SpaceTest2Macros.isPointInSegmentSpace(dst.x, dst.y, apos.x, apos.y, avec.x, avec.y)
			&& SpaceTest2Macros.isPointInSegmentSpace(dst.x, dst.y, bpos.x, bpos.y, bvec.x, bvec.y)
		);
	}
}