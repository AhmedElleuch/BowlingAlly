with AUnit.Test_Caller;

package body Game.Test.Suite is

   package Caller is new AUnit.Test_Caller (Game.Test.Test);

   function Suite return Access_Test_Suite is
      Ret : constant Access_Test_Suite := new Test_Suite;
   begin
      Ret.Add_Test
        (Caller.Create ("Test Game Foo", Test_Foo'Access));
      return Ret;
   end Suite;

end Game.Test.Suite;