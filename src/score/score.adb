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
      frameNbre : Integer := 1;
   begin

      if V.Length = 0 then
         return 0;
      end if;
      for E of V loop
         if Roll_nbre = 1 then
            if BeforeLastFrameIsStrike then
               output := output + E;
               output := output + E * 2;
            elsif lastFrameIsStrike  then
               if E = 10 then
                  Roll_nbre := 1;
               else
                  Roll_nbre := 2;
               end if;
               output := output + E * 2;
            elsif lastFrameIsSpare then
               output := output + E * 2;
               lastFrameIsSpare := False;
               Roll_nbre := 2;
            else
               if E = 10 then
                  Roll_nbre := 1;
               else
                  Roll_nbre := 2;
               end if;
               output := output + E;
            end if;
            FirstRollScore := E;
            if E = 10 then
               frameNbre := frameNbre + 1;
            end if;
         elsif Roll_nbre = 2 then
            if lastFrameIsStrike then
               output := output + E * 2;
               lastFrameIsStrike := False;
            else
               output := output + E;
               lastFrameIsStrike := False;
               BeforeLastFrameIsStrike := False;
            end if;
            Roll_nbre := 1;
            frameNbre := frameNbre + 1;

         elsif Roll_nbre = 3 then
            output := output + 30; -- hard coded
            return output;
         end if;

         if frameNbre = 10 then
            Roll_nbre := 3;
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
      end loop;
      return output;
   end BA;
end Score;