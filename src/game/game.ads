with Frame;

package Game is
   type Game_type is array  (Integer range <>) of Frame.Frame;
   Games : Game_type(0..10);
   function Foo return Boolean;  
end Game;
