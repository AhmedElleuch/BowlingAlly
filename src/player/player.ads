with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Game;


package Player is
   type Player_t is record
      Namewerw : Unbounded_String;
      Games : Game.Game_type (0 .. 10);
      Score : Integer;
   end record;

   function Foo (I1 : Integer; I2 : Integer) return Integer;
end Player;

