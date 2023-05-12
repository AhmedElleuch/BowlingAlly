package Frame is
    type Roll_type is new Integer range 0 .. 10;
    type Date is record
      Roll1 : Roll_type;
      Roll2 : Roll_type;
   end record;
   
   function SetRoll (Input : Integer) return Boolean;
end Frame;
