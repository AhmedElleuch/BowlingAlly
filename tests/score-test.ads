with AUnit.Test_Fixtures;

package Score.Test is

   type Test is new AUnit.Test_Fixtures.Test_Fixture with null record;

   --  procedure Tear_Down (T : in out Test);

   --  Test for Stack.Pop
   procedure Test_Nothrows (T : in out Test);
   procedure Test_Singlethrow (T : in out Test);
   procedure Test_Singlethrowstrike (T : in out Test);
   procedure Test_Doublethrow (T : in out Test);
   procedure Test_Doublethrowspare (T : in out Test);
   procedure Test_Throwafterstrike (T : in out Test);
   procedure Test_Strikeafterstrike (T : in out Test);
   procedure Test_Normalthree (T : in out Test);
   procedure Test_Spareplusthrow (T : in out Test);
   procedure Test_Threestrikes (T : in out Test);
   procedure Test_Strikeplustwonormal (T : in out Test);

end Score.Test;