package iodev.geom2.intersec;

import iodev.geom2.Vec;
import iodev.geom2.macros.LineIntersecMacros;
import iodev.geom2.macros.SpaceTestMacros;
import iodev.geom2.macros.VecMacros;

@:expose
class LineIntersec
{
	public static function lineLine( apos:Vec, avec:Vec, bpos:Vec, bvec:Vec ) : Vec
	{
		var dstx:Float, dsty:Float;
		LineIntersecMacros.lineLine(dstx, dsty, apos.x, apos.y, avec.x, avec.y, bpos.x, bpos.y, bvec.x, bvec.y);
		return new Vec(dstx, dsty);
	}
	
	public static function lineLineTo( dst:Vec, apos:Vec, avec:Vec, bpos:Vec, bvec:Vec ) : Void
	{
		LineIntersecMacros.lineLine(dst.x, dst.y, apos.x, apos.y, avec.x, avec.y, bpos.x, bpos.y, bvec.x, bvec.y);
	}
	
	public static function lineRay( lpos:Vec, lvec:Vec, rpos:Vec, rvec:Vec ) : Vec
	{
		var dstres:Bool, dstx:Float, dsty:Float;
		LineIntersecMacros.lineRay(dstres, dstx, dsty, lpos.x, lpos.y, lvec.x, lvec.y, rpos.x, rpos.y, rvec.x, rvec.y);
		if (dstres) {
			return new Vec(dstx, dsty);
		}
		return null;
	}
	
	public static function lineRayTo( dst:Vec, lpos:Vec, lvec:Vec, rpos:Vec, rvec:Vec ) : Bool
	{
		var dstres:Bool;
		LineIntersecMacros.lineRay(dstres, dst.x, dst.y, lpos.x, lpos.y, lvec.x, lvec.y, rpos.x, rpos.y, rvec.x, rvec.y);
		return dstres;
	}
	
	public static function lineSegm( lpos:Vec, lvec:Vec, spos:Vec, svec:Vec ) : Vec
	{
		var dstres:Bool, dstx:Float, dsty:Float;
		LineIntersecMacros.lineSegm(dstres, dstx, dsty, lpos.x, lpos.y, lvec.x, lvec.y, spos.x, spos.y, svec.x, svec.y);
		if (dstres) {
			return new Vec(dstx, dsty);
		}
		return null;
	}
	
	public static function lineSegmTo( dst:Vec, lpos:Vec, lvec:Vec, spos:Vec, svec:Vec ) : Bool
	{
		var dstres:Bool;
		LineIntersecMacros.lineSegm(dstres, dst.x, dst.y, lpos.x, lpos.y, lvec.x, lvec.y, spos.x, spos.y, svec.x, svec.y);
		return dstres;
	}
	
	public static function rayRay( apos:Vec, avec:Vec, bpos:Vec, bvec:Vec ) : Vec
	{
		var dstres:Bool, dstx:Float, dsty:Float;
		LineIntersecMacros.rayRay(dstres, dstx, dsty, apos.x, apos.y, avec.x, avec.y, bpos.x, bpos.y, bvec.x, bvec.y);
		if (dstres) {
			return new Vec(dstx, dsty);
		}
		return null;
	}
	
	public static function rayRayTo( dst:Vec, apos:Vec, avec:Vec, bpos:Vec, bvec:Vec ) : Bool
	{
		var dstres:Bool;
		LineIntersecMacros.rayRay(dstres, dst.x, dst.y, apos.x, apos.y, avec.x, avec.y, bpos.x, bpos.y, bvec.x, bvec.y);
		return dstres;
	}
	
	public static function raySegm( rpos:Vec, rvec:Vec, spos:Vec, svec:Vec ) : Vec
	{
		var dstres:Bool, dstx:Float, dsty:Float;
		LineIntersecMacros.raySegm(dstres, dstx, dsty, rpos.x, rpos.y, rvec.x, rvec.y, spos.x, spos.y, svec.x, svec.y);
		if (dstres) {
			return new Vec(dstx, dsty);
		}
		return null;
	}
	
	public static function raySegmTo( dst:Vec, rpos:Vec, rvec:Vec, spos:Vec, svec:Vec ) : Bool
	{
		var dstres:Bool;
		LineIntersecMacros.raySegm(dstres, dst.x, dst.y, rpos.x, rpos.y, rvec.x, rvec.y, spos.x, spos.y, svec.x, svec.y);
		return dstres;
	}
	
	public static function segmSegm( apos:Vec, avec:Vec, bpos:Vec, bvec:Vec ) : Vec
	{
		var dstres:Bool, dstx:Float, dsty:Float;
		LineIntersecMacros.segmSegm(dstres, dstx, dsty, apos.x, apos.y, avec.x, avec.y, bpos.x, bpos.y, bvec.x, bvec.y);
		if (dstres) {
			return new Vec(dstx, dsty);
		}
		return null;
	}
	
	public static function segmSegmTo( dst:Vec, apos:Vec, avec:Vec, bpos:Vec, bvec:Vec ) : Bool
	{
		var dstres:Bool;
		LineIntersecMacros.segmSegm(dstres, dst.x, dst.y, apos.x, apos.y, avec.x, avec.y, bpos.x, bpos.y, bvec.x, bvec.y);
		return dstres;
	}
}