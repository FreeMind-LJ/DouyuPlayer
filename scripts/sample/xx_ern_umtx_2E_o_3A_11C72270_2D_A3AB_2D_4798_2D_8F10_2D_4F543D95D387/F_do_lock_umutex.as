package sample.xx_ern_umtx_2E_o_3A_11C72270_2D_A3AB_2D_4798_2D_8F10_2D_4F543D95D387
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   
   public function F_do_lock_umutex() : void
   {
      var _loc4_:* = 0;
      var _loc11_:* = 0;
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc13_:* = 0;
      var _loc15_:* = 0;
      var _loc14_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      _loc3_ = li32(_loc4_ + 4);
      _loc15_ = li32(_loc3_ + 4);
      _loc14_ = 14;
      if(_loc15_ != -1)
      {
         _loc13_ = li32(_loc4_ + 12);
         _loc12_ = li32(_loc4_ + 8);
         _loc11_ = li32(_loc4_);
         if(_loc12_ == 0)
         {
            _loc2_ = int(_loc2_ - 32);
            si32(_loc13_,_loc2_ + 16);
            si32(0,_loc2_ + 12);
            si32(_loc15_,_loc2_ + 8);
            si32(_loc3_,_loc2_ + 4);
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            F__do_lock_umutex();
            _loc2_ = int(_loc2_ + 32);
            _loc14_ = int(eax);
            if(_loc14_ == 4)
            {
               if(_loc13_ != 2)
               {
                  _loc14_ = -1;
               }
            }
         }
         else
         {
            _loc2_ = int(_loc2_ - 16);
            var _loc10_:int = _loc4_ - 8;
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F_kgetnanouptime();
            _loc2_ = int(_loc2_ + 16);
            _loc14_ = li32(_loc12_);
            _loc8_ = int(_loc14_ + li32(_loc4_ - 8));
            si32(_loc8_,_loc4_ - 8);
            _loc1_ = _loc10_ | 4;
            _loc12_ = li32(_loc12_ + 4);
            _loc5_ = int(_loc12_ + li32(_loc1_));
            si32(_loc5_,_loc1_);
            if(_loc5_ >= 1000000000)
            {
               var _loc9_:* = int(_loc8_ + 1);
               si32(_loc9_,_loc4_ - 8);
               _loc9_ = int(_loc5_ + -1000000000);
               si32(_loc9_,_loc1_);
            }
            si32(_loc14_,_loc4_ - 24);
            while(true)
            {
               var _loc6_:int = _loc12_ / 1000;
               _loc10_ = _loc4_ - 24;
               _loc9_ = _loc10_ | 4;
               si32(_loc6_,_loc9_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc10_,_loc2_);
               ESP = _loc2_;
               F_ktvtohz();
               _loc2_ = int(_loc2_ + 16);
               _loc9_ = int(eax);
               _loc2_ = int(_loc2_ - 32);
               si32(_loc13_,_loc2_ + 16);
               si32(_loc9_,_loc2_ + 12);
               si32(_loc15_,_loc2_ + 8);
               si32(_loc3_,_loc2_ + 4);
               si32(_loc11_,_loc2_);
               ESP = _loc2_;
               F__do_lock_umutex();
               _loc2_ = int(_loc2_ + 32);
               _loc14_ = int(eax);
               if(_loc14_ != -1)
               {
                  if(_loc14_ == 60)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     _loc7_ = int(_loc4_ - 16);
                     si32(_loc7_,_loc2_);
                     ESP = _loc2_;
                     F_kgetnanouptime();
                     _loc2_ = int(_loc2_ + 16);
                     _loc12_ = li32(_loc4_ - 8);
                     _loc5_ = li32(_loc4_ - 16);
                     if(_loc5_ == _loc12_)
                     {
                        _loc8_ = li32(_loc1_);
                        _loc9_ = _loc7_ | 4;
                        _loc7_ = li32(_loc9_);
                        _loc14_ = 60;
                        if(_loc7_ >= _loc8_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        _loc14_ = 60;
                        if(_loc5_ < _loc12_)
                        {
                           _loc9_ = _loc7_ | 4;
                           _loc7_ = li32(_loc9_);
                           _loc8_ = li32(_loc1_);
                        }
                        else
                        {
                           break;
                        }
                     }
                     _loc10_ = _loc12_ - _loc5_;
                     _loc8_ = int(_loc8_ - _loc7_);
                     _loc9_ = _loc8_ >> 31;
                     _loc9_ = int(_loc10_ + _loc9_);
                     si32(_loc9_,_loc4_ - 24);
                     _loc12_ = int(_loc8_ + 1000000000);
                     if(_loc8_ >= 0)
                     {
                        _loc12_ = _loc8_;
                     }
                     continue;
                  }
                  break;
               }
               _loc14_ = 4;
               break;
            }
         }
      }
      eax = _loc14_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
