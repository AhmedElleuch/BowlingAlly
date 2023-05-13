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
end Frame;
