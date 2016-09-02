package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_ecp_Mod() : void
   {
      var _loc2_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc3_:* = int(ESP);
      _loc2_ = _loc3_;
      _loc3_ = int(_loc3_ - 32);
      _loc4_ = li32(_loc2_);
      _loc5_ = li32(_loc4_);
      _loc6_ = int(_loc5_ + 19);
      si32(_loc6_,_loc4_);
      _loc7_ = 1;
      _loc8_ = _loc7_;
      if(uint(_loc6_) >= uint(_loc5_))
      {
         _loc8_ = 0;
      }
      _loc9_ = _loc7_;
      if(uint(_loc6_) >= 19)
      {
         _loc9_ = _loc8_;
      }
      _loc8_ = int(_loc9_ + -1);
      _loc5_ = li32(_loc4_ + 4);
      _loc10_ = int(_loc5_ + _loc8_);
      _loc6_ = int(_loc10_ + 1);
      si32(_loc6_,_loc4_ + 4);
      _loc11_ = _loc7_;
      if(uint(_loc10_) >= uint(_loc5_))
      {
         _loc11_ = 0;
      }
      _loc9_ = _loc7_;
      if(uint(_loc10_) >= uint(_loc8_))
      {
         _loc9_ = _loc11_;
      }
      _loc11_ = _loc7_;
      if(uint(_loc6_) >= uint(_loc10_))
      {
         _loc11_ = 0;
      }
      _loc10_ = _loc7_;
      if(_loc6_ != 0)
      {
         _loc10_ = _loc11_;
      }
      _loc5_ = _loc8_ >> 31;
      _loc5_ = int(_loc5_ + _loc9_);
      _loc5_ = int(_loc5_ + _loc10_);
      _loc9_ = int(_loc5_ + -1);
      _loc5_ = li32(_loc4_ + 8);
      _loc11_ = int(_loc5_ + _loc9_);
      _loc8_ = int(_loc11_ + 1);
      si32(_loc8_,_loc4_ + 8);
      _loc10_ = _loc7_;
      if(uint(_loc11_) >= uint(_loc5_))
      {
         _loc10_ = 0;
      }
      _loc6_ = _loc7_;
      if(uint(_loc11_) >= uint(_loc9_))
      {
         _loc6_ = _loc10_;
      }
      _loc10_ = _loc7_;
      if(uint(_loc8_) >= uint(_loc11_))
      {
         _loc10_ = 0;
      }
      _loc11_ = _loc7_;
      if(_loc8_ != 0)
      {
         _loc11_ = _loc10_;
      }
      _loc5_ = _loc9_ >> 31;
      _loc5_ = int(_loc5_ + _loc6_);
      _loc5_ = int(_loc5_ + _loc11_);
      _loc8_ = int(_loc5_ + -1);
      _loc5_ = li32(_loc4_ + 12);
      _loc11_ = int(_loc5_ + _loc8_);
      _loc9_ = int(_loc11_ + 1);
      si32(_loc9_,_loc4_ + 12);
      _loc10_ = _loc7_;
      if(uint(_loc11_) >= uint(_loc5_))
      {
         _loc10_ = 0;
      }
      _loc6_ = _loc7_;
      if(uint(_loc11_) >= uint(_loc8_))
      {
         _loc6_ = _loc10_;
      }
      _loc10_ = _loc7_;
      if(uint(_loc9_) >= uint(_loc11_))
      {
         _loc10_ = 0;
      }
      _loc11_ = _loc7_;
      if(_loc9_ != 0)
      {
         _loc11_ = _loc10_;
      }
      _loc5_ = _loc8_ >> 31;
      _loc5_ = int(_loc5_ + _loc6_);
      _loc5_ = int(_loc5_ + _loc11_);
      _loc8_ = int(_loc5_ + -1);
      _loc5_ = li32(_loc4_ + 16);
      _loc11_ = int(_loc5_ + _loc8_);
      _loc9_ = int(_loc11_ + 1);
      si32(_loc9_,_loc4_ + 16);
      _loc10_ = _loc7_;
      if(uint(_loc11_) >= uint(_loc5_))
      {
         _loc10_ = 0;
      }
      _loc6_ = _loc7_;
      if(uint(_loc11_) >= uint(_loc8_))
      {
         _loc6_ = _loc10_;
      }
      _loc10_ = _loc7_;
      if(uint(_loc9_) >= uint(_loc11_))
      {
         _loc10_ = 0;
      }
      _loc11_ = _loc7_;
      if(_loc9_ != 0)
      {
         _loc11_ = _loc10_;
      }
      _loc5_ = _loc8_ >> 31;
      _loc5_ = int(_loc5_ + _loc6_);
      _loc5_ = int(_loc5_ + _loc11_);
      _loc8_ = int(_loc5_ + -1);
      _loc5_ = li32(_loc4_ + 20);
      _loc11_ = int(_loc5_ + _loc8_);
      _loc6_ = int(_loc11_ + 1);
      si32(_loc6_,_loc4_ + 20);
      _loc10_ = _loc7_;
      if(uint(_loc11_) >= uint(_loc5_))
      {
         _loc10_ = 0;
      }
      _loc9_ = _loc7_;
      if(uint(_loc11_) >= uint(_loc8_))
      {
         _loc9_ = _loc10_;
      }
      _loc10_ = _loc7_;
      if(uint(_loc6_) >= uint(_loc11_))
      {
         _loc10_ = 0;
      }
      _loc11_ = _loc7_;
      if(_loc6_ != 0)
      {
         _loc11_ = _loc10_;
      }
      _loc5_ = _loc8_ >> 31;
      _loc5_ = int(_loc5_ + _loc9_);
      _loc5_ = int(_loc5_ + _loc11_);
      _loc9_ = int(_loc5_ + -1);
      _loc5_ = li32(_loc4_ + 24);
      _loc11_ = int(_loc5_ + _loc9_);
      _loc6_ = int(_loc11_ + 1);
      si32(_loc6_,_loc4_ + 24);
      _loc10_ = _loc7_;
      if(uint(_loc11_) >= uint(_loc5_))
      {
         _loc10_ = 0;
      }
      _loc8_ = _loc7_;
      if(uint(_loc11_) >= uint(_loc9_))
      {
         _loc8_ = _loc10_;
      }
      _loc10_ = _loc7_;
      if(uint(_loc6_) >= uint(_loc11_))
      {
         _loc10_ = 0;
      }
      _loc11_ = _loc7_;
      if(_loc6_ != 0)
      {
         _loc11_ = _loc10_;
      }
      _loc5_ = _loc9_ >> 31;
      _loc5_ = int(_loc5_ + _loc8_);
      _loc5_ = int(_loc5_ + _loc11_);
      _loc6_ = int(_loc5_ + -1);
      _loc5_ = li32(_loc4_ + 28);
      _loc10_ = int(_loc5_ + _loc6_);
      _loc8_ = int(_loc10_ + -2147483647);
      si32(_loc8_,_loc4_ + 28);
      _loc11_ = _loc7_;
      if(uint(_loc10_) >= uint(_loc5_))
      {
         _loc11_ = 0;
      }
      _loc9_ = _loc7_;
      if(uint(_loc10_) >= uint(_loc6_))
      {
         _loc9_ = _loc11_;
      }
      _loc11_ = _loc7_;
      if(uint(_loc8_) >= uint(_loc10_))
      {
         _loc11_ = 0;
      }
      _loc10_ = _loc7_;
      if(uint(_loc8_) >= 2147483649)
      {
         _loc10_ = _loc11_;
      }
      _loc5_ = _loc6_ >> 31;
      _loc5_ = int(_loc5_ + _loc9_);
      _loc5_ = int(_loc5_ + _loc10_);
      var _loc12_:int = _loc5_ + -1;
      _loc5_ = _loc12_ & -19;
      si32(_loc5_,_loc2_ - 32);
      si32(_loc12_,_loc2_ - 8);
      si32(_loc12_,_loc2_ - 12);
      si32(_loc12_,_loc2_ - 16);
      si32(_loc12_,_loc2_ - 20);
      si32(_loc12_,_loc2_ - 24);
      si32(_loc12_,_loc2_ - 28);
      _loc5_ = int(_loc12_ >>> 1);
      si32(_loc5_,_loc2_ - 4);
      _loc3_ = int(_loc3_ - 16);
      _loc6_ = int(_loc2_ - 32);
      si32(_loc6_,_loc3_ + 8);
      si32(_loc4_,_loc3_ + 4);
      si32(_loc4_,_loc3_);
      ESP = _loc3_;
      F_ecp_Add();
      _loc3_ = int(_loc3_ + 16);
      _loc5_ = li32(_loc4_);
      _loc9_ = int(_loc5_ + 19);
      si32(_loc9_,_loc4_);
      _loc10_ = _loc7_;
      if(uint(_loc9_) >= uint(_loc5_))
      {
         _loc10_ = 0;
      }
      _loc8_ = _loc7_;
      if(uint(_loc9_) >= 19)
      {
         _loc8_ = _loc10_;
      }
      _loc9_ = int(_loc8_ + -1);
      _loc5_ = li32(_loc4_ + 4);
      _loc1_ = int(_loc5_ + _loc9_);
      _loc10_ = int(_loc1_ + 1);
      si32(_loc10_,_loc4_ + 4);
      _loc11_ = _loc7_;
      if(uint(_loc1_) >= uint(_loc5_))
      {
         _loc11_ = 0;
      }
      _loc8_ = _loc7_;
      if(uint(_loc1_) >= uint(_loc9_))
      {
         _loc8_ = _loc11_;
      }
      _loc11_ = _loc7_;
      if(uint(_loc10_) >= uint(_loc1_))
      {
         _loc11_ = 0;
      }
      _loc1_ = _loc7_;
      if(_loc10_ != 0)
      {
         _loc1_ = _loc11_;
      }
      _loc5_ = _loc9_ >> 31;
      _loc5_ = int(_loc5_ + _loc8_);
      _loc5_ = int(_loc5_ + _loc1_);
      _loc10_ = int(_loc5_ + -1);
      _loc5_ = li32(_loc4_ + 8);
      _loc11_ = int(_loc5_ + _loc10_);
      _loc8_ = int(_loc11_ + 1);
      si32(_loc8_,_loc4_ + 8);
      _loc1_ = _loc7_;
      if(uint(_loc11_) >= uint(_loc5_))
      {
         _loc1_ = 0;
      }
      _loc9_ = _loc7_;
      if(uint(_loc11_) >= uint(_loc10_))
      {
         _loc9_ = _loc1_;
      }
      _loc1_ = _loc7_;
      if(uint(_loc8_) >= uint(_loc11_))
      {
         _loc1_ = 0;
      }
      _loc11_ = _loc7_;
      if(_loc8_ != 0)
      {
         _loc11_ = _loc1_;
      }
      _loc5_ = _loc10_ >> 31;
      _loc5_ = int(_loc5_ + _loc9_);
      _loc5_ = int(_loc5_ + _loc11_);
      _loc9_ = int(_loc5_ + -1);
      _loc5_ = li32(_loc4_ + 12);
      _loc11_ = int(_loc5_ + _loc9_);
      _loc10_ = int(_loc11_ + 1);
      si32(_loc10_,_loc4_ + 12);
      _loc1_ = _loc7_;
      if(uint(_loc11_) >= uint(_loc5_))
      {
         _loc1_ = 0;
      }
      _loc8_ = _loc7_;
      if(uint(_loc11_) >= uint(_loc9_))
      {
         _loc8_ = _loc1_;
      }
      _loc1_ = _loc7_;
      if(uint(_loc10_) >= uint(_loc11_))
      {
         _loc1_ = 0;
      }
      _loc11_ = _loc7_;
      if(_loc10_ != 0)
      {
         _loc11_ = _loc1_;
      }
      _loc5_ = _loc9_ >> 31;
      _loc5_ = int(_loc5_ + _loc8_);
      _loc5_ = int(_loc5_ + _loc11_);
      _loc9_ = int(_loc5_ + -1);
      _loc5_ = li32(_loc4_ + 16);
      _loc1_ = int(_loc5_ + _loc9_);
      _loc8_ = int(_loc1_ + 1);
      si32(_loc8_,_loc4_ + 16);
      _loc11_ = _loc7_;
      if(uint(_loc1_) >= uint(_loc5_))
      {
         _loc11_ = 0;
      }
      _loc10_ = _loc7_;
      if(uint(_loc1_) >= uint(_loc9_))
      {
         _loc10_ = _loc11_;
      }
      _loc11_ = _loc7_;
      if(uint(_loc8_) >= uint(_loc1_))
      {
         _loc11_ = 0;
      }
      _loc1_ = _loc7_;
      if(_loc8_ != 0)
      {
         _loc1_ = _loc11_;
      }
      _loc5_ = _loc9_ >> 31;
      _loc5_ = int(_loc5_ + _loc10_);
      _loc5_ = int(_loc5_ + _loc1_);
      _loc8_ = int(_loc5_ + -1);
      _loc5_ = li32(_loc4_ + 20);
      _loc1_ = int(_loc5_ + _loc8_);
      _loc9_ = int(_loc1_ + 1);
      si32(_loc9_,_loc4_ + 20);
      _loc11_ = _loc7_;
      if(uint(_loc1_) >= uint(_loc5_))
      {
         _loc11_ = 0;
      }
      _loc10_ = _loc7_;
      if(uint(_loc1_) >= uint(_loc8_))
      {
         _loc10_ = _loc11_;
      }
      _loc11_ = _loc7_;
      if(uint(_loc9_) >= uint(_loc1_))
      {
         _loc11_ = 0;
      }
      _loc1_ = _loc7_;
      if(_loc9_ != 0)
      {
         _loc1_ = _loc11_;
      }
      _loc5_ = _loc8_ >> 31;
      _loc5_ = int(_loc5_ + _loc10_);
      _loc5_ = int(_loc5_ + _loc1_);
      _loc10_ = int(_loc5_ + -1);
      _loc5_ = li32(_loc4_ + 24);
      _loc11_ = int(_loc5_ + _loc10_);
      _loc8_ = int(_loc11_ + 1);
      si32(_loc8_,_loc4_ + 24);
      _loc1_ = _loc7_;
      if(uint(_loc11_) >= uint(_loc5_))
      {
         _loc1_ = 0;
      }
      _loc9_ = _loc7_;
      if(uint(_loc11_) >= uint(_loc10_))
      {
         _loc9_ = _loc1_;
      }
      _loc1_ = _loc7_;
      if(uint(_loc8_) >= uint(_loc11_))
      {
         _loc1_ = 0;
      }
      _loc11_ = _loc7_;
      if(_loc8_ != 0)
      {
         _loc11_ = _loc1_;
      }
      _loc5_ = _loc10_ >> 31;
      _loc5_ = int(_loc5_ + _loc9_);
      _loc5_ = int(_loc5_ + _loc11_);
      _loc9_ = int(_loc5_ + -1);
      _loc5_ = li32(_loc4_ + 28);
      _loc8_ = int(_loc5_ + _loc9_);
      _loc11_ = int(_loc8_ + -2147483647);
      si32(_loc11_,_loc4_ + 28);
      _loc1_ = _loc7_;
      if(uint(_loc8_) >= uint(_loc5_))
      {
         _loc1_ = 0;
      }
      _loc10_ = _loc7_;
      if(uint(_loc8_) >= uint(_loc9_))
      {
         _loc10_ = _loc1_;
      }
      _loc1_ = _loc7_;
      if(uint(_loc11_) >= uint(_loc8_))
      {
         _loc1_ = 0;
      }
      if(uint(_loc11_) >= 2147483649)
      {
         _loc7_ = _loc1_;
      }
      _loc5_ = _loc9_ >> 31;
      _loc5_ = int(_loc5_ + _loc10_);
      _loc5_ = int(_loc5_ + _loc7_);
      _loc12_ = _loc5_ + -1;
      _loc5_ = _loc12_ & -19;
      si32(_loc5_,_loc2_ - 32);
      si32(_loc12_,_loc2_ - 8);
      si32(_loc12_,_loc2_ - 12);
      si32(_loc12_,_loc2_ - 16);
      si32(_loc12_,_loc2_ - 20);
      si32(_loc12_,_loc2_ - 24);
      si32(_loc12_,_loc2_ - 28);
      _loc5_ = int(_loc12_ >>> 1);
      si32(_loc5_,_loc2_ - 4);
      _loc3_ = int(_loc3_ - 16);
      si32(_loc6_,_loc3_ + 8);
      si32(_loc4_,_loc3_ + 4);
      si32(_loc4_,_loc3_);
      ESP = _loc3_;
      F_ecp_Add();
      _loc3_ = int(_loc3_ + 16);
      _loc3_ = _loc2_;
      ESP = _loc3_;
   }
}
