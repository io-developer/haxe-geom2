package iodev.geom2.operations;

import iodev.geom2.macros.Vecop2Macros;
import iodev.geom2.Vec2;

@:expose
class Vecop2
{
	// covered: result, args
	public static function add( a:Vec2, b:Vec2 ) : Vec2
	{
		var dst:Vec2 = new Vec2();
		Vecop2Macros.add(dst.x, dst.y, a.x, a.y, b.x, b.y);
		return dst;
	}
	
	// covered: result, args
	public static function subtract( a:Vec2, b:Vec2 ) : Vec2
	{
		var dst:Vec2 = new Vec2();
		Vecop2Macros.sub(dst.x, dst.y, a.x, a.y, b.x, b.y);
		return dst;
	}
	
	// covered: result, args
	public static function multiply( a:Vec2, b:Vec2 ) : Vec2
	{
		var dst:Vec2 = new Vec2();
		Vecop2Macros.mul(dst.x, dst.y, a.x, a.y, b.x, b.y);
		return dst;
	}
	
	// covered: result, args
	public static function divide( a:Vec2, b:Vec2 ) : Vec2
	{
		var dst:Vec2 = new Vec2();
		Vecop2Macros.div(dst.x, dst.y, a.x, a.y, b.x, b.y);
		return dst;
	}
	
	// covered: result, args
	public static function dotProd( a:Vec2, b:Vec2 ) : Float
	{
		return Vecop2Macros.dotProd(a.x, a.y, b.x, b.y);
	}
	
	// covered: result, args
	public static function skewProd( a:Vec2, b:Vec2 ) : Float
	{
		return Vecop2Macros.skewProd(a.x, a.y, b.x, b.y);
	}
	
	// covered: result, args
	public static function lengthBetween( a:Vec2, b:Vec2 ) : Float
	{
		return Vecop2Macros.lengthBetween(a.x, a.y, b.x, b.y);
	}
	
	// covered: result, args
	public static function magnitudeBetween( a:Vec2, b:Vec2 ) : Float
	{
		return Vecop2Macros.magnitudeBetween(a.x, a.y, b.x, b.y);
	}
	
	// covered: result, args
	public static function polar( radians:Float, len:Float=1.0) : Vec2
	{
		var dst:Vec2 = new Vec2();
		Vecop2Macros.polar(dst.x, dst.y, radians, len);
		return dst;
	}
	
	// covered: result, args
	public static function radiansOf( v:Vec2 ) : Float
	{
		return Vecop2Macros.radiansOf(v.x, v.y);
	}
	
	// covered: result, args
	public static function radiansBetween( a:Vec2, b:Vec2 ) : Float
	{
		return Vecop2Macros.radiansBetween(a.x, a.y, b.x, b.y);
	}
	
	// covered: result, args
	public static function radiansBetweenNormals( a:Vec2, b:Vec2 ) : Float
	{
		return Vecop2Macros.radiansBetweenNormals(a.x, a.y, b.x, b.y);
	}
	
	// covered: result, args
	public static function normalBisector( a:Vec2, b:Vec2 ) : Vec2
	{
		var dst:Vec2 = new Vec2();
		Vecop2Macros.normalBisector(dst.x, dst.y, a.x, a.y, b.x, b.y);
		return dst;
	}
	
	// covered: result, args
	public static function rotate( v:Vec2, radians:Float ) : Vec2
	{
		var dst:Vec2 = new Vec2();
		Vecop2Macros.rotate(dst.x, dst.y, v.x, v.y, radians);
		return dst;
	}
	
	// covered: result, args
	public static function rotateQuart( v:Vec2, times:Int=1 ) : Vec2
	{
		var dst:Vec2 = new Vec2();
		Vecop2Macros.rotateQuart(dst.x, dst.y, v.x, v.y, times);
		return dst;
	}
	
	// covered: result, args
	public static function mirrorBy( v:Vec2, dir:Vec2 ) : Vec2
	{
		var dst:Vec2 = new Vec2();
		Vecop2Macros.mirrorBy(dst.x, dst.y, v.x, v.y, dir.x, dir.y);
		return dst;
	}
	
	// covered: result, args
	public static function mirrorByNormal( v:Vec2, ndir:Vec2 ) : Vec2
	{
		var dst:Vec2 = new Vec2();
		Vecop2Macros.mirrorByNormal(dst.x, dst.y, v.x, v.y, ndir.x, ndir.y);
		return dst;
	}
}