package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_dtoa_smisc_2E_o_3A_6A196DFE_2D_9909_2D_4D43_2D_91F4_2D_F2570A9CA96E.*;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.lf64;
   
   public function F___ratio_D2A() : void
   {
      var _loc3_:* = 0;
      var _loc10_:int = 0;
      var _loc13_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:* = 0;
      var _loc4_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = int(ESP);
      _loc3_ = _loc1_;
      _loc1_ = int(_loc1_ - 48);
      _loc1_ = int(_loc1_ - 16);
      _loc2_ = int(_loc3_ - 4);
      si32(_loc2_,_loc1_ + 4);
      _loc2_ = li32(_loc3_);
      si32(_loc2_,_loc1_);
      ESP = _loc1_;
      F___b2d_D2A();
      _loc1_ = int(_loc1_ + 16);
      var _loc8_:* = Number(st0);
      sf64(_loc8_,_loc3_ - 16);
      _loc1_ = int(_loc1_ - 16);
      _loc13_ = int(_loc3_ - 8);
      si32(_loc13_,_loc1_ + 4);
      _loc12_ = li32(_loc3_ + 4);
      si32(_loc12_,_loc1_);
      ESP = _loc1_;
      F___b2d_D2A();
      _loc1_ = int(_loc1_ + 16);
      _loc8_ = Number(st0);
      sf64(_loc8_,_loc3_ - 24);
      _loc13_ = li32(_loc3_ - 8);
      var _loc11_:* = li32(_loc3_ - 4);
      _loc13_ = int(_loc11_ - _loc13_);
      _loc12_ = li32(_loc12_ + 16);
      _loc2_ = li32(_loc2_ + 16);
      _loc2_ = int(_loc2_ - _loc12_);
      _loc2_ = _loc2_ << 5;
      _loc10_ = _loc2_ + _loc13_;
      _loc2_ = int(_loc3_ - 16);
      _loc2_ = _loc2_ | 4;
      _loc9_ = li32(_loc2_);
      _loc2_ = int(_loc3_ - 24);
      _loc2_ = _loc2_ | 4;
      _loc6_ = li32(_loc2_);
      _loc5_ = li32(_loc3_ - 16);
      _loc4_ = li32(_loc3_ - 24);
      if(_loc10_ >= 1)
      {
         _loc9_ = int((_loc10_ << 20) + _loc9_);
      }
      else
      {
         _loc6_ = int(_loc6_ - (_loc10_ << 20));
      }
      _loc2_ = int(_loc3_ - 40);
      _loc2_ = _loc2_ | 4;
      si32(_loc6_,_loc2_);
      _loc2_ = int(_loc3_ - 32);
      _loc2_ = _loc2_ | 4;
      si32(_loc9_,_loc2_);
      si32(_loc4_,_loc3_ - 40);
      si32(_loc5_,_loc3_ - 32);
      _loc8_ = lf64(_loc3_ - 40);
      var _loc7_:* = lf64(_loc3_ - 32);
      _loc7_ = Number(_loc7_ / _loc8_);
      st0 = _loc7_;
      _loc1_ = _loc3_;
      ESP = _loc1_;
   }
}
