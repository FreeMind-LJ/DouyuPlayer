package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__Z8sub_34D9v() : void
   {
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc6_:int = 0;
      var _loc5_:int = 0;
      var _loc8_:int = 0;
      var _loc7_:int = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(_block_len);
      if(_loc3_ >= 1)
      {
         var _loc4_:int = _loc3_ + _keybox;
         _loc5_ = _loc4_ + -1;
         _loc6_ = _loc3_ + -3;
         _loc7_ = 0;
         _loc8_ = 2;
         while(true)
         {
            _loc4_ = _msgbox - _loc7_;
            var _loc9_:* = li8(_loc4_);
            var _loc10_:* = int(_loc5_ + _loc7_);
            _loc10_ = li8(_loc10_);
            _loc9_ = _loc10_ ^ _loc9_;
            si8(_loc9_,_loc4_);
            if(_loc8_ < _loc3_)
            {
               _loc8_ = _loc8_ + 2;
               _loc7_ = _loc7_ + -2;
               if(int(_loc6_ + _loc7_) <= -1)
               {
                  break;
               }
               continue;
            }
            break;
         }
         _loc7_ = 1;
         if(_loc3_ >= 2)
         {
            do
            {
               _loc4_ = _msgbox + _loc7_;
               _loc9_ = li8(_loc4_);
               _loc10_ = int(_keybox + _loc7_);
               _loc10_ = li8(_loc10_);
               _loc9_ = _loc10_ ^ _loc9_;
               si8(_loc9_,_loc4_);
               _loc7_ = _loc7_ + 2;
            }
            while(_loc7_ < _loc3_);
            
         }
      }
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
