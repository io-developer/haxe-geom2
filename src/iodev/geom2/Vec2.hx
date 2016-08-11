package iodev.geom2;

import iodev.geom2.macros.Vec2Macros;

@:expose
class Vec2
{
	public static function fromXY( x:Float, y:Float ) : Vec2
	{
		return new Vec2(x, y);
	}
	
	public static function fromPolar( radians:Float, len:Float=1.0 ) : Vec2
	{
		var x:Float, y:Float;
		Vec2Macros.polar(x, y, radians, len);
		return new Vec2(x, y);
	}
	
	public static function fromAdd( a:Vec2, b:Vec2 ) : Vec2
	{
		var x:Float, y:Float;
		Vec2Macros.add(x, y, a.x, a.y, b.x, b.y);
		return new Vec2(x, y);
	}
	
	public static function fromSub( a:Vec2, b:Vec2 ) : Vec2
	{
		var x:Float, y:Float;
		Vec2Macros.sub(x, y, a.x, a.y, b.x, b.y);
		return new Vec2(x, y);
	}
	
	public static function fromMul( a:Vec2, b:Vec2 ) : Vec2
	{
		var x:Float, y:Float;
		Vec2Macros.mul(x, y, a.x, a.y, b.x, b.y);
		return new Vec2(x, y);
	}
	
	public static function fromDiv( a:Vec2, b:Vec2 ) : Vec2
	{
		var x:Float, y:Float;
		Vec2Macros.div(x, y, a.x, a.y, b.x, b.y);
		return new Vec2(x, y);
	}
	
	public static function normalBisectorFrom( a:Vec2, b:Vec2 ) : Vec2
	{
		var x:Float, y:Float;
		Vec2Macros.normalBisector(x, y, a.x, a.y, b.x, b.y);
		return new Vec2(x, y);
	}
	
	public static function dotProd( a:Vec2, b:Vec2 ) : Float
	{
		return Vec2Macros.dotProd(a.x, a.y, b.x, b.y);
	}
	
	public static function skewProd( a:Vec2, b:Vec2 ) : Float
	{
		return Vec2Macros.skewProd(a.x, a.y, b.x, b.y);
	}
	
	public static function lengthBetween( a:Vec2, b:Vec2 ) : Float
	{
		return Vec2Macros.lengthBetween(a.x, a.y, b.x, b.y);
	}
	
	public static function magnitudeBetween( a:Vec2, b:Vec2 ) : Float
	{
		return Vec2Macros.magnitudeBetween(a.x, a.y, b.x, b.y);
	}
	
	public static function radiansBetween( a:Vec2, b:Vec2 ) : Float
	{
		return Vec2Macros.radiansBetween(a.x, a.y, b.x, b.y);
	}
	
	public static function radiansBetweenNormals( a:Vec2, b:Vec2 ) : Float
	{
		return Vec2Macros.radiansBetweenNormals(a.x, a.y, b.x, b.y);
	}
	
	
	public function new( x:Float=0.0, y:Float=0.0 ) 
	{
		this.x = x;
		this.y = y;
	}
	
	public var x : Float;
	public var y : Float;
	
	inline public function copyFrom( v:Vec2 ) : Void
	{
		this.x = v.x;
		this.y = v.y;
	}
	
	inline public function clone() : Vec2
	{
		return new Vec2(this.x, this.y);
	}
	
	inline public function equals( v:Vec2 ) : Bool
	{
		return Vec2Macros.equals(this.x, this.y, v.x, v.y);
	}
	
	inline public function length() : Float
	{
		return Vec2Macros.length(this.x, this.y);
	}
	
	inline public function magnitude() : Float
	{
		return Vec2Macros.magnitude(this.x, this.y);
	}
	
	inline public function normalize( len:Float=1.0 ) : Void
	{
		Vec2Macros.normalize(this.x, this.y, this.x, this.y, len);
	}
	
	inline public function toRadians() : Float
	{
		return Vec2Macros.radiansOf(this.x, this.y);
	}
	
	public function toString() : String
	{
		return "[object Vec2(" + x + "; " + y + ")]";
	}
}