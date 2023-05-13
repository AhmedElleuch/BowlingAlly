with AUnit.Assertions; use AUnit.Assertions;

package body Frame.Test is

   ----------------------
   -- Test_Set_Roll --
   ----------------------

   procedure Test_Set_roll (T : in out Test) is
      pragma Unreferenced (T);
      F1 : Frame := (-1, -1);
      F2 : Frame := (0, -1);
      Roll_to_put : constant Roll_type := 5;
   begin
      F1 := SetRoll (F1, Roll_to_put);
      F2 := SetRoll (F2, Roll_to_put);
      Assert (F1.Roll1 = 5, "Adding Value to first Roll failed");
      Assert (F2.Roll2 = 5, "Adding Value to Second Roll failed");
   end Test_Set_roll;

end Frame.Test;
