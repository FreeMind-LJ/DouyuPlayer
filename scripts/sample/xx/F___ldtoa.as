package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import sample.xx_ldtoa_2E_o_3A_D60ADBA1_2D_A10F_2D_4DF4_2D_8DA7_2D_F1BA774536C6.*;
   
   public function F___ldtoa() : void
   {
      var _loc4_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc12_:* = 0;
      var _loc7_:int = 0;
      var _loc3_:int = 0;
      var _loc11_:* = NaN;
      var _loc15_:* = 0;
      var _loc14_:int = 0;
      var _loc13_:* = 0;
      var _loc16_:* = 0;
      var _loc9_:int = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 48);
      si32(53,_loc4_ - 24);
      _loc3_ = _loc4_ - 24;
      _loc16_ = _loc3_ | 4;
      si32(-1074,_loc16_);
      si32(971,_loc4_ - 16);
      si32(0,_loc4_ - 8);
      _loc16_ = li32(_loc4_);
      _loc11_ = lf64(_loc16_);
      sf64(_loc11_,_loc4_ - 48);
      _loc15_ = int(_loc4_ - 48);
      _loc15_ = _loc15_ | 4;
      _loc15_ = li32(_loc15_);
      _loc14_ = _loc15_ >>> 31;
      _loc13_ = li32(_loc4_ + 16);
      si32(_loc14_,_loc13_);
      si32(1,_loc4_ - 12);
      _loc13_ = li32(_loc4_ - 48);
      si32(_loc13_,_loc4_ - 36);
      _loc12_ = _loc15_ & 1048575;
      si32(_loc12_,_loc4_ - 32);
      _loc2_ = int(_loc2_ - 16);
      sf64(_loc11_,_loc2_);
      ESP = _loc2_;
      F___fpclassifyd();
      _loc16_ = int(_loc15_ >>> 20);
      _loc10_ = _loc16_ & 2047;
      _loc9_ = _loc10_ + -1075;
      _loc8_ = li32(_loc4_ + 20);
      _loc1_ = li32(_loc4_ + 12);
      _loc5_ = li32(_loc4_ + 8);
      _loc6_ = li32(_loc4_ + 4);
      _loc2_ = int(_loc2_ + 16);
      _loc7_ = eax;
      if(_loc7_ <= 3)
      {
         if(_loc7_ != 1)
         {
            if(_loc7_ != 2)
            {
               addr260:
               ESP = _loc2_;
               F_abort();
            }
            else
            {
               si32(4,_loc4_ - 28);
            }
         }
         else
         {
            si32(3,_loc4_ - 28);
         }
      }
      else if(_loc7_ != 16)
      {
         if(_loc7_ != 8)
         {
            if(_loc7_ == 4)
            {
               si32(1,_loc4_ - 28);
               _loc16_ = _loc12_ | 1048576;
               si32(_loc16_,_loc4_ - 32);
            }
            else
            {
               §§goto(addr260);
            }
         }
         else
         {
            si32(2,_loc4_ - 28);
            _loc9_ = _loc10_ + -1074;
         }
      }
      else
      {
         si32(0,_loc4_ - 28);
      }
      _loc2_ = int(_loc2_ - 32);
      si32(_loc8_,_loc2_ + 28);
      si32(_loc5_,_loc2_ + 20);
      si32(_loc6_,_loc2_ + 16);
      _loc16_ = int(_loc4_ - 28);
      si32(_loc16_,_loc2_ + 12);
      _loc16_ = int(_loc4_ - 36);
      si32(_loc16_,_loc2_ + 8);
      si32(_loc9_,_loc2_ + 4);
      si32(_loc3_,_loc2_);
      si32(_loc1_,_loc2_ + 24);
      ESP = _loc2_;
      F___gdtoa();
      _loc2_ = int(_loc2_ + 32);
      _loc9_ = eax;
      _loc16_ = li32(_loc1_);
      if(_loc16_ == -32768)
      {
         si32(2147483647,_loc1_);
      }
      eax = _loc9_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
