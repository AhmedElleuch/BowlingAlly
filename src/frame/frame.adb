package body Frame is
   function SetRoll (I1 : Frame; I2 : Roll_type) return Frame is
      ret : Frame := I1;
   begin
      if I1.Roll1 = -1 then
         ret.Roll1 := I2;
         return ret;
      else
         ret.Roll2 := I2;
         return ret;
      end if;

   end SetRoll;

   procedure SetFrameType (My_Frame : in out Frame)  is

   begin
      if My_Frame.Roll1 = 10 then
         My_Frame.F_Type := STRIKE;
      elsif My_Frame.Roll2 = -1 then
         My_Frame.F_Type := EMPTY;
      elsif My_Frame.Roll1 + My_Frame.Roll2 = 10 then
         My_Frame.F_Type := SPARE;
      elsif My_Frame.Roll1 + My_Frame.Roll2 < 10 then
         My_Frame.F_Type := NORMAL;
      end if;
   end SetFrameType;
end Frame;
