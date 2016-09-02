package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_printf_hexdump_2E_o_3A_C9339EEF_2D_38B6_2D_4FF2_2D_8275_2D_0CB9FC4D0AB6.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F___printf_render_hexdump() : void
   {
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc21_:* = 0;
      var _loc14_:int = 0;
      var _loc18_:int = 0;
      var _loc11_:int = 0;
      var _loc23_:* = 0;
      var _loc12_:int = 0;
      var _loc22_:* = 0;
      var _loc24_:* = 0;
      var _loc16_:* = 0;
      var _loc4_:* = 0;
      var _loc15_:* = 0;
      var _loc20_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = 0;
      var _loc7_:* = 0;
      var _loc9_:* = 0;
      var _loc17_:int = 0;
      var _loc13_:* = 0;
      var _loc19_:int = 0;
      var _loc5_:* = int(ESP);
      _loc10_ = _loc5_;
      _loc5_ = int(_loc5_ - 112);
      _loc6_ = li32(_loc10_ + 4);
      _loc24_ = li32(_loc6_ + 4);
      _loc23_ = int(_loc24_ + -1);
      _loc22_ = _loc24_;
      if(uint(_loc23_) >= 15)
      {
         _loc22_ = 16;
      }
      _loc21_ = li32(_loc10_ + 8);
      _loc23_ = li32(_loc21_ + 4);
      _loc20_ = li32(_loc23_);
      _loc19_ = 0;
      if(_loc20_ != 0)
      {
         _loc18_ = 0 - _loc24_;
         if(uint(_loc18_) <= 4294967280)
         {
            _loc24_ = 16;
         }
         _loc16_ = _loc18_;
         if(uint(_loc18_) <= 4294967280)
         {
            _loc16_ = -16;
         }
         _loc1_ = li32(_loc10_);
         _loc11_ = 0 - _loc16_;
         _loc12_ = _loc10_ - 100;
         _loc14_ = _loc12_ + 1;
         _loc23_ = li32(_loc21_);
         _loc15_ = li32(_loc23_);
         _loc19_ = 0;
         _loc4_ = _loc19_;
         do
         {
            _loc21_ = _loc20_;
            _loc23_ = li32(_loc6_ + 40);
            _loc7_ = _loc12_;
            if(_loc23_ != 0)
            {
               _loc5_ = int(_loc5_ - 16);
               si32(_loc4_,_loc5_ + 8);
               si32(L__2E_str,_loc5_ + 4);
               var _loc8_:int = _loc10_ - 100;
               si32(_loc8_,_loc5_);
               ESP = _loc5_;
               F_sprintf();
               _loc5_ = int(_loc5_ + 16);
               _loc7_ = int(_loc8_ + int(eax));
            }
            _loc20_ = 1;
            _loc9_ = 0;
            _loc3_ = _loc20_;
            if(_loc21_ == _loc9_)
            {
               _loc3_ = _loc9_;
            }
            if(_loc22_ == _loc9_)
            {
               _loc20_ = _loc9_;
            }
            _loc23_ = _loc20_ & _loc3_;
            _loc3_ = _loc23_ & 1;
            if(_loc3_ != 0)
            {
               _loc20_ = int(0 - _loc21_);
               _loc2_ = _loc20_;
               if(uint(_loc20_) <= uint(_loc18_))
               {
                  _loc2_ = _loc18_;
               }
               _loc9_ = int(0 - _loc2_);
               if(uint(_loc2_) <= 4294967280)
               {
                  _loc9_ = 16;
               }
               if(uint(_loc20_) <= uint(_loc18_))
               {
                  _loc20_ = _loc18_;
               }
               _loc2_ = _loc20_ ^ -1;
               if(uint(_loc2_) <= 15)
               {
                  _loc2_ = 15;
               }
               _loc23_ = int(15 - _loc20_);
               _loc2_ = int(_loc23_ - _loc2_);
               _loc20_ = _loc15_;
               do
               {
                  _loc23_ = li8(_loc20_);
                  _loc5_ = int(_loc5_ - 16);
                  si32(_loc23_,_loc5_ + 8);
                  si32(L__2E_str1,_loc5_ + 4);
                  si32(_loc7_,_loc5_);
                  ESP = _loc5_;
                  F_sprintf();
                  _loc5_ = int(_loc5_ + 16);
                  _loc23_ = int(eax);
                  _loc7_ = int(_loc7_ + _loc23_);
                  _loc20_ = int(_loc20_ + 1);
                  _loc2_ = int(_loc2_ + -1);
               }
               while(_loc2_ != 0);
               
            }
            _loc23_ = li32(_loc6_ + 28);
            if(_loc23_ != 0)
            {
               _loc20_ = _loc7_;
               if(uint(_loc9_) < uint(_loc22_))
               {
                  _loc2_ = int(_loc11_ - _loc9_);
                  _loc23_ = int(_loc16_ + _loc9_);
                  _loc20_ = int(_loc7_ + int(_loc23_ * -3));
                  do
                  {
                     si32(2105376,_loc7_);
                     _loc7_ = int(_loc7_ + 3);
                     _loc2_ = int(_loc2_ + -1);
                  }
                  while(_loc2_ != 0);
                  
               }
               si32(8134688,_loc20_);
               _loc9_ = int(_loc20_ + 3);
               _loc7_ = 0;
               if(_loc3_ != 0)
               {
                  _loc3_ = int(0 - _loc21_);
                  if(uint(_loc3_) <= uint(_loc18_))
                  {
                     _loc3_ = _loc18_;
                  }
                  _loc7_ = int(0 - _loc3_);
                  if(uint(_loc3_) <= 4294967280)
                  {
                     _loc7_ = 16;
                  }
                  _loc9_ = _loc3_ ^ -1;
                  if(uint(_loc9_) <= 15)
                  {
                     _loc9_ = 15;
                  }
                  _loc23_ = int(15 - _loc3_);
                  _loc17_ = _loc23_ - _loc9_;
                  _loc9_ = int(_loc20_ + 3);
                  _loc2_ = _loc15_;
                  do
                  {
                     _loc3_ = li8(_loc2_);
                     _loc23_ = int(_loc3_ + -32);
                     _loc23_ = _loc23_ & 255;
                     _loc13_ = 46;
                     if(uint(_loc23_) <= 94)
                     {
                        _loc13_ = _loc3_;
                     }
                     si8(_loc13_,_loc9_);
                     _loc9_ = int(_loc9_ + 1);
                     _loc2_ = int(_loc2_ + 1);
                     _loc17_ = _loc17_ + -1;
                  }
                  while(_loc17_ != 0);
                  
                  _loc23_ = int(_loc7_ + _loc20_);
                  _loc9_ = int(_loc23_ + 3);
               }
               if(uint(_loc7_) < uint(_loc22_))
               {
                  _loc5_ = int(_loc5_ - 16);
                  si32(32,_loc5_ + 4);
                  _loc23_ = int(_loc24_ - _loc7_);
                  si32(_loc23_,_loc5_ + 8);
                  si32(_loc9_,_loc5_);
                  _loc9_ = int(_loc9_ + _loc23_);
                  ESP = _loc5_;
                  Fmemset();
                  _loc5_ = int(_loc5_ + 16);
               }
               si8(124,_loc9_);
               _loc7_ = int(_loc9_ + 1);
            }
            _loc3_ = _loc22_;
            if(uint(_loc22_) >= uint(_loc21_))
            {
               _loc3_ = _loc21_;
            }
            if(_loc21_ != _loc3_)
            {
               si8(10,_loc7_);
               _loc7_ = int(_loc7_ + 1);
            }
            _loc4_ = int(_loc4_ + _loc3_);
            _loc20_ = int(_loc21_ - _loc3_);
            _loc15_ = int(_loc15_ + _loc3_);
            _loc5_ = int(_loc5_ - 16);
            si32(_loc1_,_loc5_);
            si32(_loc14_,_loc5_ + 4);
            _loc23_ = int(_loc7_ - _loc14_);
            si32(_loc23_,_loc5_ + 8);
            ESP = _loc5_;
            F___printf_puts();
            _loc5_ = int(_loc5_ + 16);
            _loc23_ = int(eax);
            _loc5_ = int(_loc5_ - 16);
            si32(_loc1_,_loc5_);
            _loc19_ = _loc23_ + _loc19_;
            ESP = _loc5_;
            F___printf_flush();
            _loc5_ = int(_loc5_ + 16);
         }
         while(_loc21_ != _loc3_);
         
      }
      eax = _loc19_;
      _loc5_ = _loc10_;
      ESP = _loc5_;
   }
}
