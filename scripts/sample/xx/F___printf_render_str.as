package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_printf_str_2E_o_3A_81733692_2D_DB2E_2D_43DB_2D_A578_2D_19A73F9BE531.*;
   import avm2.intrinsics.memory.si8;
   
   public function F___printf_render_str() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:int = 0;
      var _loc12_:* = 0;
      var _loc7_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 144);
      _loc1_ = li32(_loc3_ + 4);
      _loc12_ = li32(_loc1_ + 24);
      _loc11_ = li32(_loc3_ + 8);
      _loc10_ = li32(_loc3_);
      if(_loc12_ == 0)
      {
         _loc12_ = li32(_loc1_ + 8);
         if(_loc12_ != 83)
         {
            _loc12_ = li32(_loc11_);
            _loc7_ = li32(_loc12_);
            if(_loc7_ == 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(6,_loc2_ + 12);
               si32(L__2E_str2,_loc2_ + 8);
               si32(_loc1_,_loc2_ + 4);
               si32(_loc10_,_loc2_);
               ESP = _loc2_;
               F___printf_out();
               _loc2_ = int(_loc2_ + 16);
               _loc8_ = int(eax);
            }
            else
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_strlen();
               _loc2_ = int(_loc2_ + 16);
               _loc11_ = int(eax);
               _loc9_ = li32(_loc1_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc7_,_loc2_ + 8);
               si32(_loc1_,_loc2_ + 4);
               si32(_loc10_,_loc2_);
               _loc10_ = 1;
               _loc1_ = _loc10_;
               if(_loc9_ >= _loc11_)
               {
                  _loc1_ = 0;
               }
               if(_loc9_ <= -1)
               {
                  _loc10_ = 0;
               }
               _loc12_ = _loc10_ & _loc1_;
               if(_loc12_ == 0)
               {
                  _loc9_ = _loc11_;
               }
               si32(_loc9_,_loc2_ + 12);
               ESP = _loc2_;
               F___printf_out();
               _loc2_ = int(_loc2_ + 16);
               _loc8_ = int(eax);
            }
         }
         addr700:
         eax = _loc8_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc12_ = li32(_loc11_);
      _loc9_ = li32(_loc12_);
      if(_loc9_ == 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(6,_loc2_ + 12);
         si32(L__2E_str2,_loc2_ + 8);
         si32(_loc1_,_loc2_ + 4);
         si32(_loc10_,_loc2_);
         ESP = _loc2_;
         F___printf_out();
         _loc2_ = int(_loc2_ + 16);
         _loc8_ = int(eax);
      }
      else
      {
         _loc8_ = li32(_loc1_);
         if(_loc8_ <= -1)
         {
            si32(_loc9_,_loc3_ - 140);
            _loc2_ = int(_loc2_ - 16);
            si32(128,_loc2_ + 8);
            si32(0,_loc2_ + 4);
            _loc12_ = int(_loc3_ - 128);
            si32(_loc12_,_loc2_);
            ESP = _loc2_;
            Fmemset();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc12_,_loc2_ + 12);
            si32(0,_loc2_ + 8);
            _loc12_ = int(_loc3_ - 140);
            si32(_loc12_,_loc2_ + 4);
            si32(0,_loc2_);
            ESP = _loc2_;
            F_wcsrtombs();
            _loc8_ = -1;
            _loc2_ = int(_loc2_ + 16);
            _loc11_ = int(eax);
            if(_loc11_ != -1)
            {
            }
         }
         else
         {
            _loc11_ = _loc8_;
            if(_loc8_ >= 128)
            {
               si32(_loc9_,_loc3_ - 140);
               _loc2_ = int(_loc2_ - 16);
               si32(128,_loc2_ + 8);
               _loc11_ = 0;
               si32(_loc11_,_loc2_ + 4);
               _loc7_ = int(_loc3_ - 128);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               Fmemset();
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = _loc9_;
               while(true)
               {
                  var _loc5_:* = li32(_loc6_);
                  _loc12_ = int(_loc6_ + 4);
                  si32(_loc12_,_loc3_ - 140);
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc7_,_loc2_ + 8);
                  si32(_loc5_,_loc2_ + 4);
                  _loc12_ = int(_loc3_ - 134);
                  si32(_loc12_,_loc2_);
                  ESP = _loc2_;
                  F_wcrtomb();
                  _loc2_ = int(_loc2_ + 16);
                  _loc6_ = int(eax);
                  _loc12_ = int(_loc6_ + -1);
                  if(uint(_loc12_) <= 4294967293)
                  {
                     _loc4_ = _loc6_ + _loc11_;
                     if(_loc4_ <= _loc8_)
                     {
                        _loc6_ = li32(_loc3_ - 140);
                        _loc11_ = _loc4_;
                        continue;
                     }
                     break;
                  }
                  break;
               }
            }
         }
         _loc2_ = int(_loc2_ - 16);
         _loc12_ = int(_loc11_ + 1);
         si32(_loc12_,_loc2_);
         ESP = _loc2_;
         F_malloc();
         _loc8_ = -1;
         _loc2_ = int(_loc2_ + 16);
         _loc7_ = int(eax);
         if(_loc7_ != 0)
         {
            si32(_loc9_,_loc3_ - 140);
            _loc2_ = int(_loc2_ - 16);
            si32(128,_loc2_ + 8);
            si32(0,_loc2_ + 4);
            _loc12_ = int(_loc3_ - 128);
            si32(_loc12_,_loc2_);
            ESP = _loc2_;
            Fmemset();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc12_,_loc2_ + 12);
            si32(_loc11_,_loc2_ + 8);
            _loc12_ = int(_loc3_ - 140);
            si32(_loc12_,_loc2_ + 4);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F_wcsrtombs();
            _loc2_ = int(_loc2_ + 16);
            _loc11_ = int(eax);
            if(_loc11_ == -1)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_free();
               _loc2_ = int(_loc2_ + 16);
               _loc8_ = -1;
            }
            else
            {
               si8(0,int(_loc7_ + _loc11_));
               _loc2_ = int(_loc2_ - 16);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_strlen();
               _loc2_ = int(_loc2_ + 16);
               _loc2_ = int(_loc2_ - 16);
               si32(int(eax),_loc2_ + 12);
               si32(_loc7_,_loc2_ + 8);
               si32(_loc1_,_loc2_ + 4);
               si32(_loc10_,_loc2_);
               ESP = _loc2_;
               F___printf_out();
               _loc2_ = int(_loc2_ + 16);
               _loc8_ = int(eax);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_free();
               _loc2_ = int(_loc2_ + 16);
            }
         }
      }
      §§goto(addr700);
   }
}
