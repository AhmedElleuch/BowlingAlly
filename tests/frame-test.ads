with AUnit.Test_Fixtures;

package Frame.Test is

   type Test is new AUnit.Test_Fixtures.Test_Fixture with null record;

   --  procedure Tear_Down (T : in out Test);

   --  procedure Test_Push (T : in out Test);
   --  Test for Stack.Push

   procedure Test_Set_roll (T : in out Test);
   --  Test for Stack.Pop

end Frame.Test;