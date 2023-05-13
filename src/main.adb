with Ada.Text_IO; use Ada.Text_IO;
with Player;
procedure Main is
   MyPlayer : Player.Player_t;
begin
   Put_Line ("Welcom from Main" & Integer'Image (MyPlayer.Score));
   Put_Line ("The size of Player is " & Integer'Image (MyPlayer'Size) &
      " bytes");
end Main;
