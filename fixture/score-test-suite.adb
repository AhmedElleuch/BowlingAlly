with AUnit.Test_Caller;

package body Score.Test.Suite is

   package Caller is new AUnit.Test_Caller (Score.Test.Test);

   function Suite return Access_Test_Suite is
      Ret : constant Access_Test_Suite := new Test_Suite;
   begin

      Ret.Add_Test
        (Caller.Create ("Test Score Test_Nothrows",
         Test_Nothrows'Access));

      Ret.Add_Test
        (Caller.Create ("Test Score Test_Singlethrow",
        Test_Singlethrow'Access));

      Ret.Add_Test
        (Caller.Create ("Test Score Test_Singlethrowstrike",
         Test_Singlethrowstrike'Access));

      Ret.Add_Test
        (Caller.Create ("Test Score Test_Doublethrow",
         Test_Doublethrow'Access));

      Ret.Add_Test
        (Caller.Create ("Test Score Test_Doublethrowspare",
         Test_Doublethrowspare'Access));

      Ret.Add_Test
        (Caller.Create ("Test Score Test_Throwafterstrike",
         Test_Throwafterstrike'Access));

      Ret.Add_Test
        (Caller.Create ("Test Score Test_Strikeafterstrike",
         Test_Strikeafterstrike'Access));

      Ret.Add_Test
        (Caller.Create ("Test Score Test_Normalthree",
         Test_Normalthree'Access));

      Ret.Add_Test
        (Caller.Create ("Test Score Test_Spareplusthrow",
         Test_Spareplusthrow'Access));

      Ret.Add_Test
        (Caller.Create ("Test Score Test_Threestrikes",
         Test_Threestrikes'Access));

      Ret.Add_Test
        (Caller.Create ("Test Score Test_Strikeplustwonormal",
         Test_Strikeplustwonormal'Access));

      return Ret;
   end Suite;

end Score.Test.Suite;