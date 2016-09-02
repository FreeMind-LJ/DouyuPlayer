package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx_uc_2E_o_3A_9BEB9C05_2D_DB15_2D_40C0_2D_ABEB_2D_0D0E9808D49E.*;
   
   public function F__EUC_init() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc4_:int = 0;
      var _loc10_:* = 0;
      var _loc7_:int = 0;
      var _loc9_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      _loc12_ = li32(_loc1_ + 3148);
      _loc11_ = 79;
      if(_loc12_ != 0)
      {
         while(true)
         {
            _loc11_ = li8(_loc12_);
            if(_loc11_ != 9)
            {
               if(_loc11_ != 32)
               {
                  break;
               }
            }
            _loc12_ = int(_loc12_ + 1);
         }
         _loc2_ = int(_loc2_ - 16);
         si32(36,_loc2_);
         ESP = _loc2_;
         F_malloc();
         _loc2_ = int(_loc2_ + 16);
         _loc11_ = int(eax);
         _loc10_ = 0;
         _loc9_ = 0;
         if(_loc11_ == 0)
         {
            ESP = _loc2_;
            F___error();
            var _loc8_:int = eax;
            _loc11_ = 12;
            if(li32(_loc8_) != 0)
            {
               ESP = _loc2_;
               F___error();
               _loc8_ = eax;
               _loc11_ = li32(_loc8_);
            }
         }
         else
         {
            while(true)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(0,_loc2_ + 8);
               _loc4_ = _loc3_ - 4;
               si32(_loc4_,_loc2_ + 4);
               si32(_loc12_,_loc2_);
               ESP = _loc2_;
               F_strtol();
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = int(eax);
               if(_loc10_ >= 4)
               {
                  si32(_loc6_,_loc11_ + 32);
                  _loc10_ = li32(_loc3_ - 4);
                  if(_loc12_ != _loc10_)
                  {
                     if(_loc10_ != 0)
                     {
                        si32(_loc11_,_loc1_ + 3148);
                        si32(36,_loc1_ + 3152);
                        si32(_loc1_,__CurrentRuneLocale);
                        si32(_loc9_,___mb_cur_max);
                        si32(__EUC_mbrtowc,___mbrtowc);
                        si32(__EUC_wcrtomb,___wcrtomb);
                        si32(__EUC_mbsinit,___mbsinit);
                        si32(256,___mb_sb_limit);
                        _loc11_ = 0;
                        break;
                     }
                  }
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc11_,_loc2_);
                  ESP = _loc2_;
                  F_free();
                  _loc2_ = int(_loc2_ + 16);
                  _loc11_ = 79;
                  break;
               }
               _loc7_ = _loc11_ + (_loc10_ << 2);
               si32(_loc6_,_loc7_);
               _loc5_ = li32(_loc3_ - 4);
               if(_loc12_ != _loc5_)
               {
                  if(_loc5_ != 0)
                  {
                     if(_loc6_ <= _loc9_)
                     {
                        _loc6_ = _loc9_;
                     }
                     while(true)
                     {
                        _loc12_ = li8(_loc5_);
                        if(_loc12_ != 9)
                        {
                           if(_loc12_ != 32)
                           {
                              break;
                           }
                        }
                        _loc5_ = int(_loc5_ + 1);
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(0,_loc2_ + 8);
                     si32(_loc4_,_loc2_ + 4);
                     si32(_loc5_,_loc2_);
                     ESP = _loc2_;
                     F_strtol();
                     _loc2_ = int(_loc2_ + 16);
                     _loc8_ = eax;
                     si32(_loc8_,_loc7_ + 16);
                     _loc12_ = li32(_loc3_ - 4);
                     if(_loc12_ != _loc5_)
                     {
                        if(_loc12_ != 0)
                        {
                           while(true)
                           {
                              _loc9_ = li8(_loc12_);
                              if(_loc9_ != 9)
                              {
                                 if(_loc9_ != 32)
                                 {
                                    break;
                                 }
                              }
                              _loc12_ = int(_loc12_ + 1);
                           }
                           _loc10_ = int(_loc10_ + 1);
                           _loc9_ = _loc6_;
                           continue;
                        }
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc11_,_loc2_);
                     ESP = _loc2_;
                     F_free();
                     _loc2_ = int(_loc2_ + 16);
                     _loc11_ = 79;
                     break;
                  }
               }
               _loc2_ = int(_loc2_ - 16);
               si32(_loc11_,_loc2_);
               ESP = _loc2_;
               F_free();
               _loc2_ = int(_loc2_ + 16);
               _loc11_ = 79;
               break;
            }
         }
      }
      eax = _loc11_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
