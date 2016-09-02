package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_printf_2E_o_3A_6EDE186A_2D_A78D_2D_4139_2D_B1C2_2D_0C5D348116BA.*;
   
   public function F___printf_flush() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc5_ = li32(_loc1_);
      _loc2_ = int(_loc2_ - 16);
      var _loc4_:int = _loc1_ + 4;
      si32(_loc4_,_loc2_ + 4);
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F___sfvwrite();
      _loc2_ = int(_loc2_ + 16);
      _loc5_ = int(_loc1_ + 16);
      si32(_loc5_,_loc1_ + 80);
      si32(_loc5_,_loc1_ + 4);
      si32(0,_loc1_ + 12);
      si32(0,_loc1_ + 8);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
