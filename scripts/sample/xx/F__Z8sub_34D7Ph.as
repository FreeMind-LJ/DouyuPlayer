package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__Z8sub_34D7Ph() : void
   {
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc10_:int = 0;
      var _loc11_:* = 0;
      var _loc5_:* = 0;
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = 0;
      _loc4_ = li32(_block_len);
      _loc5_ = _loc3_;
      if(_loc4_ >= 1)
      {
         do
         {
            var _loc6_:* = int(_keybox + _loc5_);
            _loc6_ = li8(_loc6_);
            _loc6_ = int(_loc6_ >>> 7);
            _loc3_ = int(_loc6_ + _loc3_);
            _loc5_ = int(_loc5_ + 1);
         }
         while(_loc5_ < _loc4_);
         
      }
      var _loc7_:* = li32(_msgbox);
      var _loc8_:* = int(_loc7_ >>> _loc3_);
      _loc6_ = int(32 - _loc3_);
      _loc7_ = _loc7_ << _loc6_;
      _loc5_ = _loc8_ | _loc7_;
      si32(_loc5_,_msgbox);
      _loc7_ = li32(_msgbox + 4);
      _loc8_ = _loc7_ << _loc6_;
      _loc7_ = int(_loc7_ >>> _loc3_);
      _loc8_ = _loc7_ | _loc8_;
      si32(_loc8_,_msgbox + 4);
      _loc7_ = li32(_msgbox + 8);
      _loc8_ = _loc7_ << _loc6_;
      _loc7_ = int(_loc7_ >>> _loc3_);
      _loc8_ = _loc7_ | _loc8_;
      si32(_loc8_,_msgbox + 8);
      _loc7_ = li32(_msgbox + 12);
      _loc8_ = _loc7_ << _loc6_;
      _loc7_ = int(_loc7_ >>> _loc3_);
      _loc8_ = _loc7_ | _loc8_;
      si32(_loc8_,_msgbox + 12);
      _loc7_ = li32(_msgbox + 16);
      _loc8_ = _loc7_ << _loc6_;
      _loc7_ = int(_loc7_ >>> _loc3_);
      _loc8_ = _loc7_ | _loc8_;
      si32(_loc8_,_msgbox + 16);
      _loc7_ = li32(_msgbox + 20);
      _loc8_ = _loc7_ << _loc6_;
      _loc7_ = int(_loc7_ >>> _loc3_);
      _loc8_ = _loc7_ | _loc8_;
      si32(_loc8_,_msgbox + 20);
      _loc7_ = li32(_msgbox + 24);
      _loc8_ = _loc7_ << _loc6_;
      _loc7_ = int(_loc7_ >>> _loc3_);
      _loc8_ = _loc7_ | _loc8_;
      si32(_loc8_,_msgbox + 24);
      _loc8_ = li32(_msgbox + 28);
      _loc6_ = _loc8_ << _loc6_;
      _loc8_ = int(_loc8_ >>> _loc3_);
      _loc6_ = _loc8_ | _loc6_;
      si32(_loc6_,_msgbox + 28);
      if(_loc4_ >= 1)
      {
         _loc9_ = 1;
         _loc3_ = 0;
         while(true)
         {
            _loc5_ = _loc5_ & 1;
            _loc10_ = _loc5_ + _loc3_;
            if(_loc9_ < _loc4_)
            {
               _loc6_ = int(_msgbox + _loc9_);
               _loc5_ = li8(_loc6_);
               _loc9_ = int(_loc9_ + 1);
               _loc3_ = _loc10_;
               continue;
            }
            break;
         }
         if(_loc10_ >= 1)
         {
            _loc3_ = int(_loc3_ + _loc5_);
            _loc10_ = 0 - _loc4_;
            _loc5_ = int(_msgbox + (int(_loc4_ + -1)));
            do
            {
               _loc11_ = li8(_loc5_);
               _loc9_ = _loc10_;
               if(_loc4_ >= 1)
               {
                  do
                  {
                     _loc6_ = int(_msgbox - _loc9_);
                     _loc8_ = li8(_loc6_ - 2);
                     si8(_loc8_,_loc6_ - 1);
                     _loc9_ = int(_loc9_ + 1);
                  }
                  while(_loc9_ != 0);
                  
               }
               si8(_loc11_,_msgbox);
               _loc3_ = int(_loc3_ + -1);
            }
            while(_loc3_ != 0);
            
         }
      }
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
