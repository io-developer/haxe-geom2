package;

import iodev.geom2.macros.Primitive2Macros;
import iodev.geom2.macros.Vec2Macros;
import iodev.geom2.Vec2;

class EmptyTest
{
	@Test
	public function testTangentToCircle() : Void
	{
		var dst1:Vec2 = new Vec2();
		var dst2:Vec2 = new Vec2();
		var dstCount:Int = 0;
		
		var p:Vec2 = new Vec2(-3, 2);
		var cpos:Vec2 = new Vec2(3, 2);
		var crad:Float = 2.0;
		
		Primitive2Macros.tangentPointToCircle(dst1.x, dst1.y, dst2.x, dst2.y, dstCount, p.x, p.y, cpos.x, cpos.y, crad);
		
		trace("dst1: " + dst1.toString());
		trace("dst2: " + dst2.toString());
		trace("dstCount: " + dstCount);
	}
}