package iodev.geom2;

import iodev.geom2.macros.Vec2Macros;

@:expose
class Vec2Builder
{
	public static function create() : Vec2Builder
	{
		return new Vec2Builder();
	}
	
	public static function fromXY( x:Float=0.0, y:Float=0.0 ) : Vec2Builder
	{
		return new Vec2Builder(x, y);
	}
	
	public static function fromVec( v:Vec2 ) : Vec2Builder
	{
		return new Vec2Builder(v.x, v.y);
	}
	
	public static function fromPolar( radians:Float, len:Float=1.0 ) : Vec2Builder
	{
		var x:Float, y:Float;
		Vec2Macros.polar(x, y, radians, len);
		return new Vec2Builder(x, y);
	}
	
	
	public function new( x:Float=0.0, y:Float=0.0 ) 
	{
		_x = x;
		_y = y;
	}
	
	private var _x : Float = 0.0;
	private var _y : Float = 0.0;
	
	public function setX( x:Float ) : Vec2Builder
	{
		_x = x;
		return this;
	}
	
	public function setY( y:Float ) : Vec2Builder
	{
		_y = y;
		return this;
	}
	
	public function setXY( x:Float, y:Float ) : Vec2Builder
	{
		_x = x;
		_y = y;
		return this;
	}
	
	public function setPolar( radians:Float, len:Float=1.0 ) : Vec2Builder
	{
		Vec2Macros.polar(_x, _y, radians, len);
		return this;
	}
	
	public function negate() : Vec2Builder
	{
		Vec2Macros.negate(_x, _y, _x, _y);
		return this;
	}
	
	public function swapXY() : Vec2Builder
	{
		Vec2Macros.swapXY(_x, _y, _x, _y);
		return this;
	}
	
	public function normalize( len:Float=1.0 ) : Vec2Builder
	{
		Vec2Macros.normalize(_x, _y, _x, _y, len);
		return this;
	}
	
	public function add( v:Vec2 ) : Vec2Builder
	{
		Vec2Macros.add(_x, _y, _x, _y, v.x, v.y);
		return this;
	}
	
	public function addXY( x:Float, y:Float ) : Vec2Builder
	{
		Vec2Macros.add(_x, _y, _x, _y, x, y);
		return this;
	}
	
	public function subtract( v:Vec2 ) : Vec2Builder
	{
		Vec2Macros.sub(_x, _y, _x, _y, v.x, v.y);
		return this;
	}
	
	public function subtractXY( x:Float, y:Float ) : Vec2Builder
	{
		Vec2Macros.sub(_x, _y, _x, _y, x, y);
		return this;
	}
	
	public function multiply( v:Vec2 ) : Vec2Builder
	{
		Vec2Macros.mul(_x, _y, _x, _y, v.x, v.y);
		return this;
	}
	
	public function multiplyXY( x:Float, y:Float ) : Vec2Builder
	{
		Vec2Macros.mul(_x, _y, _x, _y, x, y);
		return this;
	}
	
	public function divide( v:Vec2 ) : Vec2Builder
	{
		Vec2Macros.div(_x, _y, _x, _y, v.x, v.y);
		return this;
	}
	
	public function divideXY( x:Float, y:Float ) : Vec2Builder
	{
		Vec2Macros.div(_x, _y, _x, _y, x, y);
		return this;
	}
	
	public function rotate( radians:Float ) : Vec2Builder
	{
		Vec2Macros.rotate(_x, _y, _x, _y, radians);
		return this;
	}
	
	public function rotateQuart( times:Int ) : Vec2Builder
	{
		Vec2Macros.rotateQuart(_x, _y, _x, _y, times);
		return this;
	}
	
	public function mirrorBy( v:Vec2 ) : Vec2Builder
	{
		Vec2Macros.mirrorBy(_x, _y, _x, _y, v.x, v.y);
		return this;
	}
	
	public function mirrorByXY( x:Float, y:Float ) : Vec2Builder
	{
		Vec2Macros.mirrorBy(_x, _y, _x, _y, x, y);
		return this;
	}
	
	public function mirrorByNormal( v:Vec2 ) : Vec2Builder
	{
		Vec2Macros.mirrorByNormal(_x, _y, _x, _y, v.x, v.y);
		return this;
	}
	
	public function mirrorByNormalXY( x:Float, y:Float ) : Vec2Builder
	{
		Vec2Macros.mirrorByNormal(_x, _y, _x, _y, x, y);
		return this;
	}
	
	public function toVec() : Vec2
	{
		return new Vec2(_x, _y);
	}
	
	public function toVecSpecified( dst:Vec2 ) : Vec2
	{
		dst.x = _x;
		dst.y = _y;
		return dst;
	}
	
	public function toX() : Float
	{
		return _x;
	}
	
	public function toY() : Float
	{
		return _y;
	}
	
	public function toLength() : Float
	{
		return Vec2Macros.length(_x, _y);
	}
	
	public function toMagnitude() : Float
	{
		return Vec2Macros.magnitude(_x, _y);
	}
	
	public function toRadians() : Float
	{
		return Vec2Macros.radiansOf(_x, _y);
	}
}