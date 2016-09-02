package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_dtoa_dmisc_2E_o_3A_3A1AE1C3_2D_4926_2D_4D3E_2D_9205_2D_26C127AFFDD0.*;
   
   public function F___quorem_D2A() : void
   {
      var _loc2_:* = 0;
      var _loc24_:* = 0;
      var _loc9_:* = 0;
      var _loc14_:* = 0;
      var _loc18_:int = 0;
      var _loc23_:* = 0;
      var _loc12_:int = 0;
      var _loc13_:* = 0;
      var _loc8_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:int = 0;
      var _loc6_:int = 0;
      var _loc15_:* = 0;
      var _loc16_:* = 0;
      var _loc17_:int = 0;
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:int = 0;
      var _loc25_:* = 0;
      var _loc21_:int = 0;
      var _loc22_:int = 0;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      _loc9_ = li32(_loc2_ + 4);
      _loc25_ = li32(_loc9_ + 16);
      _loc24_ = li32(_loc2_);
      _loc23_ = li32(_loc24_ + 16);
      _loc22_ = 0;
      if(_loc23_ >= _loc25_)
      {
         _loc21_ = _loc25_ + -1;
         var _loc20_:* = _loc21_ << 2;
         _loc23_ = int(_loc24_ + _loc20_);
         _loc20_ = int(_loc9_ + _loc20_);
         var _loc19_:* = li32(_loc20_ + 20);
         _loc19_ = int(_loc19_ + 1);
         _loc22_ = uint(li32(_loc23_ + 20)) / uint(_loc19_);
         _loc18_ = _loc20_ + 20;
         if(_loc22_ != 0)
         {
            _loc6_ = _loc9_ + 20;
            _loc14_ = int(_loc24_ + 20);
            _loc15_ = _loc14_;
            _loc16_ = 0;
            _loc17_ = 0;
            _loc10_ = 0;
            _loc11_ = 0;
            do
            {
               _loc1_ = int(_loc1_ - 16);
               si32(_loc22_,_loc1_ + 8);
               si32(0,_loc1_ + 4);
               si32(0,_loc1_ + 12);
               _loc23_ = li32(_loc6_);
               si32(_loc23_,_loc1_);
               ESP = _loc1_;
               F___muldi3();
               _loc1_ = int(_loc1_ + 16);
               _loc23_ = int(eax);
               _loc12_ = edx;
               _loc13_ = int(_loc23_ + _loc10_);
               _loc8_ = li32(_loc15_);
               _loc7_ = _loc8_ - _loc13_;
               _loc20_ = int(_loc7_ - _loc16_);
               si32(_loc20_,_loc15_);
               _loc5_ = 1;
               _loc3_ = _loc5_;
               if(uint(_loc13_) >= uint(_loc23_))
               {
                  _loc3_ = 0;
               }
               _loc4_ = _loc5_;
               if(uint(_loc13_) >= uint(_loc10_))
               {
                  _loc4_ = _loc3_;
               }
               _loc3_ = _loc5_;
               if(uint(_loc7_) >= uint(_loc16_))
               {
                  _loc3_ = 0;
               }
               if(uint(_loc8_) >= uint(_loc13_))
               {
                  _loc5_ = 0;
               }
               _loc23_ = int(_loc12_ + _loc11_);
               _loc10_ = _loc23_ + _loc4_;
               _loc23_ = int(0 - _loc5_);
               _loc23_ = int(_loc23_ - _loc17_);
               _loc23_ = int(_loc23_ - _loc3_);
               _loc16_ = _loc23_ & 1;
               _loc6_ = _loc6_ + 4;
               _loc15_ = int(_loc15_ + 4);
               _loc17_ = 0;
               _loc11_ = 0;
            }
            while(uint(_loc6_) <= uint(_loc18_));
            
            _loc13_ = _loc25_ << 2;
            _loc23_ = int(_loc24_ + _loc13_);
            _loc23_ = li32(_loc23_ + 16);
            if(_loc23_ == 0)
            {
               _loc23_ = int(_loc13_ + _loc24_);
               _loc21_ = _loc23_ + 12;
               _loc13_ = -1;
               while(uint(_loc21_) > uint(_loc14_))
               {
                  _loc23_ = li32(_loc21_);
                  if(_loc23_ != 0)
                  {
                     break;
                  }
                  _loc21_ = _loc21_ + -4;
                  _loc13_ = int(_loc13_ + -1);
               }
               _loc21_ = _loc25_ + _loc13_;
               si32(_loc21_,_loc24_ + 16);
            }
         }
         _loc1_ = int(_loc1_ - 16);
         si32(_loc9_,_loc1_ + 4);
         si32(_loc24_,_loc1_);
         ESP = _loc1_;
         F___cmp_D2A();
         _loc1_ = int(_loc1_ + 16);
         _loc23_ = int(eax);
         if(_loc23_ >= 0)
         {
            _loc25_ = int(_loc9_ + 20);
            _loc9_ = int(_loc24_ + 20);
            _loc14_ = _loc9_;
            _loc13_ = 0;
            _loc12_ = 0;
            _loc16_ = 0;
            _loc17_ = 0;
            do
            {
               _loc20_ = li32(_loc25_);
               _loc8_ = int(_loc20_ + _loc16_);
               _loc11_ = li32(_loc14_);
               _loc10_ = _loc11_ - _loc8_;
               _loc23_ = int(_loc10_ - _loc13_);
               si32(_loc23_,_loc14_);
               _loc7_ = 1;
               _loc5_ = _loc7_;
               if(uint(_loc8_) >= uint(_loc20_))
               {
                  _loc5_ = 0;
               }
               _loc4_ = _loc7_;
               if(uint(_loc8_) >= uint(_loc16_))
               {
                  _loc4_ = _loc5_;
               }
               _loc5_ = _loc7_;
               if(uint(_loc10_) >= uint(_loc13_))
               {
                  _loc5_ = 0;
               }
               if(uint(_loc11_) >= uint(_loc8_))
               {
                  _loc7_ = 0;
               }
               _loc16_ = int(_loc17_ + _loc4_);
               _loc23_ = int(0 - _loc7_);
               _loc23_ = int(_loc23_ - _loc12_);
               _loc23_ = int(_loc23_ - _loc5_);
               _loc13_ = _loc23_ & 1;
               _loc25_ = int(_loc25_ + 4);
               _loc14_ = int(_loc14_ + 4);
               _loc12_ = 0;
               _loc17_ = 0;
            }
            while(uint(_loc25_) <= uint(_loc18_));
            
            _loc25_ = _loc21_ << 2;
            _loc23_ = int(_loc24_ + _loc25_);
            _loc22_ = _loc22_ + 1;
            if(li32(_loc23_ + 20) == 0)
            {
               _loc18_ = _loc24_ + 16;
               while(true)
               {
                  _loc23_ = int(_loc18_ + _loc25_);
                  if(uint(_loc23_) > uint(_loc9_))
                  {
                     _loc23_ = int(_loc18_ + (_loc21_ << 2));
                     _loc23_ = li32(_loc23_);
                     if(_loc23_ != 0)
                     {
                        break;
                     }
                     _loc25_ = int(_loc25_ + -4);
                     _loc21_ = _loc21_ + -1;
                     continue;
                  }
                  break;
               }
               si32(_loc21_,_loc24_ + 16);
            }
         }
      }
      eax = _loc22_;
      _loc1_ = _loc2_;
      ESP = _loc1_;
   }
}
