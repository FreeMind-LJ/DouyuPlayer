package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_ysctlbyname_2E_o_3A_F186BA92_2D_4A5B_2D_4BF6_2D_9251_2D_4297FE190C53.*;
   
   public function F_sysctlbyname() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:int = 0;
      var _loc7_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 128);
      si32(0,_loc3_ - 8);
      si32(3,_loc3_ - 4);
      si32(104,_loc3_ - 116);
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_strlen();
      _loc2_ = int(_loc2_ + 16);
      _loc9_ = int(eax);
      _loc2_ = int(_loc2_ - 32);
      si32(_loc9_,_loc2_ + 20);
      si32(_loc1_,_loc2_ + 16);
      _loc1_ = int(_loc3_ - 116);
      si32(_loc1_,_loc2_ + 12);
      _loc8_ = _loc3_ - 112;
      si32(_loc8_,_loc2_ + 8);
      si32(2,_loc2_ + 4);
      _loc1_ = int(_loc3_ - 8);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_sysctl();
      _loc2_ = int(_loc2_ + 32);
      _loc7_ = eax;
      if(_loc7_ >= 0)
      {
         var _loc5_:* = li32(_loc3_ + 12);
         _loc9_ = li32(_loc3_ + 8);
         _loc1_ = li32(_loc3_ + 4);
         var _loc4_:* = li32(_loc3_ - 116);
         _loc4_ = int(_loc4_ >>> 2);
         si32(_loc4_,_loc3_ - 116);
         _loc2_ = int(_loc2_ - 32);
         si32(li32(_loc3_ + 16),_loc2_ + 20);
         si32(_loc5_,_loc2_ + 16);
         si32(_loc9_,_loc2_ + 12);
         si32(_loc1_,_loc2_ + 8);
         si32(_loc4_,_loc2_ + 4);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F_sysctl();
         _loc2_ = int(_loc2_ + 32);
         _loc7_ = eax;
      }
      eax = _loc7_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
