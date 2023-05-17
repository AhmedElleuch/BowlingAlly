--  with Game.Test.Suite;
--  with Frame.Test.Suite;
--  with Player.Test.Suite;
with Score.Test.Suite;

package body Main_Suite is

   function Suite return Access_Test_Suite is
      Ret : constant Access_Test_Suite := new Test_Suite;
   begin
      --  Ret.Add_Test (Game.Test.Suite.Suite);
      --  Ret.Add_Test (Frame.Test.Suite.Suite);
      --  Ret.Add_Test (Player.Test.Suite.Suite);
      Ret.Add_Test (Score.Test.Suite.Suite);
      return Ret;
   end Suite;

end Main_Suite;