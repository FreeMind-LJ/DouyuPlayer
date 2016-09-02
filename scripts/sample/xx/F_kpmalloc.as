package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_pmalloc_2E_o_3A_7B38AAF0_2D_F8D0_2D_4EBF_2D_BC26_2D_806D96EC8230.*;
   
   public function F_kpmalloc() : void
   {
      var _loc6_:* = 0;
      var _loc15_:* = 0;
      var _loc10_:* = 0;
      var _loc13_:* = 0;
      var _loc16_:* = 0;
      var _loc17_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc18_:* = 0;
      var _loc12_:* = 0;
      var _loc8_:* = 0;
      var _loc5_:int = 0;
      var _loc9_:* = 0;
      var _loc3_:* = int(ESP);
      _loc6_ = _loc3_;
      _loc4_ = 4;
      _loc18_ = 0;
      _loc17_ = li32(_loc6_);
      if(uint(_loc17_) >= 5)
      {
         do
         {
            _loc4_ = _loc4_ << 1;
            _loc18_ = int(_loc18_ + 1);
         }
         while(uint(_loc4_) < uint(_loc17_));
         
         _loc16_ = 0;
         if(uint(_loc18_) <= 11)
         {
         }
         eax = _loc16_;
         _loc3_ = _loc6_;
         ESP = _loc3_;
         return;
      }
      _loc15_ = 4 << _loc18_;
      var _loc14_:* = _loc18_ << 2;
      _loc17_ = int(_sFreeHead + _loc14_);
      _loc4_ = li32(_loc17_);
      if(_loc4_ == 0)
      {
         _loc3_ = int(_loc3_ - 32);
         _loc16_ = 0;
         si32(_loc16_,_loc3_ + 24);
         si32(_loc16_,_loc3_ + 20);
         si32(4098,_loc3_ + 12);
         si32(3,_loc3_ + 8);
         si32(_loc16_,_loc3_);
         _loc14_ = int(_loc15_ + 4095);
         _loc13_ = _loc14_ & -4096;
         si32(_loc13_,_loc3_ + 4);
         si32(-1,_loc3_ + 16);
         ESP = _loc3_;
         F_mmap();
         _loc3_ = int(_loc3_ + 32);
         _loc12_ = int(eax);
         _loc4_ = _loc16_;
         if(_loc12_ != -1)
         {
            _loc4_ = _loc12_;
         }
         if(_loc4_ != 0)
         {
            _loc14_ = int(_loc13_ >>> int(_loc18_ + 2));
            _loc14_ = int(_loc14_ + -1);
            _loc18_ = int(_loc14_ * _loc15_);
            _loc12_ = _loc4_;
            if(_loc18_ >= 1)
            {
               _loc16_ = int(_loc4_ + _loc15_);
               _loc12_ = 0;
               do
               {
                  _loc14_ = int(_loc16_ + _loc12_);
                  var _loc11_:* = int(_loc4_ + _loc12_);
                  si32(_loc14_,_loc11_);
                  _loc12_ = int(_loc12_ + _loc15_);
               }
               while(_loc12_ < _loc18_);
               
               _loc12_ = int(_loc4_ + _loc12_);
            }
            _loc1_ = 0;
            si32(_loc1_,_loc12_);
            _loc14_ = li32(_sPageHashPop);
            _loc14_ = int(_loc14_ + 1);
            si32(_loc14_,_sPageHashPop);
            _loc14_ = int(_loc14_ * 10);
            _loc12_ = int(uint(_loc14_) / 9);
            _loc18_ = 1024;
            if(uint(_loc14_) >= 9225)
            {
               do
               {
                  _loc18_ = _loc18_ << 1;
               }
               while(uint(_loc18_) < uint(_loc12_));
               
            }
            _loc12_ = li32(_sPageHashSize);
            if(_loc18_ != _loc12_)
            {
               _loc12_ = li32(_sPageSize);
               _loc16_ = li32(_sPageHash);
               _loc3_ = int(_loc3_ - 32);
               si32(_loc1_,_loc3_ + 24);
               si32(_loc1_,_loc3_ + 20);
               si32(4098,_loc3_ + 12);
               si32(3,_loc3_ + 8);
               si32(_loc1_,_loc3_);
               _loc14_ = _loc18_ << 2;
               _loc14_ = int(_loc14_ + 4095);
               _loc7_ = _loc14_ & -4096;
               si32(_loc7_,_loc3_ + 4);
               si32(-1,_loc3_ + 16);
               ESP = _loc3_;
               F_mmap();
               _loc3_ = int(_loc3_ + 32);
               _loc8_ = int(eax);
               if(_loc8_ != -1)
               {
                  _loc1_ = _loc8_;
               }
               si32(_loc1_,_sPageHash);
               if(_loc1_ != 0)
               {
                  _loc3_ = int(_loc3_ - 32);
                  _loc8_ = 0;
                  si32(_loc8_,_loc3_ + 24);
                  si32(_loc8_,_loc3_ + 20);
                  si32(4098,_loc3_ + 12);
                  si32(3,_loc3_ + 8);
                  si32(_loc7_,_loc3_ + 4);
                  si32(_loc8_,_loc3_);
                  si32(-1,_loc3_ + 16);
                  ESP = _loc3_;
                  F_mmap();
                  _loc3_ = int(_loc3_ + 32);
                  _loc1_ = int(eax);
                  if(_loc1_ != -1)
                  {
                     _loc8_ = _loc1_;
                  }
                  si32(_loc8_,_sPageSize);
                  if(_loc8_ != 0)
                  {
                     _loc9_ = 0;
                     _loc7_ = li32(_sPageHashSize);
                     if(_loc7_ != 0)
                     {
                        _loc1_ = int(_loc18_ + -1);
                        _loc13_ = 0;
                        _loc9_ = _loc7_;
                        do
                        {
                           _loc7_ = _loc13_ << 2;
                           _loc14_ = int(_loc16_ + _loc7_);
                           _loc8_ = li32(_loc14_);
                           if(_loc8_ != 0)
                           {
                              _loc14_ = int(_loc8_ >>> 12);
                              _loc14_ = int(_loc14_ + (int(_loc8_ >>> 11)));
                              _loc9_ = _loc14_ & _loc1_;
                              _loc10_ = li32(_sPageHash);
                              _loc14_ = int(_loc10_ + (_loc9_ << 2));
                              _loc2_ = li32(_loc14_);
                              if(_loc2_ != 0)
                              {
                                 _loc5_ = 7;
                                 if(_loc2_ != _loc8_)
                                 {
                                    while(true)
                                    {
                                       _loc14_ = int(_loc9_ + _loc5_);
                                       _loc9_ = _loc14_ & _loc1_;
                                       _loc14_ = _loc9_ << 2;
                                       _loc14_ = int(_loc10_ + _loc14_);
                                       _loc2_ = li32(_loc14_);
                                       if(_loc2_ != 0)
                                       {
                                          _loc5_ = _loc5_ + 1;
                                          if(_loc2_ == _loc8_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       break;
                                    }
                                 }
                              }
                              _loc14_ = _loc9_ << 2;
                              _loc11_ = int(_loc10_ + _loc14_);
                              si32(_loc8_,_loc11_);
                              _loc11_ = li32(_sPageSize);
                              _loc14_ = int(_loc11_ + _loc14_);
                              _loc11_ = int(_loc12_ + _loc7_);
                              _loc11_ = li32(_loc11_);
                              si32(_loc11_,_loc14_);
                              _loc9_ = li32(_sPageHashSize);
                           }
                           _loc13_ = int(_loc13_ + 1);
                        }
                        while(uint(_loc13_) < uint(_loc9_));
                        
                     }
                     if(_loc16_ != 0)
                     {
                        _loc3_ = int(_loc3_ - 16);
                        si32(_loc16_,_loc3_);
                        _loc14_ = _loc9_ << 2;
                        _loc14_ = int(_loc14_ + 4095);
                        _loc14_ = _loc14_ & -4096;
                        si32(_loc14_,_loc3_ + 4);
                        ESP = _loc3_;
                        F_munmap();
                        _loc3_ = int(_loc3_ + 16);
                     }
                     if(_loc12_ != 0)
                     {
                        _loc3_ = int(_loc3_ - 16);
                        si32(_loc12_,_loc3_);
                        _loc14_ = li32(_sPageHashSize) << 2;
                        _loc14_ = int(_loc14_ + 4095);
                        _loc14_ = _loc14_ & -4096;
                        si32(_loc14_,_loc3_ + 4);
                        ESP = _loc3_;
                        F_munmap();
                        _loc3_ = int(_loc3_ + 16);
                     }
                     si32(_loc18_,_sPageHashSize);
                     _loc12_ = _loc18_;
                  }
                  else
                  {
                     _loc3_ = int(_loc3_ - 16);
                     si32(_loc7_,_loc3_ + 4);
                     si32(li32(_sPageHash),_loc3_);
                     ESP = _loc3_;
                     F_munmap();
                     _loc3_ = int(_loc3_ + 16);
                  }
               }
               _loc3_ = int(_loc3_ - 16);
               si32(_loc13_,_loc3_ + 4);
               si32(_loc4_,_loc3_);
               ESP = _loc3_;
               F_munmap();
               _loc3_ = int(_loc3_ + 16);
               _loc16_ = 0;
            }
            _loc14_ = int(_loc4_ >>> 11);
            _loc11_ = int(_loc4_ >>> 12);
            _loc14_ = int(_loc11_ + _loc14_);
            _loc16_ = int(_loc12_ + -1);
            _loc12_ = _loc16_ & _loc14_;
            _loc14_ = _loc12_ << 2;
            _loc13_ = li32(_sPageHash);
            _loc14_ = int(_loc13_ + _loc14_);
            _loc1_ = li32(_loc14_);
            if(_loc1_ != 0)
            {
               _loc18_ = 7;
               if(_loc1_ != _loc4_)
               {
                  while(true)
                  {
                     _loc14_ = int(_loc12_ + _loc18_);
                     _loc12_ = _loc14_ & _loc16_;
                     _loc14_ = _loc12_ << 2;
                     _loc14_ = int(_loc13_ + _loc14_);
                     _loc1_ = li32(_loc14_);
                     if(_loc1_ != 0)
                     {
                        _loc18_ = int(_loc18_ + 1);
                        if(_loc1_ == _loc4_)
                        {
                           break;
                        }
                        continue;
                     }
                     break;
                  }
               }
            }
            _loc14_ = _loc12_ << 2;
            _loc11_ = int(_loc13_ + _loc14_);
            si32(_loc4_,_loc11_);
            _loc11_ = li32(_sPageSize);
            _loc14_ = int(_loc11_ + _loc14_);
            si32(_loc15_,_loc14_);
            si32(_loc4_,_loc17_);
         }
         §§goto(addr883);
      }
      _loc14_ = li32(_loc4_);
      si32(_loc14_,_loc17_);
      _loc3_ = int(_loc3_ - 16);
      si32(_loc15_,_loc3_ + 8);
      si32(0,_loc3_ + 4);
      si32(_loc4_,_loc3_);
      ESP = _loc3_;
      Fmemset();
      _loc3_ = int(_loc3_ + 16);
      _loc16_ = _loc4_;
      §§goto(addr883);
   }
}
