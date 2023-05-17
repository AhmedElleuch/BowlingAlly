package body Score is
   function IsThreeStrikeCombo return Boolean is
   begin
      return False;
   end IsThreeStrikeCombo;

   function IsTwoStrikeCombo return Boolean is
   begin
      return False;
   end IsTwoStrikeCombo;

   function IsOneStrikeCombo return Boolean is
   begin
      return False;
   end IsOneStrikeCombo;

   function BA (V : Vector := Empty_Vector) return Integer is
      output : Integer := 0;
      lastFrameIsStrike : Boolean := False;
      BeforeLastFrameIsStrike : Boolean := False;
      lastFrameIsSpare : Boolean := False;
      FirstRollScore : Integer := 0;
      Roll_nbre : Integer := 1;
      NotSuitofStrikes : Boolean := True;
   begin

      if V.Length = 0 then
         return 0;
      end if;
      for E of V loop
         if Roll_nbre = 1 then
            if NotSuitofStrikes then
               if BeforeLastFrameIsStrike then
                  output := output + E;
               end if;
            else
               output := output + E;
            end if;

            if lastFrameIsStrike then
               output := output + E * 2;
               Roll_nbre := 2;
            elsif lastFrameIsSpare then
               output := output + E * 2;
               lastFrameIsSpare := False;
               Roll_nbre := 2;
            else
               output := output + E;
               Roll_nbre := 2;
            end if;

         elsif Roll_nbre = 2 then
            if lastFrameIsStrike then
               output := output + E * 2;
            else
               output := output + E;
               lastFrameIsStrike := False;
               BeforeLastFrameIsStrike := False;
            end if;
            Roll_nbre := 1;
         end if;
         if E = 10 and BeforeLastFrameIsStrike then
            NotSuitofStrikes := False;
         end if;
         if E = 10 and lastFrameIsStrike then
            BeforeLastFrameIsStrike := True;
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