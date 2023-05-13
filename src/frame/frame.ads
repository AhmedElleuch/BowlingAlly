package Frame is
   type Roll_type is new Integer range -1 .. 10;
   type Frame is record
      Roll1 : Roll_type := -1;
      Roll2 : Roll_type := -1;
   end record;

   function SetRoll (I1 : Frame; I2 : Roll_type) return Frame;

end Frame;
