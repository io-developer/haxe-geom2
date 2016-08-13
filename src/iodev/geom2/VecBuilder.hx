package iodev.geom2;

import iodev.geom2.macros.VecMacros;

@:expose
class VecBuilder
{
	public static function create() : VecBuilder
	{
		return new VecBuilder();
	}
	
	public static function fromXY( x:Float=0.0, y:Float=0.0 ) : VecBuilder
	{
		return new VecBuilder(x, y);
	}
	
	public static function fromVec( v:Vec ) : VecBuilder
	{
		return new VecBuilder(v.x, v.y);
	}
	
	public static function fromPolar( radians:Float, len:Float=1.0 ) : VecBuilder
	{
		var x:Float, y:Float;
		VecMacros.polar(x, y, radians, len);
		return new VecBuilder(x, y);
	}
	
	
	public function new( x:Float=0.0, y:Float=0.0 ) 
	{
		_x = x;
		_y = y;
	}
	
	private var _x : Float = 0.0;
	private var _y : Float = 0.0;
	
	public function setX( x:Float ) : VecBuilder
	{
		_x = x;
		return this;
	}
	
	public function setY( y:Float ) : VecBuilder
	{
		_y = y;
		return this;
	}
	
	public function setXY( x:Float, y:Float ) : VecBuilder
	{
		_x = x;
		_y = y;
		return this;
	}
	
	public function setPolar( radians:Float, len:Float=1.0 ) : VecBuilder
	{
		VecMacros.polar(_x, _y, radians, len);
		return this;
	}
	
	public function negate() : VecBuilder
	{
		VecMacros.negate(_x, _y, _x, _y);
		return this;
	}
	
	public function swapXY() : VecBuilder
	{
		VecMacros.swapXY(_x, _y, _x, _y);
		return this;
	}
	
	public function normalize( len:Float=1.0 ) : VecBuilder
	{
		VecMacros.normalize(_x, _y, _x, _y, len);
		return this;
	}
	
	public function add( v:Vec ) : VecBuilder
	{
		VecMacros.add(_x, _y, _x, _y, v.x, v.y);
		return this;
	}
	
	public function addXY( x:Float, y:Float ) : VecBuilder
	{
		VecMacros.add(_x, _y, _x, _y, x, y);
		return this;
	}
	
	public function subtract( v:Vec ) : VecBuilder
	{
		VecMacros.sub(_x, _y, _x, _y, v.x, v.y);
		return this;
	}
	
	public function subtractXY( x:Float, y:Float ) : VecBuilder
	{
		VecMacros.sub(_x, _y, _x, _y, x, y);
		return this;
	}
	
	public function multiply( v:Vec ) : VecBuilder
	{
		VecMacros.mul(_x, _y, _x, _y, v.x, v.y);
		return this;
	}
	
	public function multiplyXY( x:Float, y:Float ) : VecBuilder
	{
		VecMacros.mul(_x, _y, _x, _y, x, y);
		return this;
	}
	
	public function divide( v:Vec ) : VecBuilder
	{
		VecMacros.div(_x, _y, _x, _y, v.x, v.y);
		return this;
	}
	
	public function divideXY( x:Float, y:Float ) : VecBuilder
	{
		VecMacros.div(_x, _y, _x, _y, x, y);
		return this;
	}
	
	public function rotate( radians:Float ) : VecBuilder
	{
		VecMacros.rotate(_x, _y, _x, _y, radians);
		return this;
	}
	
	public function rotateQuart( times:Int ) : VecBuilder
	{
		VecMacros.rotateQuart(_x, _y, _x, _y, times);
		return this;
	}
	
	public function mirrorBy( v:Vec ) : VecBuilder
	{
		VecMacros.mirrorBy(_x, _y, _x, _y, v.x, v.y);
		return this;
	}
	
	public function mirrorByXY( x:Float, y:Float ) : VecBuilder
	{
		VecMacros.mirrorBy(_x, _y, _x, _y, x, y);
		return this;
	}
	
	public function mirrorByNormal( v:Vec ) : VecBuilder
	{
		VecMacros.mirrorByNormal(_x, _y, _x, _y, v.x, v.y);
		return this;
	}
	
	public function mirrorByNormalXY( x:Float, y:Float ) : VecBuilder
	{
		VecMacros.mirrorByNormal(_x, _y, _x, _y, x, y);
		return this;
	}
	
	public function toVec() : Vec
	{
		return new Vec(_x, _y);
	}
	
	public function toVecSpecified( dst:Vec ) : Vec
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
		return VecMacros.length(_x, _y);
	}
	
	public function toMagnitude() : Float
	{
		return VecMacros.magnitude(_x, _y);
	}
	
	public function toRadians() : Float
	{
		return VecMacros.radiansOf(_x, _y);
	}
}