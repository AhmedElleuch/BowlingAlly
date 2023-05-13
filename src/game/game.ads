with Frame;

package Game is
   type Game_type is array  (Integer range <>) of Frame.Frame;
   type Game_t is record
      Game :  Game_type (0 .. 10);
      Score : Integer;
   end record;
   function Foo (I1 : Integer; I2 : Integer) return Integer;
end Game;
