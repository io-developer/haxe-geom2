import massive.munit.TestSuite;

import iodev.geom2.macros.LineIntersecMacrosTest;
import iodev.geom2.macros.VecMacrosTest;
import iodev.geom2.macros.VecMacrosTest_argTest;
import iodev.geom2.VecBuilderTest;
import iodev.geom2.VecTest;

/**
 * Auto generated Test Suite for MassiveUnit.
 * Refer to munit command line tool for more information (haxelib run munit)
 */

class TestSuite extends massive.munit.TestSuite
{		

	public function new()
	{
		super();

		add(iodev.geom2.macros.LineIntersecMacrosTest);
		add(iodev.geom2.macros.VecMacrosTest);
		add(iodev.geom2.macros.VecMacrosTest_argTest);
		add(iodev.geom2.VecBuilderTest);
		add(iodev.geom2.VecTest);
	}
}
