package body Frame is
   function SetRoll (Roll_Input : Roll_type) return Boolean is
      begin
         if Roll_Input>5 then
            return false ;
         end if;
         return true ;
      end SetRoll;
      
end Frame;
