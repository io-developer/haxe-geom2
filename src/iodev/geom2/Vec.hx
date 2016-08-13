package iodev.geom2;

import iodev.geom2.macros.VecMacros;

@:expose
class Vec
{
	public static function fromXY( x:Float, y:Float ) : Vec
	{
		return new Vec(x, y);
	}
	
	public static function fromPolar( radians:Float, len:Float=1.0 ) : Vec
	{
		var x:Float, y:Float;
		VecMacros.polar(x, y, radians, len);
		return new Vec(x, y);
	}
	
	public static function fromAdd( a:Vec, b:Vec ) : Vec
	{
		var x:Float, y:Float;
		VecMacros.add(x, y, a.x, a.y, b.x, b.y);
		return new Vec(x, y);
	}
	
	public static function fromSub( a:Vec, b:Vec ) : Vec
	{
		var x:Float, y:Float;
		VecMacros.sub(x, y, a.x, a.y, b.x, b.y);
		return new Vec(x, y);
	}
	
	public static function fromMul( a:Vec, b:Vec ) : Vec
	{
		var x:Float, y:Float;
		VecMacros.mul(x, y, a.x, a.y, b.x, b.y);
		return new Vec(x, y);
	}
	
	public static function fromDiv( a:Vec, b:Vec ) : Vec
	{
		var x:Float, y:Float;
		VecMacros.div(x, y, a.x, a.y, b.x, b.y);
		return new Vec(x, y);
	}
	
	public static function normalBisectorFrom( a:Vec, b:Vec ) : Vec
	{
		var x:Float, y:Float;
		VecMacros.normalBisector(x, y, a.x, a.y, b.x, b.y);
		return new Vec(x, y);
	}
	
	public static function equals( a:Vec, b:Vec ) : Bool
	{
		return VecMacros.equals(a.x, a.y, b.x, b.y);
	}
	
	public static function dotProd( a:Vec, b:Vec ) : Float
	{
		return VecMacros.dotProd(a.x, a.y, b.x, b.y);
	}
	
	public static function skewProd( a:Vec, b:Vec ) : Float
	{
		return VecMacros.skewProd(a.x, a.y, b.x, b.y);
	}
	
	public static function lengthBetween( a:Vec, b:Vec ) : Float
	{
		return VecMacros.lengthBetween(a.x, a.y, b.x, b.y);
	}
	
	public static function magnitudeBetween( a:Vec, b:Vec ) : Float
	{
		return VecMacros.magnitudeBetween(a.x, a.y, b.x, b.y);
	}
	
	public static function radiansBetween( a:Vec, b:Vec ) : Float
	{
		return VecMacros.radiansBetween(a.x, a.y, b.x, b.y);
	}
	
	public static function radiansBetweenNormals( a:Vec, b:Vec ) : Float
	{
		return VecMacros.radiansBetweenNormals(a.x, a.y, b.x, b.y);
	}
	
	
	public function new( x:Float=0.0, y:Float=0.0 ) 
	{
		this.x = x;
		this.y = y;
	}
	
	public var x : Float;
	public var y : Float;
	
	inline public function clone() : Vec
	{
		return new Vec(this.x, this.y);
	}
	
	inline public function length() : Float
	{
		return VecMacros.length(this.x, this.y);
	}
	
	inline public function magnitude() : Float
	{
		return VecMacros.magnitude(this.x, this.y);
	}
	
	inline public function normalize( len:Float=1.0 ) : Void
	{
		VecMacros.normalize(this.x, this.y, this.x, this.y, len);
	}
	
	inline public function toRadians() : Float
	{
		return VecMacros.radiansOf(this.x, this.y);
	}
	
	public function toString() : String
	{
		return "[object Vec2(" + x + "; " + y + ")]";
	}
}