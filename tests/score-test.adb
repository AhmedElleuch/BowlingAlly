with AUnit.Assertions; use AUnit.Assertions;

package body Score.Test is

   procedure Test_Nothrows (T :  in out Test) is
   pragma Unreferenced (T);
   begin
      Assert (BA = 0, "No throws RESULT = "
        & Integer'Image (BA));
   end Test_Nothrows;

   procedure Test_Singlethrow (T :  in out Test) is
      pragma Unreferenced (T);
   begin
      Assert (BA (3 & 0) = 3, "Single throw RESULT = "
        & Integer'Image (BA (3 & 0)) & Boolean'Image (BA (3 & 0)
        = BA (3 & 0)));
   end Test_Singlethrow;

   procedure Test_Singlethrowstrike (T :  in out Test) is
      pragma Unreferenced (T);
   begin
      Assert (BA (10 & 0) = 10, "Single throw, strike RESULT = "
        & Integer'Image (BA (10 & 0)));
   end Test_Singlethrowstrike;

   procedure Test_Doublethrow (T :  in out Test) is
      pragma Unreferenced (T);
   begin
      Assert (BA (3 & 5) = 8, "Double throw RESULT = "
        & Integer'Image (BA (3 & 5)));
   end Test_Doublethrow;

   procedure Test_Doublethrowspare (T :  in out Test) is
      pragma Unreferenced (T);
   begin
      Assert (BA (3 & 7) = 10, "Double throw spare RESULT = "
        & Integer'Image (BA (3 & 7)));
   end Test_Doublethrowspare;

   procedure Test_Throwafterstrike (T :  in out Test) is
      pragma Unreferenced (T);
   begin
      Assert (BA (10 & 7) = 24, "Throw after strike RESULT = "
        & Integer'Image (BA (10 & 7)));
   end Test_Throwafterstrike;

   procedure Test_Strikeafterstrike (T :  in out Test) is
      pragma Unreferenced (T);
   begin
      Assert (BA (10 & 10) = 30, "Strike after strike RESULT = "
        & Integer'Image (BA (10 & 10)));
   end Test_Strikeafterstrike;

   procedure Test_Normalthree (T : in out Test) is
      pragma Unreferenced (T);
   begin
      Assert (BA (3 & 5 & 4) = 12, "Normal 3 RESULT = "
        & Integer'Image (BA (3 & 5 & 4)));
   end Test_Normalthree;

   procedure Test_Spareplusthrow (T :  in out Test) is
      pragma Unreferenced (T);
   begin
      Assert (BA (5 & 5 & 4) = 18, "Spare plus throw RESULT = "
        & Integer'Image (BA (5 & 5 & 4)));
   end Test_Spareplusthrow;

   procedure Test_Threestrikes (T :  in out Test) is
      pragma Unreferenced (T);
   begin
      Assert (BA (10 & 10 & 10) = 60, "Three strikes RESULT = "
        & Integer'Image (BA (10 & 10 & 10)));
   end Test_Threestrikes;

   procedure Test_Strikeplustwonormal (T :  in out Test) is
      pragma Unreferenced (T);
   begin
      Assert (BA (10 & 4 & 1) = 20, "Strike plus 2x normal RESULT = "
        & Integer'Image (BA (10 & 4 & 1)));
   end Test_Strikeplustwonormal;

   procedure Test_Spareplustwonormal (T :  in out Test) is
      pragma Unreferenced (T);
   begin
      Assert (BA (5 & 5 & 4 & 1) = 19, "Spare plus 2x normal RESULT = "
        & Integer'Image (BA (5 & 5 & 4 & 1)));
   end Test_Spareplustwonormal;

   procedure Test_NineStrikes (T :  in out Test) is
      pragma Unreferenced (T);
   begin
      Assert (BA (10 & 10 & 10 & 10 & 10 & 10 & 10 & 10 & 10) = 240,
              "Strike X 9" & Integer'Image (BA (10 & 10 & 10 & 10 & 10 &
                                                10 & 10 & 10 & 10)));
   end Test_NineStrikes;

   procedure Test_AllStrikes (T :  in out Test) is
      pragma Unreferenced (T);
   begin
      Assert (BA (10 & 10 & 10 & 10 & 10 & 10 & 10 & 10 & 10 & 10
              & 10 & 10) = 300, "Strike X 10 plus two bonus roll" &
              Integer'Image (BA (10 & 10 & 10 & 10 & 10 &
                                 10 & 10 & 10 & 10 & 10 & 10 & 10)));
   end Test_AllStrikes;

   procedure Test_AllSpares (T :  in out Test) is
      pragma Unreferenced (T);
   begin
      Assert (BA (5 & 5 & 5 & 5 & 5 & 5 & 5 & 5 & 5 & 5 &
                  5 & 5 & 5 & 5 & 5 & 5 & 5 & 5 & 5 & 5 & 5) = 150,
                  "Spare X 10 plus Bonus" &
                  Integer'Image (BA (5 & 5 & 5 & 5 & 5 & 5 & 5 & 5 & 5 & 5 &
                                     5 & 5 & 5 & 5 & 5 & 5 & 5 & 5 &
                                     5 & 5 & 5)));
   end Test_AllSpares;

end Score.Test;