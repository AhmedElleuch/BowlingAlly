with AUnit.Assertions; use AUnit.Assertions;

package body Player.Test is

   ----------------------
   -- Test_Foo --
   ----------------------

   procedure Test_Foo (T : in out Test) is
      pragma Unreferenced (T);
      I1, I2 : Integer;
   begin
      I1 := 5;
      I2 := 7;
      Assert (Foo (I1, I2) = 12, "Just simple Test");
   end Test_Foo;

end Player.Test;