package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___diff_D2A() : void
   {
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc15_:* = 0;
      var _loc17_:* = 0;
      var _loc1_:int = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:int = 0;
      var _loc16_:* = 0;
      var _loc10_:int = 0;
      var _loc2_:* = 0;
      var _loc9_:int = 0;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc4_ = li32(_loc5_ + 4);
      _loc17_ = li32(_loc4_ + 16);
      _loc16_ = li32(_loc5_);
      _loc15_ = li32(_loc16_ + 16);
      if(_loc15_ == _loc17_)
      {
         var _loc14_:* = _loc17_ << 2;
         var _loc13_:* = int(_loc14_ + _loc4_);
         _loc12_ = int(_loc13_ + 16);
         _loc14_ = int(_loc14_ + _loc16_);
         _loc11_ = _loc14_ + 20;
         _loc10_ = _loc16_ + 20;
         while(true)
         {
            _loc17_ = li32(_loc12_);
            _loc15_ = li32(_loc11_ - 4);
            if(_loc15_ != _loc17_)
            {
               _loc11_ = -1;
               if(uint(_loc15_) >= uint(_loc17_))
               {
                  _loc11_ = 1;
               }
            }
            else
            {
               _loc12_ = int(_loc12_ + -4);
               _loc11_ = _loc11_ + -4;
               if(uint(_loc11_) <= uint(_loc10_))
               {
                  _loc3_ = int(_loc3_ - 16);
                  si32(0,_loc3_);
                  ESP = _loc3_;
                  F___Balloc_D2A();
                  _loc3_ = int(_loc3_ + 16);
                  _loc15_ = int(eax);
                  si32(1,_loc15_ + 16);
                  si32(0,_loc15_ + 20);
                  break;
               }
               continue;
            }
         }
         eax = _loc15_;
         _loc3_ = _loc5_;
         ESP = _loc3_;
         return;
      }
      _loc11_ = _loc15_ - _loc17_;
      _loc12_ = _loc4_;
      if(_loc11_ >= 0)
      {
         _loc12_ = _loc16_;
      }
      _loc14_ = li32(_loc12_ + 4);
      _loc3_ = int(_loc3_ - 16);
      si32(_loc14_,_loc3_);
      ESP = _loc3_;
      F___Balloc_D2A();
      _loc14_ = int(_loc11_ >>> 31);
      _loc3_ = int(_loc3_ + 16);
      _loc15_ = int(eax);
      si32(_loc14_,_loc15_ + 12);
      if(_loc11_ >= 0)
      {
         _loc16_ = _loc4_;
      }
      _loc14_ = li32(_loc16_ + 16);
      _loc14_ = _loc14_ << 2;
      _loc14_ = int(_loc16_ + _loc14_);
      _loc1_ = _loc14_ + 20;
      _loc4_ = li32(_loc12_ + 16);
      _loc11_ = 20;
      _loc17_ = 0;
      _loc10_ = 0;
      do
      {
         _loc14_ = int(_loc16_ + _loc11_);
         _loc6_ = li32(_loc14_);
         _loc14_ = int(_loc12_ + _loc11_);
         _loc7_ = li32(_loc14_);
         var _loc8_:int = _loc7_ - _loc6_;
         _loc13_ = int(_loc8_ - _loc17_);
         _loc14_ = int(_loc15_ + _loc11_);
         si32(_loc13_,_loc14_);
         _loc9_ = 1;
         _loc2_ = _loc9_;
         if(uint(_loc8_) >= uint(_loc17_))
         {
            _loc2_ = 0;
         }
         if(uint(_loc7_) >= uint(_loc6_))
         {
            _loc9_ = 0;
         }
         _loc14_ = int(0 - _loc9_);
         _loc14_ = int(_loc14_ - _loc10_);
         _loc14_ = int(_loc14_ - _loc2_);
         _loc17_ = _loc14_ & 1;
         _loc11_ = _loc11_ + 4;
         _loc14_ = int(_loc16_ + _loc11_);
         _loc10_ = 0;
      }
      while(uint(_loc14_) < uint(_loc1_));
      
      _loc16_ = int(_loc15_ + _loc11_);
      _loc11_ = _loc12_ + _loc11_;
      _loc14_ = int(_loc12_ + (_loc4_ << 2));
      _loc2_ = int(_loc14_ + 20);
      _loc12_ = 0;
      if(uint(_loc11_) < uint(_loc2_))
      {
         do
         {
            _loc14_ = li32(_loc11_);
            _loc13_ = int(_loc14_ - _loc17_);
            si32(_loc13_,_loc16_);
            _loc10_ = 1;
            if(uint(_loc14_) >= uint(_loc17_))
            {
               _loc10_ = 0;
            }
            _loc14_ = int(0 - _loc12_);
            _loc14_ = int(_loc14_ - _loc10_);
            _loc17_ = _loc14_ & 1;
            _loc11_ = _loc11_ + 4;
            _loc16_ = int(_loc16_ + 4);
            _loc12_ = 0;
         }
         while(uint(_loc11_) < uint(_loc2_));
         
      }
      _loc14_ = li32(_loc16_ - 4);
      if(_loc14_ == 0)
      {
         _loc16_ = int(_loc16_ + -8);
         do
         {
            _loc14_ = int(_loc16_ + -4);
            _loc4_ = int(_loc4_ + -1);
            _loc13_ = li32(_loc16_);
            _loc16_ = _loc14_;
         }
         while(_loc13_ == 0);
         
      }
      si32(_loc4_,_loc15_ + 16);
      §§goto(addr465);
   }
}
