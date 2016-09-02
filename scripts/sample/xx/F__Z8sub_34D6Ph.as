package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.si32;
   
   public function F__Z8sub_34D6Ph() : void
   {
      var _loc2_:* = 0;
      var _loc5_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc4_:* = 0;
      var _loc3_:* = int(ESP);
      _loc2_ = _loc3_;
      _loc4_ = 0;
      _loc5_ = li32(_block_len);
      _loc6_ = _loc4_;
      if(_loc5_ >= 1)
      {
         do
         {
            _loc7_ = _loc4_;
            var _loc8_:* = int(_msgbox + _loc6_);
            _loc8_ = li8(_loc8_);
            _loc9_ = _loc8_ & 1;
            _loc4_ = int(_loc9_ + _loc7_);
            _loc6_ = int(_loc6_ + 1);
         }
         while(_loc6_ < _loc5_);
         
         if(_loc4_ >= 1)
         {
            _loc7_ = int(_loc7_ + _loc9_);
            _loc6_ = int(_loc5_ + -1);
            _loc9_ = int(_msgbox + 1);
            do
            {
               _loc4_ = li8(_msgbox);
               _loc10_ = _loc9_;
               _loc11_ = _loc6_;
               if(_loc6_ >= 1)
               {
                  do
                  {
                     _loc8_ = li8(_loc10_);
                     si8(_loc8_,_loc10_ - 1);
                     _loc10_ = int(_loc10_ + 1);
                     _loc11_ = int(_loc11_ + -1);
                  }
                  while(_loc11_ != 0);
                  
               }
               _loc8_ = int(_msgbox + _loc6_);
               si8(_loc4_,_loc8_);
               _loc7_ = int(_loc7_ + -1);
            }
            while(_loc7_ != 0);
            
         }
         _loc4_ = 0;
         _loc6_ = _loc4_;
         if(_loc5_ >= 1)
         {
            do
            {
               _loc8_ = int(_keybox + _loc6_);
               _loc8_ = li8(_loc8_);
               _loc8_ = int(_loc8_ >>> 7);
               _loc4_ = int(_loc8_ + _loc4_);
               _loc6_ = int(_loc6_ + 1);
            }
            while(_loc6_ < _loc5_);
            
         }
      }
      var _loc12_:* = li32(_msgbox);
      var _loc1_:* = _loc12_ << _loc4_;
      _loc8_ = int(32 - _loc4_);
      _loc12_ = int(_loc12_ >>> _loc8_);
      _loc1_ = _loc1_ | _loc12_;
      si32(_loc1_,_msgbox);
      _loc12_ = li32(_msgbox + 4);
      _loc1_ = int(_loc12_ >>> _loc8_);
      _loc12_ = _loc12_ << _loc4_;
      _loc1_ = _loc12_ | _loc1_;
      si32(_loc1_,_msgbox + 4);
      _loc12_ = li32(_msgbox + 8);
      _loc1_ = int(_loc12_ >>> _loc8_);
      _loc12_ = _loc12_ << _loc4_;
      _loc1_ = _loc12_ | _loc1_;
      si32(_loc1_,_msgbox + 8);
      _loc12_ = li32(_msgbox + 12);
      _loc1_ = int(_loc12_ >>> _loc8_);
      _loc12_ = _loc12_ << _loc4_;
      _loc1_ = _loc12_ | _loc1_;
      si32(_loc1_,_msgbox + 12);
      _loc12_ = li32(_msgbox + 16);
      _loc1_ = int(_loc12_ >>> _loc8_);
      _loc12_ = _loc12_ << _loc4_;
      _loc1_ = _loc12_ | _loc1_;
      si32(_loc1_,_msgbox + 16);
      _loc12_ = li32(_msgbox + 20);
      _loc1_ = int(_loc12_ >>> _loc8_);
      _loc12_ = _loc12_ << _loc4_;
      _loc1_ = _loc12_ | _loc1_;
      si32(_loc1_,_msgbox + 20);
      _loc12_ = li32(_msgbox + 24);
      _loc1_ = int(_loc12_ >>> _loc8_);
      _loc12_ = _loc12_ << _loc4_;
      _loc1_ = _loc12_ | _loc1_;
      si32(_loc1_,_msgbox + 24);
      _loc1_ = li32(_msgbox + 28);
      _loc8_ = int(_loc1_ >>> _loc8_);
      _loc1_ = _loc1_ << _loc4_;
      _loc8_ = _loc1_ | _loc8_;
      si32(_loc8_,_msgbox + 28);
      _loc3_ = _loc2_;
      ESP = _loc3_;
   }
}
