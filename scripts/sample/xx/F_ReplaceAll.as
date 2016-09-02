package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccJ9Dgwu_2E_o_3A_c5d379ab_2D_8109_2D_4bc8_2D_aa7c_2D_892d83bcba3b.*;
   
   public function F_ReplaceAll() : void
   {
      var _loc2_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:int = 0;
      var _loc9_:int = 0;
      var _loc10_:int = 0;
      var _loc4_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:int = 0;
      var _loc3_:* = int(ESP);
      _loc2_ = _loc3_;
      _loc4_ = li32(_loc2_);
      if(_loc4_ != 0)
      {
         var _loc5_:* = li8(_loc4_);
         if(_loc5_ != 0)
         {
            _loc6_ = li32(_loc2_ + 4);
            if(_loc6_ != 0)
            {
               _loc7_ = li32(_loc2_ + 8);
               if(_loc7_ != 0)
               {
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc7_,_loc3_);
                  ESP = _loc3_;
                  F_strlen();
                  _loc3_ = int(_loc3_ + 16);
                  _loc8_ = eax;
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc6_,_loc3_);
                  ESP = _loc3_;
                  F_strlen();
                  _loc3_ = int(_loc3_ + 16);
                  _loc9_ = eax;
                  if(_loc7_ != 0)
                  {
                     if(_loc9_ != 0)
                     {
                        _loc3_ = int(_loc3_ - 16);
                        si32(_loc4_,_loc3_);
                        ESP = _loc3_;
                        F_strlen();
                        _loc3_ = int(_loc3_ + 16);
                        _loc3_ = int(_loc3_ - 16);
                        _loc5_ = int(int(eax) + 1);
                        si32(_loc5_,_loc3_);
                        ESP = _loc3_;
                        F_malloc();
                        _loc3_ = int(_loc3_ + 16);
                        _loc10_ = eax;
                        if(_loc10_ != 0)
                        {
                           _loc3_ = int(_loc3_ - 16);
                           si32(_loc4_,_loc3_);
                           ESP = _loc3_;
                           F_strlen();
                           _loc3_ = int(_loc3_ + 16);
                           _loc3_ = int(_loc3_ - 16);
                           _loc5_ = int(int(eax) + 1);
                           si32(_loc5_,_loc3_ + 8);
                           si32(_loc4_,_loc3_ + 4);
                           si32(_loc10_,_loc3_);
                           ESP = _loc3_;
                           Fmemcpy();
                           _loc3_ = int(_loc3_ + 16);
                           _loc3_ = int(_loc3_ - 16);
                           si32(_loc6_,_loc3_ + 4);
                           si32(_loc10_,_loc3_);
                           ESP = _loc3_;
                           F_strstr();
                           _loc3_ = int(_loc3_ + 16);
                           _loc11_ = eax;
                           _loc12_ = _loc10_;
                           if(_loc11_ != 0)
                           {
                              while(true)
                              {
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(_loc12_,_loc3_ + 4);
                                 _loc5_ = int(_loc11_ - _loc12_);
                                 si32(_loc5_,_loc3_ + 8);
                                 si32(_loc4_,_loc3_);
                                 ESP = _loc3_;
                                 Fmemcpy();
                                 _loc3_ = int(_loc3_ + 16);
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(_loc7_,_loc3_ + 4);
                                 var _loc1_:int = _loc4_ + _loc5_;
                                 si32(_loc1_,_loc3_);
                                 si32(_loc8_,_loc3_ + 8);
                                 ESP = _loc3_;
                                 Fmemcpy();
                                 _loc3_ = int(_loc3_ + 16);
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(_loc6_,_loc3_ + 4);
                                 _loc12_ = int(_loc11_ + _loc9_);
                                 si32(_loc12_,_loc3_);
                                 _loc5_ = int(_loc5_ + _loc8_);
                                 _loc4_ = int(_loc4_ + _loc5_);
                                 ESP = _loc3_;
                                 F_strstr();
                                 _loc3_ = int(_loc3_ + 16);
                                 _loc11_ = eax;
                                 if(_loc11_ != 0)
                                 {
                                    continue;
                                 }
                                 break;
                              }
                           }
                           _loc3_ = int(_loc3_ - 16);
                           si32(_loc10_,_loc3_);
                           ESP = _loc3_;
                           F_strlen();
                           _loc3_ = int(_loc3_ + 16);
                           _loc5_ = int(eax);
                           _loc3_ = int(_loc3_ - 16);
                           si32(_loc4_,_loc3_);
                           _loc5_ = int(_loc10_ + _loc5_);
                           si32(_loc12_,_loc3_ + 4);
                           _loc1_ = 1 - _loc12_;
                           _loc5_ = int(_loc1_ + _loc5_);
                           si32(_loc5_,_loc3_ + 8);
                           ESP = _loc3_;
                           Fmemcpy();
                           _loc3_ = int(_loc3_ + 16);
                           _loc3_ = int(_loc3_ - 16);
                           si32(_loc10_,_loc3_);
                           ESP = _loc3_;
                           F_free();
                           _loc3_ = int(_loc3_ + 16);
                        }
                     }
                  }
               }
            }
         }
      }
      _loc3_ = _loc2_;
      ESP = _loc3_;
   }
}
