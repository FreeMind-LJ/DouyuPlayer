package sample.xx_tf8_2E_o_3A_71874781_2D_5724_2D_4B16_2D_9C7F_2D_C30AC3EB270F
{
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__UTF8_wcsnrtombs() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:int = 0;
      var _loc11_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_ + 16);
      var _loc12_:* = li32(_loc1_ + 4);
      if(_loc12_ != 0)
      {
         ESP = _loc2_;
         F___error();
         si32(22,int(eax));
         _loc11_ = -1;
      }
      else
      {
         _loc10_ = li32(_loc3_ + 12);
         _loc9_ = li32(_loc3_ + 8);
         _loc8_ = li32(_loc3_ + 4);
         _loc7_ = li32(_loc3_);
         _loc6_ = li32(_loc8_);
         _loc5_ = 0;
         _loc11_ = _loc5_;
         if(_loc7_ != 0)
         {
            while(_loc10_ != 0)
            {
               if(_loc9_ != 0)
               {
                  _loc5_ = li32(_loc6_);
                  if(uint(_loc5_) <= 127)
                  {
                     si8(_loc5_,_loc7_);
                     _loc4_ = 1;
                  }
                  else
                  {
                     _loc12_ = li32(___mb_cur_max);
                     if(uint(_loc12_) < uint(_loc10_))
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc1_,_loc2_ + 8);
                        si32(_loc5_,_loc2_ + 4);
                        si32(_loc7_,_loc2_);
                        ESP = _loc2_;
                        F__UTF8_wcrtomb();
                        _loc2_ = int(_loc2_ + 16);
                        _loc4_ = eax;
                        if(_loc4_ == -1)
                        {
                           si32(_loc6_,_loc8_);
                           _loc11_ = -1;
                        }
                     }
                     else
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc1_,_loc2_ + 8);
                        si32(_loc5_,_loc2_ + 4);
                        _loc5_ = int(_loc3_ - 6);
                        si32(_loc5_,_loc2_);
                        ESP = _loc2_;
                        F__UTF8_wcrtomb();
                        _loc2_ = int(_loc2_ + 16);
                        _loc4_ = eax;
                        if(_loc4_ == -1)
                        {
                           si32(_loc6_,_loc8_);
                           _loc11_ = -1;
                        }
                        else if(uint(_loc4_) <= uint(_loc10_))
                        {
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc4_,_loc2_ + 8);
                           si32(_loc5_,_loc2_ + 4);
                           si32(_loc7_,_loc2_);
                           ESP = _loc2_;
                           Fmemcpy();
                           _loc2_ = int(_loc2_ + 16);
                        }
                        else
                        {
                           break;
                        }
                     }
                  }
                  _loc12_ = li32(_loc6_);
                  if(_loc12_ == 0)
                  {
                     si32(0,_loc8_);
                     _loc12_ = int(_loc11_ + _loc4_);
                     _loc11_ = int(_loc12_ + -1);
                  }
                  else
                  {
                     _loc11_ = int(_loc4_ + _loc11_);
                     _loc10_ = int(_loc10_ - _loc4_);
                     _loc7_ = int(_loc7_ + _loc4_);
                     _loc6_ = int(_loc6_ + 4);
                     _loc9_ = int(_loc9_ + -1);
                     continue;
                  }
               }
               break;
            }
            si32(_loc6_,_loc8_);
         }
         else
         {
            while(true)
            {
               _loc11_ = _loc5_;
               if(_loc9_ != 0)
               {
                  _loc11_ = li32(_loc6_);
                  _loc7_ = 1;
                  if(uint(_loc11_) >= 128)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc1_,_loc2_ + 8);
                     si32(_loc11_,_loc2_ + 4);
                     _loc12_ = int(_loc3_ - 6);
                     si32(_loc12_,_loc2_);
                     ESP = _loc2_;
                     F__UTF8_wcrtomb();
                     _loc11_ = -1;
                     _loc2_ = int(_loc2_ + 16);
                     _loc7_ = int(eax);
                     if(_loc7_ != -1)
                     {
                        _loc11_ = li32(_loc6_);
                     }
                     break;
                  }
                  if(_loc11_ == 0)
                  {
                     _loc12_ = int(_loc5_ + _loc7_);
                     _loc11_ = int(_loc12_ + -1);
                     break;
                  }
                  _loc5_ = int(_loc7_ + _loc5_);
                  _loc6_ = int(_loc6_ + 4);
                  _loc9_ = int(_loc9_ + -1);
                  continue;
               }
               break;
            }
         }
      }
      eax = _loc11_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
