package body Score is
   function BA (V : Vector := Empty_Vector) return Integer is
      output : Integer := 0;
      lastFrameIsStrike : Boolean := False;
      lastFrameIsSpare : Boolean := False;
      FirstRollScore : Integer := 0;
   begin
      if V.Length = 0 then
         return 0;
      end if;
      for E of V loop
         if lastFrameIsStrike then
            output := output + E * 2;
            lastFrameIsStrike := False;
         elsif lastFrameIsSpare then
            output := output + E * 2;
            lastFrameIsStrike := False;
         else
            output := output + E;
         end if;

         if E = 10 then
            lastFrameIsStrike := True;
         end if;

         if E + FirstRollScore = 10 then
            lastFrameIsSpare := True;
         end if;
         FirstRollScore := E;
      end loop;
      return output;
   end BA;
end Score;