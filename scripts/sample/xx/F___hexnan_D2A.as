package sample.xx
{
   import sample.xx_dtoa_hexnan_2E_o_3A_F030C76E_2D_4C55_2D_4160_2D_A266_2D_4466DC478838.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___hexnan_D2A() : void
   {
      var _loc10_:* = 0;
      var _loc18_:* = 0;
      var _loc17_:* = 0;
      var _loc16_:int = 0;
      var _loc15_:int = 0;
      var _loc4_:* = 0;
      var _loc7_:int = 0;
      var _loc8_:* = 0;
      var _loc13_:* = 0;
      var _loc2_:int = 0;
      var _loc20_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:* = 0;
      var _loc22_:* = 0;
      var _loc14_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc21_:* = 0;
      var _loc19_:* = 0;
      var _loc5_:* = int(ESP);
      _loc10_ = _loc5_;
      var _loc6_:* = li8(___hexdig_D2A + 48);
      if(_loc6_ == 0)
      {
         ESP = _loc5_;
         F___hexdig_init_D2A();
      }
      _loc6_ = li32(_loc10_ + 4);
      _loc22_ = li32(_loc6_);
      _loc21_ = _loc22_ & 31;
      _loc20_ = 1;
      if(_loc21_ == 0)
      {
         _loc20_ = 0;
      }
      _loc19_ = li32(_loc10_ + 8);
      _loc18_ = li32(_loc10_);
      _loc20_ = _loc20_ & 1;
      _loc17_ = _loc22_ >> 5;
      _loc6_ = int(_loc17_ + _loc20_);
      _loc16_ = _loc6_ + -1;
      _loc6_ = _loc16_ << 2;
      _loc15_ = _loc19_ + _loc6_;
      si32(0,_loc15_);
      _loc1_ = li32(_loc18_);
      _loc6_ = li8(_loc1_ + 1);
      _loc11_ = 0;
      _loc12_ = _loc15_;
      _loc13_ = 0;
      _loc14_ = 0;
      if(_loc6_ == 48)
      {
         _loc6_ = li8(_loc1_ + 2);
         _loc6_ = _loc6_ | 32;
         _loc11_ = 0;
         _loc12_ = _loc15_;
         _loc13_ = _loc11_;
         _loc14_ = _loc11_;
         if((_loc6_ & 255) == 120)
         {
            _loc1_ = int(_loc1_ + 2);
            _loc11_ = 0;
            _loc12_ = _loc15_;
            _loc13_ = _loc11_;
            _loc14_ = _loc11_;
         }
      }
      loop0:
      while(true)
      {
         _loc2_ = _loc1_ + 1;
         _loc9_ = _loc14_ << 2;
         _loc7_ = _loc14_ + 1;
         _loc22_ = 0;
         while(true)
         {
            _loc8_ = _loc22_;
            _loc6_ = int(_loc2_ + _loc8_);
            _loc22_ = li8(_loc6_);
            if(_loc22_ != 0)
            {
               _loc6_ = int(___hexdig_D2A + _loc22_);
               _loc4_ = li8(_loc6_);
               if(_loc4_ != 0)
               {
                  _loc6_ = int(_loc7_ + _loc8_);
                  if(_loc6_ >= 9)
                  {
                     _loc22_ = int(_loc8_ + 1);
                     _loc9_ = int(_loc9_ + 4);
                     if(uint(_loc12_) > uint(_loc19_))
                     {
                        _loc11_ = 0;
                        si32(_loc11_,_loc12_ - 4);
                        _loc12_ = int(_loc12_ + -4);
                        _loc14_ = 1;
                     }
                     else
                     {
                        continue;
                     }
                  }
                  else
                  {
                     _loc6_ = int(_loc14_ + _loc8_);
                     _loc14_ = int(_loc6_ + 1);
                  }
                  var _loc3_:* = _loc4_ & 15;
                  _loc6_ = _loc11_ << 4;
                  _loc11_ = _loc6_ | _loc3_;
                  si32(_loc11_,_loc12_);
                  _loc6_ = int(_loc1_ + _loc8_);
                  _loc1_ = int(_loc6_ + 1);
                  _loc6_ = int(_loc13_ + _loc8_);
                  _loc13_ = int(_loc6_ + 1);
                  continue loop0;
               }
               break;
            }
            break;
         }
         _loc13_ = int(_loc13_ + _loc8_);
         if(_loc13_ != 0)
         {
            if(uint(_loc12_) < uint(_loc15_))
            {
               _loc6_ = int(_loc14_ + _loc8_);
               if(_loc6_ <= 7)
               {
                  _loc2_ = 32 - _loc9_;
                  _loc14_ = _loc12_;
                  do
                  {
                     _loc6_ = li32(_loc14_ + 4);
                     _loc3_ = _loc6_ << _loc9_;
                     _loc3_ = _loc3_ | _loc11_;
                     si32(_loc3_,_loc14_);
                     _loc11_ = int(_loc6_ >>> _loc2_);
                     si32(_loc11_,_loc14_ + 4);
                     _loc14_ = int(_loc14_ + 4);
                  }
                  while(uint(_loc14_) < uint(_loc15_));
                  
               }
            }
         }
         _loc6_ = int(_loc1_ + _loc8_);
         _loc8_ = int(_loc6_ + 2);
         _loc9_ = int(_loc6_ + 1);
         _loc11_ = 0;
         _loc1_ = _loc19_;
         if(uint(_loc12_) > uint(_loc19_))
         {
            do
            {
               _loc6_ = li32(_loc12_);
               si32(_loc6_,_loc1_);
               _loc12_ = int(_loc12_ + 4);
               _loc1_ = int(_loc1_ + 4);
               _loc11_ = int(_loc11_ + 1);
            }
            while(uint(_loc12_) <= uint(_loc15_));
            
            while(true)
            {
               _loc6_ = _loc11_ << 2;
               _loc6_ = int(_loc19_ + _loc6_);
               si32(0,_loc6_);
               _loc11_ = int(_loc11_ + 1);
               if(_loc11_ <= _loc16_)
               {
                  continue;
               }
               break;
            }
         }
         else if(_loc21_ != 0)
         {
            _loc6_ = li32(_loc15_) & int(-1 >>> int(32 - _loc21_));
            si32(_loc6_,_loc15_);
         }
         if(_loc13_ != 0)
         {
            _loc6_ = int(_loc20_ + _loc17_);
            _loc6_ = _loc6_ << 2;
            _loc21_ = int(4 - _loc6_);
            _loc6_ = int(_loc6_ + _loc19_);
            _loc19_ = int(_loc6_ + -4);
            while(true)
            {
               _loc6_ = li32(_loc19_);
               if(_loc6_ == 0)
               {
                  if(_loc21_ == 0)
                  {
                     si32(1,_loc19_);
                     break;
                  }
                  _loc21_ = int(_loc21_ + 4);
                  _loc19_ = int(_loc19_ + -4);
                  continue;
               }
               break;
            }
         }
         if(_loc22_ != 0)
         {
            if(_loc22_ != 41)
            {
               _loc21_ = li32(__CurrentRuneLocale);
               _loc19_ = li32(___mb_sb_limit);
               _loc9_ = _loc8_;
               while(true)
               {
                  _loc20_ = li8(_loc9_);
                  if(_loc20_ != 0)
                  {
                     if(_loc20_ == 41)
                     {
                        break;
                     }
                     _loc22_ = 1;
                     if(_loc19_ > _loc20_)
                     {
                        _loc6_ = int(_loc21_ + (_loc20_ << 2));
                        _loc6_ = li8(_loc6_ + 53);
                        _loc22_ = 1;
                        if((_loc6_ & 5) != 0)
                        {
                           _loc22_ = 0;
                        }
                     }
                     _loc9_ = int(_loc9_ + 1);
                     _loc6_ = _loc22_ & 1;
                     if(_loc6_ != 0)
                     {
                        if(_loc20_ == 95)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        continue;
                     }
                  }
                  break;
               }
            }
            _loc6_ = int(_loc9_ + 1);
            si32(_loc6_,_loc18_);
         }
         eax = 5;
         _loc5_ = _loc10_;
         ESP = _loc5_;
         return;
      }
   }
}
