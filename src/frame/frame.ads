package Frame is
   type Frame_Type is (STRIKE, SPARE, NORMAL, EMPTY);
   type Roll_type is new Integer range -1 .. 10;
   type Frame is record
      Roll1 : Roll_type := -1;
      Roll2 : Roll_type := -1;
      F_Type  : Frame_Type := EMPTY;
   end record;

   function SetRoll (I1 : Frame; I2 : Roll_type) return Frame;
   procedure SetFrameType (My_Frame : in out Frame);

end Frame;
