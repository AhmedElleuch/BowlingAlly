package body Frame is
   function SetRoll (Roll_Input : Roll_type) return Boolean is
   begin
      if Roll_Input > 5 then
         return False;
      end if;
      return True;
   end SetRoll;

   function Foo (I1 : Integer; I2 : Integer) return Integer is
   begin
      return I1 + I2;
   end Foo;
end Frame;
