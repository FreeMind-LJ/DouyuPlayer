package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_ecp_Add() : void
   {
      var _loc14_:* = 0;
      var _loc6_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:* = 0;
      var _loc8_:* = 0;
      var _loc11_:* = 0;
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = int(ESP);
      _loc14_ = _loc1_;
      _loc2_ = li32(_loc14_ + 4);
      _loc3_ = li32(_loc2_);
      _loc5_ = li32(_loc14_ + 8);
      _loc7_ = li32(_loc5_);
      _loc8_ = int(_loc7_ + _loc3_);
      _loc9_ = li32(_loc14_);
      si32(_loc8_,_loc9_);
      _loc10_ = 1;
      _loc11_ = _loc10_;
      if(uint(_loc8_) >= uint(_loc7_))
      {
         _loc11_ = 0;
      }
      _loc12_ = _loc10_;
      if(uint(_loc8_) >= uint(_loc3_))
      {
         _loc12_ = _loc11_;
      }
      _loc13_ = li32(_loc2_ + 4);
      _loc8_ = int(_loc12_ + _loc13_);
      _loc11_ = li32(_loc5_ + 4);
      _loc3_ = int(_loc8_ + _loc11_);
      si32(_loc3_,_loc9_ + 4);
      _loc6_ = _loc10_;
      if(uint(_loc8_) >= uint(_loc12_))
      {
         _loc6_ = 0;
      }
      _loc12_ = _loc10_;
      if(uint(_loc8_) >= uint(_loc13_))
      {
         _loc12_ = _loc6_;
      }
      _loc13_ = _loc10_;
      if(uint(_loc3_) >= uint(_loc8_))
      {
         _loc13_ = 0;
      }
      _loc8_ = _loc10_;
      if(uint(_loc3_) >= uint(_loc11_))
      {
         _loc8_ = _loc13_;
      }
      _loc6_ = int(_loc12_ + _loc8_);
      _loc12_ = li32(_loc2_ + 8);
      _loc8_ = li32(_loc5_ + 8);
      _loc11_ = int(_loc8_ + _loc12_);
      _loc13_ = int(_loc11_ + _loc6_);
      si32(_loc13_,_loc9_ + 8);
      _loc4_ = _loc10_;
      if(uint(_loc13_) >= uint(_loc11_))
      {
         _loc4_ = 0;
      }
      _loc3_ = _loc10_;
      if(uint(_loc13_) >= uint(_loc6_))
      {
         _loc3_ = _loc4_;
      }
      _loc13_ = _loc10_;
      if(uint(_loc11_) >= uint(_loc8_))
      {
         _loc13_ = 0;
      }
      _loc8_ = _loc10_;
      if(uint(_loc11_) >= uint(_loc12_))
      {
         _loc8_ = _loc13_;
      }
      _loc13_ = int(_loc8_ + _loc3_);
      _loc11_ = li32(_loc2_ + 12);
      _loc8_ = li32(_loc5_ + 12);
      _loc12_ = int(_loc8_ + _loc11_);
      _loc6_ = int(_loc12_ + _loc13_);
      si32(_loc6_,_loc9_ + 12);
      _loc4_ = _loc10_;
      if(uint(_loc6_) >= uint(_loc12_))
      {
         _loc4_ = 0;
      }
      _loc3_ = _loc10_;
      if(uint(_loc6_) >= uint(_loc13_))
      {
         _loc3_ = _loc4_;
      }
      _loc13_ = _loc10_;
      if(uint(_loc12_) >= uint(_loc8_))
      {
         _loc13_ = 0;
      }
      _loc8_ = _loc10_;
      if(uint(_loc12_) >= uint(_loc11_))
      {
         _loc8_ = _loc13_;
      }
      _loc13_ = int(_loc8_ + _loc3_);
      _loc12_ = li32(_loc2_ + 16);
      _loc8_ = li32(_loc5_ + 16);
      _loc11_ = int(_loc8_ + _loc12_);
      _loc4_ = int(_loc11_ + _loc13_);
      si32(_loc4_,_loc9_ + 16);
      _loc6_ = _loc10_;
      if(uint(_loc4_) >= uint(_loc11_))
      {
         _loc6_ = 0;
      }
      _loc3_ = _loc10_;
      if(uint(_loc4_) >= uint(_loc13_))
      {
         _loc3_ = _loc6_;
      }
      _loc13_ = _loc10_;
      if(uint(_loc11_) >= uint(_loc8_))
      {
         _loc13_ = 0;
      }
      _loc8_ = _loc10_;
      if(uint(_loc11_) >= uint(_loc12_))
      {
         _loc8_ = _loc13_;
      }
      _loc6_ = int(_loc8_ + _loc3_);
      _loc12_ = li32(_loc2_ + 20);
      _loc8_ = li32(_loc5_ + 20);
      _loc11_ = int(_loc8_ + _loc12_);
      _loc4_ = int(_loc11_ + _loc6_);
      si32(_loc4_,_loc9_ + 20);
      _loc13_ = _loc10_;
      if(uint(_loc4_) >= uint(_loc11_))
      {
         _loc13_ = 0;
      }
      _loc3_ = _loc10_;
      if(uint(_loc4_) >= uint(_loc6_))
      {
         _loc3_ = _loc13_;
      }
      _loc13_ = _loc10_;
      if(uint(_loc11_) >= uint(_loc8_))
      {
         _loc13_ = 0;
      }
      _loc8_ = _loc10_;
      if(uint(_loc11_) >= uint(_loc12_))
      {
         _loc8_ = _loc13_;
      }
      _loc6_ = int(_loc8_ + _loc3_);
      _loc12_ = li32(_loc2_ + 24);
      _loc8_ = li32(_loc5_ + 24);
      _loc11_ = int(_loc8_ + _loc12_);
      _loc4_ = int(_loc11_ + _loc6_);
      si32(_loc4_,_loc9_ + 24);
      _loc13_ = _loc10_;
      if(uint(_loc4_) >= uint(_loc11_))
      {
         _loc13_ = 0;
      }
      _loc3_ = _loc10_;
      if(uint(_loc4_) >= uint(_loc6_))
      {
         _loc3_ = _loc13_;
      }
      _loc13_ = _loc10_;
      if(uint(_loc11_) >= uint(_loc8_))
      {
         _loc13_ = 0;
      }
      _loc8_ = _loc10_;
      if(uint(_loc11_) >= uint(_loc12_))
      {
         _loc8_ = _loc13_;
      }
      _loc3_ = int(_loc8_ + _loc3_);
      _loc2_ = li32(_loc2_ + 28);
      _loc5_ = li32(_loc5_ + 28);
      _loc12_ = int(_loc5_ + _loc2_);
      _loc11_ = int(_loc12_ + _loc3_);
      si32(_loc11_,_loc9_ + 28);
      _loc8_ = _loc10_;
      if(uint(_loc11_) >= uint(_loc12_))
      {
         _loc8_ = 0;
      }
      _loc9_ = _loc10_;
      if(uint(_loc11_) >= uint(_loc3_))
      {
         _loc9_ = _loc8_;
      }
      _loc3_ = _loc10_;
      if(uint(_loc12_) >= uint(_loc5_))
      {
         _loc3_ = 0;
      }
      if(uint(_loc12_) >= uint(_loc2_))
      {
         _loc10_ = _loc3_;
      }
      _loc7_ = int(_loc10_ + _loc9_);
      eax = _loc7_;
      _loc1_ = _loc14_;
      ESP = _loc1_;
   }
}
