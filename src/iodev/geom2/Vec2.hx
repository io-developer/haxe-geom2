package iodev.geom2;

import iodev.geom2.macros.Vecop2Macros;

@:expose
class Vec2
{
	//covered
	public function new( x:Float=0.0, y:Float=0.0 ) 
	{
		this.x = x;
		this.y = y;
	}
	
	
	public var x : Float;
	public var y : Float;
	
	
	// covered
	inline public function clone() : Vec2
	{
		return new Vec2(this.x, this.y);
	}
	
	// covered
	inline public function equals( v:Vec2 ) : Bool
	{
		return Vecop2Macros.equals(this.x, this.y, v.x, v.y);
	}
	
	// covered
	inline public function length() : Float
	{
		return Vecop2Macros.length(this.x, this.y);
	}
	
	// covered
	inline public function magnitude() : Float
	{
		return Vecop2Macros.magnitude(this.x, this.y);
	}
	
	// covered
	inline public function normalize( len:Float=1.0 ) : Void
	{
		Vecop2Macros.normalize(this.x, this.y, this.x, this.y, len);
	}
	
	public function toString() : String
	{
		return "[object Vec2(" + x + "; " + y + ")]";
	}
}