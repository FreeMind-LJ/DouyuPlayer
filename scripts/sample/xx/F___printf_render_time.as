package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_printf_time_2E_o_3A_E624CC77_2D_3DE7_2D_4B86_2D_B31D_2D_F6413E3D7DB7.*;
   
   public function F___printf_render_time() : void
   {
      var _loc4_:* = 0;
      var _loc14_:* = 0;
      var _loc3_:* = 0;
      var _loc16_:* = 0;
      var _loc12_:int = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc13_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc15_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 112);
      _loc3_ = li32(_loc4_ + 4);
      _loc16_ = li32(_loc3_ + 24);
      _loc15_ = li32(_loc4_ + 8);
      _loc14_ = li32(_loc4_);
      if(_loc16_ != 0)
      {
         _loc16_ = li32(_loc15_);
         _loc13_ = li32(_loc16_);
         _loc16_ = li32(_loc13_ + 4);
         _loc15_ = int(_loc16_ * 1000);
         _loc12_ = 6;
      }
      else
      {
         _loc15_ = li32(_loc15_);
         _loc16_ = li32(_loc3_ + 12);
         if(_loc16_ != 0)
         {
            _loc13_ = li32(_loc15_);
            _loc15_ = li32(_loc13_ + 4);
            _loc12_ = 9;
         }
         else
         {
            _loc13_ = li32(_loc15_);
            _loc12_ = 0;
         }
      }
      _loc16_ = li32(_loc3_ + 28);
      _loc11_ = li32(_loc13_);
      _loc10_ = _loc11_ >> 31;
      if(_loc16_ != 0)
      {
         _loc13_ = int(_loc4_ - 100);
         _loc9_ = _loc11_;
         if(_loc11_ >= 31536000)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(0,_loc2_ + 12);
            si32(31536000,_loc2_ + 8);
            si32(_loc11_,_loc2_);
            si32(_loc10_,_loc2_ + 4);
            ESP = _loc2_;
            F___moddi3();
            _loc2_ = int(_loc2_ + 16);
            _loc9_ = int(eax);
            _loc2_ = int(_loc2_ - 16);
            si32(0,_loc2_ + 12);
            si32(31536000,_loc2_ + 8);
            si32(_loc10_,_loc2_ + 4);
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            F___divdi3();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(int(edx),_loc2_ + 12);
            si32(int(eax),_loc2_ + 8);
            si32(L__2E_str,_loc2_ + 4);
            var _loc5_:int = _loc4_ - 100;
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F_sprintf();
            _loc2_ = int(_loc2_ + 16);
            _loc13_ = int(_loc5_ + int(eax));
            _loc10_ = int(edx);
         }
         _loc6_ = 1;
         _loc7_ = _loc6_;
         if(uint(_loc9_) >= 86400)
         {
            _loc7_ = 0;
         }
         if(_loc10_ >= 0)
         {
            _loc6_ = 0;
         }
         if(_loc10_ != 0)
         {
            _loc7_ = _loc6_;
         }
         if(_loc7_ == 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(0,_loc2_ + 12);
            si32(86400,_loc2_ + 8);
            si32(_loc9_,_loc2_);
            si32(_loc10_,_loc2_ + 4);
            ESP = _loc2_;
            F___moddi3();
            _loc2_ = int(_loc2_ + 16);
            _loc16_ = int(edx);
            _loc2_ = int(_loc2_ - 16);
            si32(0,_loc2_ + 12);
            si32(86400,_loc2_ + 8);
            si32(_loc10_,_loc2_ + 4);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F___divdi3();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(int(edx),_loc2_ + 12);
            si32(int(eax),_loc2_ + 8);
            si32(L__2E_str1,_loc2_ + 4);
            si32(_loc13_,_loc2_);
            ESP = _loc2_;
            F_sprintf();
            _loc2_ = int(_loc2_ + 16);
            _loc13_ = int(_loc13_ + int(eax));
            _loc9_ = int(eax);
            _loc10_ = _loc16_;
         }
         _loc7_ = 1;
         _loc6_ = _loc7_;
         if(uint(_loc9_) >= 3600)
         {
            _loc6_ = 0;
         }
         if(_loc10_ >= 0)
         {
            _loc7_ = 0;
         }
         if(_loc10_ != 0)
         {
            _loc6_ = _loc7_;
         }
         if(_loc6_ == 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(0,_loc2_ + 12);
            si32(3600,_loc2_ + 8);
            si32(_loc9_,_loc2_);
            si32(_loc10_,_loc2_ + 4);
            ESP = _loc2_;
            F___moddi3();
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = edx;
            _loc2_ = int(_loc2_ - 16);
            si32(0,_loc2_ + 12);
            si32(3600,_loc2_ + 8);
            si32(_loc10_,_loc2_ + 4);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F___divdi3();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(int(edx),_loc2_ + 12);
            si32(int(eax),_loc2_ + 8);
            si32(L__2E_str2,_loc2_ + 4);
            si32(_loc13_,_loc2_);
            ESP = _loc2_;
            F_sprintf();
            _loc2_ = int(_loc2_ + 16);
            _loc13_ = int(_loc13_ + int(eax));
            _loc9_ = int(eax);
            _loc10_ = _loc5_;
         }
         _loc7_ = 1;
         _loc6_ = _loc7_;
         if(uint(_loc9_) >= 60)
         {
            _loc6_ = 0;
         }
         if(_loc10_ >= 0)
         {
            _loc7_ = 0;
         }
         if(_loc10_ != 0)
         {
            _loc6_ = _loc7_;
         }
         if(_loc6_ == 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(0,_loc2_ + 12);
            si32(60,_loc2_ + 8);
            si32(_loc9_,_loc2_);
            si32(_loc10_,_loc2_ + 4);
            ESP = _loc2_;
            F___moddi3();
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = edx;
            _loc2_ = int(_loc2_ - 16);
            si32(0,_loc2_ + 12);
            si32(60,_loc2_ + 8);
            si32(_loc10_,_loc2_ + 4);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F___divdi3();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(int(edx),_loc2_ + 12);
            si32(int(eax),_loc2_ + 8);
            si32(L__2E_str3,_loc2_ + 4);
            si32(_loc13_,_loc2_);
            ESP = _loc2_;
            F_sprintf();
            _loc2_ = int(_loc2_ + 16);
            _loc13_ = int(_loc13_ + int(eax));
            _loc9_ = int(eax);
            _loc10_ = _loc5_;
         }
         _loc16_ = _loc9_ | _loc10_;
         if(_loc16_ == 0)
         {
            if(_loc11_ == 0)
            {
            }
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_loc9_,_loc2_ + 8);
         si32(L__2E_str4,_loc2_ + 4);
         si32(_loc10_,_loc2_ + 12);
         si32(_loc13_,_loc2_);
         ESP = _loc2_;
         F_sprintf();
         _loc2_ = int(_loc2_ + 16);
         _loc16_ = int(eax);
         _loc13_ = int(_loc13_ + _loc16_);
      }
      else
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc11_,_loc2_ + 8);
         si32(L__2E_str5,_loc2_ + 4);
         si32(_loc10_,_loc2_ + 12);
         _loc16_ = int(_loc4_ - 100);
         si32(_loc16_,_loc2_);
         ESP = _loc2_;
         F_sprintf();
         _loc2_ = int(_loc2_ + 16);
         _loc13_ = int(_loc16_ + int(eax));
      }
      _loc16_ = li32(_loc3_ + 24);
      if(_loc16_ == 0)
      {
         _loc16_ = li32(_loc3_ + 12);
         if(_loc16_ != 0)
         {
         }
         addr897:
         _loc2_ = int(_loc2_ - 16);
         si32(_loc3_,_loc2_ + 4);
         si32(_loc14_,_loc2_);
         _loc16_ = int(_loc4_ - 100);
         si32(_loc16_,_loc2_ + 8);
         _loc16_ = int(_loc13_ - _loc16_);
         si32(_loc16_,_loc2_ + 12);
         ESP = _loc2_;
         F___printf_out();
         _loc2_ = int(_loc2_ + 16);
         _loc16_ = int(eax);
         eax = _loc16_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
      _loc11_ = li32(_loc3_);
      if(_loc11_ <= -1)
      {
         _loc11_ = _loc12_;
      }
      if(_loc11_ <= 8)
      {
         _loc12_ = 9 - _loc11_;
         do
         {
            _loc12_ = _loc12_ + -1;
            _loc15_ = int(_loc15_ / 10);
         }
         while(_loc12_ != 0);
         
      }
      _loc2_ = int(_loc2_ - 16);
      si32(_loc15_,_loc2_ + 12);
      si32(_loc11_,_loc2_ + 8);
      si32(L__2E_str6,_loc2_ + 4);
      si32(_loc13_,_loc2_);
      ESP = _loc2_;
      F_sprintf();
      _loc2_ = int(_loc2_ + 16);
      _loc16_ = int(eax);
      _loc13_ = int(_loc13_ + _loc16_);
      §§goto(addr897);
   }
}
