package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___rshift_D2A() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc9_:int = 0;
      var _loc10_:* = 0;
      var _loc12_:* = 0;
      var _loc6_:int = 0;
      var _loc5_:int = 0;
      var _loc4_:int = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc12_ = li32(_loc1_ + 16);
      _loc11_ = li32(_loc3_ + 4);
      _loc10_ = _loc11_ >> 5;
      _loc9_ = _loc1_ + 20;
      _loc8_ = _loc9_;
      if(_loc12_ > _loc10_)
      {
         var _loc7_:* = int(_loc1_ + (_loc12_ << 2));
         _loc6_ = _loc7_ + 20;
         _loc11_ = _loc11_ & 31;
         if(_loc11_ == 0)
         {
            _loc8_ = _loc9_;
            if(_loc10_ < _loc12_)
            {
               _loc11_ = _loc10_ << 2;
               _loc8_ = int(_loc1_ + 20);
               do
               {
                  _loc7_ = int(_loc8_ + _loc11_);
                  _loc7_ = li32(_loc7_);
                  si32(_loc7_,_loc8_);
                  _loc8_ = int(_loc8_ + 4);
                  _loc7_ = int(_loc8_ + _loc11_);
               }
               while(uint(_loc7_) < uint(_loc6_));
               
            }
         }
         else
         {
            _loc5_ = _loc1_ + (_loc10_ << 2);
            _loc7_ = li32(_loc5_ + 20);
            _loc4_ = _loc7_ >>> _loc11_;
            _loc8_ = _loc9_;
            if(int(_loc10_ + 1) < _loc12_)
            {
               _loc12_ = int(32 - _loc11_);
               _loc5_ = _loc5_ + 24;
               _loc8_ = int(_loc1_ + 20);
               do
               {
                  _loc7_ = li32(_loc5_);
                  _loc7_ = _loc7_ << _loc12_;
                  _loc7_ = _loc7_ | _loc4_;
                  si32(_loc7_,_loc8_);
                  _loc7_ = li32(_loc5_);
                  _loc4_ = _loc7_ >>> _loc11_;
                  _loc5_ = _loc5_ + 4;
                  _loc8_ = int(_loc8_ + 4);
               }
               while(uint(_loc5_) < uint(_loc6_));
               
            }
            si32(_loc4_,_loc8_);
            if(_loc4_ != 0)
            {
               _loc8_ = int(_loc8_ + 4);
            }
         }
      }
      _loc7_ = int(_loc8_ - _loc9_);
      _loc7_ = _loc7_ >> 2;
      si32(_loc7_,_loc1_ + 16);
      if(_loc7_ == 0)
      {
         si32(0,_loc9_);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
