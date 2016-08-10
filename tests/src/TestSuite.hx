import massive.munit.TestSuite;

import EmptyTest;
import iodev.geom2.macros.Intersec2Macros_resTest;
import iodev.geom2.macros.Vec2Macros_argTest;
import iodev.geom2.macros.Vec2Macros_resTest;
import iodev.geom2.operations.Vecop2_argTest;
import iodev.geom2.operations.Vecop2_resTest;
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

		add(EmptyTest);
		add(iodev.geom2.macros.Intersec2Macros_resTest);
		add(iodev.geom2.macros.Vec2Macros_argTest);
		add(iodev.geom2.macros.Vec2Macros_resTest);
		add(iodev.geom2.operations.Vecop2_argTest);
		add(iodev.geom2.operations.Vecop2_resTest);
		add(iodev.geom2.Vec2Test);
	}
}
