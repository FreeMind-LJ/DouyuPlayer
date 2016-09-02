package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   
   public function F___kernel_tandf() : void
   {
      var _loc5_:* = 0;
      var _loc6_:Number = NaN;
      var _loc8_:Number = NaN;
      var _loc11_:Number = NaN;
      var _loc10_:Number = NaN;
      var _loc9_:Number = NaN;
      var _loc7_:* = NaN;
      var _loc2_:* = 0;
      var _loc3_:Number = NaN;
      var _loc4_:* = int(ESP);
      _loc5_ = _loc4_;
      _loc7_ = lf64(_loc5_);
      _loc6_ = _loc7_ * _loc7_;
      _loc9_ = _loc6_ * _loc7_;
      _loc8_ = _loc6_ * _loc6_;
      _loc11_ = _loc9_ * _loc8_;
      _loc10_ = _loc6_ * 0.00946564784943673;
      _loc10_ = _loc10_ + 0.00297435743359967;
      _loc8_ = _loc8_ * _loc10_;
      _loc10_ = _loc6_ * 0.0245283181166547;
      _loc10_ = _loc10_ + 0.053381237844567;
      _loc8_ = _loc8_ + _loc10_;
      _loc11_ = _loc11_ * _loc8_;
      _loc6_ = _loc6_ * 0.133392002712977;
      _loc6_ = _loc6_ + 0.333331395030791;
      _loc9_ = _loc9_ * _loc6_;
      _loc7_ = Number(_loc9_ + _loc7_);
      _loc3_ = _loc7_ + _loc11_;
      _loc2_ = li32(_loc5_ + 8);
      if(_loc2_ != 1)
      {
         _loc3_ = -1 / _loc3_;
      }
      var _loc1_:* = _loc3_;
      st0 = _loc1_;
      _loc4_ = _loc5_;
      ESP = _loc4_;
   }
}
