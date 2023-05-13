with Ada.Text_IO; use Ada.Text_IO;
with Player;
procedure Main is
   MyPlayer : Player.Player_t;
begin
   MyPlayer.Score := 300;
   Put_Line ("Welcom from Main" & Integer'Image (MyPlayer.Score));
end Main;
