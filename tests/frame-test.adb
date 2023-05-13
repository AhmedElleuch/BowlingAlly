with AUnit.Assertions; use AUnit.Assertions;

package body Frame.Test is

   ----------------------
   -- Test_Set_Roll --
   ----------------------

   procedure Test_Set_roll (T : in out Test) is
      pragma Unreferenced (T);
      F1 : Frame := (-1, -1, EMPTY);
      F2 : Frame := (0, -1, EMPTY);
      Roll_to_put : constant Roll_type := 5;
   begin
      F1 := SetRoll (F1, Roll_to_put);
      F2 := SetRoll (F2, Roll_to_put);
      Assert (F1.Roll1 = 5, "Adding Value to first Roll failed");
      Assert (F2.Roll2 = 5, "Adding Value to Second Roll failed");
   end Test_Set_roll;

   procedure Test_Set_Type (T : in out Test) is
      pragma Unreferenced (T);
      F_strike : Frame := (10, -1, EMPTY);
      F_spare : Frame := (5, 5, EMPTY);
      F_normal : Frame := (3, 3, EMPTY);
      F_empty : Frame := (3, -1, EMPTY);
   begin
      SetFrameType (F_strike);
      SetFrameType (F_spare);
      SetFrameType (F_normal);
      SetFrameType (F_empty);

      Assert (F_strike.F_Type = STRIKE, "test Strike test failed");
      Assert (F_spare.F_Type = SPARE, "test Spare test failed");
      Assert (F_normal.F_Type = NORMAL, "test Score test failed");
      Assert (F_empty.F_Type = EMPTY, "test Empty test failed");

   end Test_Set_Type;

end Frame.Test;
