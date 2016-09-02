package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN10IDataCache10hex_to_binEPS_PKS_() : void
   {
      var _loc21_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = 0;
      var _loc5_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:int = 0;
      var _loc3_:* = 0;
      var _loc14_:int = 0;
      var _loc12_:* = 0;
      var _loc9_:int = 0;
      var _loc18_:* = 0;
      var _loc16_:int = 0;
      var _loc1_:* = int(ESP);
      _loc21_ = _loc1_;
      _loc2_ = li32(_loc21_ + 4);
      _loc3_ = li32(_loc2_);
      _loc5_ = li32(_loc3_ + 32);
      _loc1_ = int(_loc1_ - 16);
      si32(_loc2_,_loc1_);
      ESP = _loc1_;
      ptr2fun[_loc5_]();
      _loc1_ = int(_loc1_ + 16);
      _loc3_ = int(eax);
      if(_loc3_ != 0)
      {
         _loc7_ = li32(_loc21_);
         _loc9_ = 0;
         do
         {
            _loc3_ = li32(_loc7_);
            _loc11_ = li32(_loc3_ + 12);
            _loc3_ = li32(_loc2_);
            var _loc13_:* = li32(_loc3_ + 20);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc9_,_loc1_ + 4);
            si32(_loc2_,_loc1_);
            ESP = _loc1_;
            ptr2fun[_loc13_]();
            _loc1_ = int(_loc1_ + 16);
            var _loc15_:int = eax;
            _loc3_ = li32(_loc2_);
            var _loc17_:* = li32(_loc3_ + 20);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc9_,_loc1_ + 4);
            si32(_loc2_,_loc1_);
            ESP = _loc1_;
            ptr2fun[_loc17_]();
            _loc1_ = int(_loc1_ + 16);
            var _loc19_:int = eax;
            _loc3_ = li32(_loc2_);
            var _loc6_:* = li32(_loc3_ + 20);
            _loc1_ = int(_loc1_ - 16);
            var _loc4_:int = _loc9_ + 1;
            si32(_loc4_,_loc1_ + 4);
            si32(_loc2_,_loc1_);
            ESP = _loc1_;
            ptr2fun[_loc6_]();
            _loc1_ = int(_loc1_ + 16);
            _loc10_ = eax;
            _loc3_ = li32(_loc2_);
            var _loc8_:* = li32(_loc3_ + 20);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc4_,_loc1_ + 4);
            si32(_loc2_,_loc1_);
            ESP = _loc1_;
            ptr2fun[_loc8_]();
            _loc1_ = int(_loc1_ + 16);
            _loc14_ = eax;
            _loc1_ = int(_loc1_ - 16);
            si32(_loc7_,_loc1_);
            _loc12_ = _loc19_ << 4;
            _loc18_ = int(_loc12_ + -112);
            if(uint(_loc15_) <= 96)
            {
               _loc18_ = _loc12_;
            }
            _loc16_ = -87;
            if(uint(_loc10_) <= 96)
            {
               _loc16_ = -48;
            }
            _loc3_ = int(_loc14_ + _loc16_);
            _loc3_ = _loc3_ | _loc18_;
            _loc3_ = _loc3_ & 255;
            si32(_loc3_,_loc1_ + 4);
            ESP = _loc1_;
            ptr2fun[_loc11_]();
            _loc1_ = int(_loc1_ + 16);
            _loc3_ = li32(_loc2_);
            var _loc20_:* = li32(_loc3_ + 32);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc2_,_loc1_);
            ESP = _loc1_;
            ptr2fun[_loc20_]();
            _loc9_ = _loc9_ + 2;
            _loc1_ = int(_loc1_ + 16);
            _loc3_ = int(eax);
         }
         while(uint(_loc9_) < uint(_loc3_));
         
      }
      _loc1_ = _loc21_;
      ESP = _loc1_;
   }
}
