with AUnit.Test_Caller;

package body Frame.Test.Suite is

   package Caller is new AUnit.Test_Caller (Test);

   function Suite return Access_Test_Suite is
      Ret : constant Access_Test_Suite := new Test_Suite;
   begin
      Ret.Add_Test
        (Caller.Create ("Test Foo Frame", Test_Foo'Access));
      return Ret;
   end Suite;

end Frame.Test.Suite;