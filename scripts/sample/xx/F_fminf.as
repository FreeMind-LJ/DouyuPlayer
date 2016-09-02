package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   
   public function F_fminf() : void
   {
      var _loc6_:* = 0;
      var _loc1_:* = NaN;
      var _loc3_:* = NaN;
      var _loc12_:* = 0;
      var _loc5_:int = 0;
      var _loc11_:* = 0;
      var _loc13_:* = 0;
      var _loc9_:* = NaN;
      var _loc8_:* = 0;
      var _loc10_:int = 0;
      var _loc7_:* = NaN;
      var _loc2_:* = NaN;
      var _loc4_:* = int(ESP);
      _loc6_ = _loc4_;
      _loc4_ = int(_loc4_ - 16);
      _loc1_ = lf32(_loc6_);
      sf32(_loc1_,_loc6_ - 8);
      _loc5_ = _loc6_ - 8;
      _loc13_ = _loc5_ | 4;
      _loc3_ = lf32(_loc6_ + 4);
      sf32(_loc3_,_loc13_);
      sf32(_loc1_,_loc6_ - 12);
      sf32(_loc3_,_loc6_ - 16);
      _loc12_ = li32(_loc6_ - 12);
      _loc13_ = int(_loc12_ >>> 23);
      _loc13_ = _loc13_ & 255;
      _loc11_ = li32(_loc6_ - 16);
      if(_loc13_ == 255)
      {
         _loc2_ = _loc3_;
         if((_loc12_ & 8388607) == 0)
         {
         }
         addr182:
         st0 = _loc2_;
         _loc4_ = _loc6_;
         ESP = _loc4_;
         return;
      }
      _loc13_ = int(_loc11_ >>> 23);
      _loc13_ = _loc13_ & 255;
      if(_loc13_ == 255)
      {
         _loc2_ = _loc1_;
         if((_loc11_ & 8388607) == 0)
         {
         }
         §§goto(addr182);
      }
      _loc10_ = 1;
      _loc8_ = _loc10_;
      if(_loc11_ >= 0)
      {
         _loc8_ = 0;
      }
      if(_loc12_ >= 0)
      {
         _loc10_ = 0;
      }
      _loc13_ = _loc10_ ^ _loc8_;
      _loc13_ = _loc13_ & 1;
      if(_loc13_ != 0)
      {
         _loc13_ = _loc11_ & -2147483648;
         _loc13_ = _loc5_ | int(_loc13_ >>> 29);
         _loc2_ = lf32(_loc13_);
      }
      else
      {
         _loc9_ = _loc3_;
         _loc7_ = _loc1_;
         if(_loc7_ >= _loc9_)
         {
            _loc7_ = _loc9_;
         }
         _loc2_ = _loc7_;
      }
      §§goto(addr182);
   }
}
