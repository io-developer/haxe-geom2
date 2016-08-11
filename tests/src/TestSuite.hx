import massive.munit.TestSuite;

import iodev.geom2.macros.LineIntersec2MacrosTest;
import iodev.geom2.macros.Vec2MacrosTest;
import iodev.geom2.macros.Vec2MacrosTest_argTest;
import iodev.geom2.Vec2BuilderTest;
import iodev.geom2.Vec2Test;

/**
 * Auto generated Test Suite for MassiveUnit.
 * Refer to munit command line tool for more information (haxelib run munit)
 */

class TestSuite extends massive.munit.TestSuite
{		

	public function new()
	{
		super();

		add(iodev.geom2.macros.LineIntersec2MacrosTest);
		add(iodev.geom2.macros.Vec2MacrosTest);
		add(iodev.geom2.macros.Vec2MacrosTest_argTest);
		add(iodev.geom2.Vec2BuilderTest);
		add(iodev.geom2.Vec2Test);
	}
}
