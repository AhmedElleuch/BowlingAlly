package Frame is
   type Roll_type is new Integer range 0 .. 10;
   type Frame is record
      Roll1 : Roll_type;
      Roll2 : Roll_type;
   end record;

   function SetRoll (Roll_Input : Roll_type) return Boolean;

   function Foo (I1 : Integer; I2 : Integer) return Integer;
end Frame;
