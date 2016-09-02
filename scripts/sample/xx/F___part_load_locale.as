package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_dpart_2E_o_3A_6BE22B25_2D_F1BE_2D_49A0_2D_A1FF_2D_F80838FD642A.*;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F___part_load_locale() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc14_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 1120);
      _loc2_ = int(_loc2_ - 16);
      si32(L__2E_str,_loc2_ + 4);
      _loc3_ = li32(_loc4_);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      F_strcmp();
      _loc14_ = li32(_loc4_ + 4);
      _loc2_ = int(_loc2_ + 16);
      var _loc13_:* = int(eax);
      if(_loc13_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(L__2E_str1,_loc2_ + 4);
         si32(_loc3_,_loc2_);
         ESP = _loc2_;
         F_strcmp();
         _loc2_ = int(_loc2_ + 16);
         _loc13_ = int(eax);
         if(_loc13_ != 0)
         {
            _loc11_ = li32(_loc4_ + 8);
            _loc10_ = li32(_loc11_);
            if(_loc10_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc10_,_loc2_ + 4);
               si32(_loc3_,_loc2_);
               ESP = _loc2_;
               F_strcmp();
               _loc2_ = int(_loc2_ + 16);
               _loc13_ = int(eax);
               if(_loc13_ == 0)
               {
                  _loc12_ = 1;
                  si32(_loc12_,_loc14_);
               }
            }
            _loc13_ = li32(_loc4_ + 12);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F_strlen();
            _loc2_ = int(_loc2_ + 16);
            _loc9_ = int(eax);
            var _loc8_:* = li32(__PathLocale);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc8_,_loc2_ + 4);
            _loc8_ = int(_loc4_ - 1024);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F_strcpy();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F_strlen();
            _loc2_ = int(_loc2_ + 16);
            var _loc7_:int = eax;
            _loc7_ = _loc8_ + _loc7_;
            si16(47,_loc7_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc3_,_loc2_ + 4);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F_strcat();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F_strlen();
            _loc2_ = int(_loc2_ + 16);
            _loc7_ = eax;
            _loc7_ = _loc8_ + _loc7_;
            si16(47,_loc7_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc13_,_loc2_ + 4);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F_strcat();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(0,_loc2_ + 4);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F__open();
            _loc12_ = -1;
            _loc2_ = int(_loc2_ + 16);
            _loc10_ = int(eax);
            if(_loc10_ >= 0)
            {
               _loc2_ = int(_loc2_ - 16);
               _loc13_ = int(_loc4_ - 1120);
               si32(_loc13_,_loc2_ + 4);
               si32(_loc10_,_loc2_);
               ESP = _loc2_;
               F__fstat();
               _loc2_ = int(_loc2_ + 16);
               _loc13_ = int(eax);
               if(_loc13_ == 0)
               {
                  _loc1_ = 1;
                  _loc5_ = li32(_loc4_ - 1068);
                  _loc6_ = _loc1_;
                  if(_loc5_ <= 0)
                  {
                     _loc6_ = 0;
                  }
                  _loc12_ = li32(_loc4_ - 1072);
                  if(_loc12_ == 0)
                  {
                     _loc1_ = 0;
                  }
                  if(_loc5_ != 0)
                  {
                     _loc1_ = _loc6_;
                  }
                  if(_loc1_ == 0)
                  {
                     ESP = _loc2_;
                     F___error();
                     si32(79,int(eax));
                  }
                  else
                  {
                     _loc5_ = int(_loc9_ + 1);
                     _loc2_ = int(_loc2_ - 16);
                     si32(int(_loc12_ + _loc5_),_loc2_);
                     ESP = _loc2_;
                     F_malloc();
                     _loc2_ = int(_loc2_ + 16);
                     _loc12_ = int(eax);
                     if(_loc12_ == 0)
                     {
                        ESP = _loc2_;
                        F___error();
                        si32(12,int(eax));
                     }
                     else
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc3_,_loc2_ + 4);
                        si32(_loc12_,_loc2_);
                        ESP = _loc2_;
                        F_strcpy();
                        _loc2_ = int(_loc2_ + 16);
                        _loc3_ = li32(_loc4_ - 1072);
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc3_,_loc2_ + 8);
                        _loc6_ = int(_loc12_ + _loc5_);
                        si32(_loc6_,_loc2_ + 4);
                        si32(_loc10_,_loc2_);
                        ESP = _loc2_;
                        F__read();
                        _loc2_ = int(_loc2_ + 16);
                        _loc13_ = int(eax);
                        _loc13_ = _loc13_ ^ li32(_loc4_ - 1072);
                        _loc13_ = _loc13_ | _loc13_ >> 31 ^ li32(_loc4_ - 1068);
                        if(_loc13_ == 0)
                        {
                           _loc13_ = int(_loc12_ + (int(_loc3_ + _loc9_)));
                           _loc13_ = li8(_loc13_);
                           if(_loc13_ != 10)
                           {
                              ESP = _loc2_;
                              F___error();
                              si32(79,int(eax));
                           }
                           else
                           {
                              _loc1_ = int(_loc3_ + _loc5_);
                              _loc3_ = 0;
                              if(_loc5_ < _loc1_)
                              {
                                 _loc5_ = int(_loc12_ + (int(_loc1_ - _loc6_)));
                                 _loc13_ = int(_loc9_ + _loc12_);
                                 _loc9_ = int(_loc13_ + 1);
                                 _loc3_ = 0;
                                 do
                                 {
                                    _loc13_ = li8(_loc9_);
                                    if(_loc13_ == 10)
                                    {
                                       si8(0,_loc9_);
                                       _loc3_ = int(_loc3_ + 1);
                                    }
                                    _loc9_ = int(_loc9_ + 1);
                                    _loc5_ = int(_loc5_ + -1);
                                 }
                                 while(_loc5_ != 0);
                                 
                              }
                              _loc9_ = li32(_loc4_ + 16);
                              _loc5_ = _loc9_;
                              if(_loc3_ < _loc9_)
                              {
                                 _loc5_ = li32(_loc4_ + 20);
                                 if(_loc3_ < _loc5_)
                                 {
                                    ESP = _loc2_;
                                    F___error();
                                    si32(79,int(eax));
                                 }
                              }
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc10_,_loc2_);
                              ESP = _loc2_;
                              F__close();
                              _loc2_ = int(_loc2_ + 16);
                              _loc10_ = li32(_loc11_);
                              if(_loc10_ != 0)
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc10_,_loc2_);
                                 ESP = _loc2_;
                                 F_free();
                                 _loc2_ = int(_loc2_ + 16);
                              }
                              _loc10_ = li32(_loc4_ + 24);
                              si32(_loc12_,_loc11_);
                              _loc11_ = _loc10_;
                              _loc3_ = _loc5_;
                              if(_loc5_ >= 1)
                              {
                                 do
                                 {
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(_loc12_,_loc2_);
                                    ESP = _loc2_;
                                    F_strlen();
                                    _loc2_ = int(_loc2_ + 16);
                                    _loc13_ = int(eax);
                                    _loc13_ = int(_loc13_ + _loc12_);
                                    _loc12_ = int(_loc13_ + 1);
                                    si32(_loc12_,_loc11_);
                                    _loc11_ = int(_loc11_ + 4);
                                    _loc3_ = int(_loc3_ + -1);
                                 }
                                 while(_loc3_ != 0);
                                 
                              }
                              if(_loc5_ < _loc9_)
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(0,_loc2_ + 4);
                                 _loc13_ = int(_loc9_ - _loc5_);
                                 _loc13_ = _loc13_ << 2;
                                 si32(_loc13_,_loc2_ + 8);
                                 _loc13_ = int(_loc10_ + (_loc5_ << 2));
                                 si32(_loc13_,_loc2_);
                                 ESP = _loc2_;
                                 Fmemset();
                                 _loc2_ = int(_loc2_ + 16);
                              }
                              si32(1,_loc14_);
                              _loc12_ = 0;
                           }
                        }
                        ESP = _loc2_;
                        F___error();
                        _loc13_ = int(eax);
                        _loc13_ = li32(_loc13_);
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc12_,_loc2_);
                        ESP = _loc2_;
                        F_free();
                        _loc2_ = int(_loc2_ + 16);
                        ESP = _loc2_;
                        F___error();
                        _loc8_ = int(eax);
                        si32(_loc13_,_loc8_);
                     }
                  }
               }
               ESP = _loc2_;
               F___error();
               _loc13_ = int(eax);
               _loc8_ = li32(_loc13_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc10_,_loc2_);
               ESP = _loc2_;
               F__close();
               _loc2_ = int(_loc2_ + 16);
               ESP = _loc2_;
               F___error();
               _loc13_ = int(eax);
               si32(_loc8_,_loc13_);
               _loc12_ = -1;
            }
         }
         addr966:
         eax = _loc12_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
      si32(0,_loc14_);
      _loc12_ = 1;
      §§goto(addr966);
   }
}
