package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccJ9Dgwu_2E_o_3A_c5d379ab_2D_8109_2D_4bc8_2D_aa7c_2D_892d83bcba3b.*;
   import avm2.intrinsics.memory.si8;
   
   public function F_create_protocol_data() : void
   {
      var _loc2_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc10_:int = 0;
      var _loc12_:* = 0;
      var _loc5_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc3_:* = int(ESP);
      _loc2_ = _loc3_;
      _loc4_ = 0;
      _loc5_ = li32(_loc2_);
      if(_loc5_ != 0)
      {
         _loc6_ = li32(_loc2_ + 4);
         if(_loc6_ != 0)
         {
            _loc7_ = li32(_loc2_ + 8);
            _loc3_ = int(_loc3_ - 16);
            var _loc8_:* = _loc6_ << 2;
            si32(_loc8_,_loc3_);
            ESP = _loc3_;
            F_malloc();
            _loc9_ = 0;
            _loc3_ = int(_loc3_ + 16);
            _loc10_ = eax;
            _loc4_ = _loc9_;
            if(_loc10_ != 0)
            {
               while(_loc9_ < _loc6_)
               {
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc5_,_loc3_);
                  _loc8_ = int(_loc5_ + 32);
                  si32(_loc8_,_loc3_ + 4);
                  ESP = _loc3_;
                  F_AddItem();
                  _loc3_ = int(_loc3_ + 16);
                  _loc8_ = int(eax);
                  si32(_loc8_,int(_loc10_ + (_loc9_ << 2)));
                  if(_loc8_ != 0)
                  {
                     _loc5_ = int(_loc5_ + 288);
                     _loc9_ = int(_loc9_ + 1);
                     continue;
                  }
                  break;
               }
               _loc5_ = 0;
               _loc4_ = _loc5_;
               if(_loc6_ == _loc9_)
               {
                  _loc5_ = 0;
                  _loc9_ = _loc10_;
                  _loc12_ = _loc6_;
                  _loc4_ = _loc5_;
                  if(_loc6_ >= 1)
                  {
                     do
                     {
                        _loc8_ = li32(_loc9_);
                        _loc3_ = int(_loc3_ - 16);
                        si32(_loc8_,_loc3_);
                        ESP = _loc3_;
                        F_strlen();
                        _loc3_ = int(_loc3_ + 16);
                        _loc8_ = int(eax);
                        _loc4_ = int(_loc8_ + _loc4_);
                        _loc9_ = int(_loc9_ + 4);
                        _loc12_ = int(_loc12_ + -1);
                     }
                     while(_loc12_ != 0);
                     
                  }
                  _loc3_ = int(_loc3_ - 16);
                  _loc9_ = int(_loc4_ + 1);
                  si32(_loc9_,_loc3_);
                  ESP = _loc3_;
                  F_malloc();
                  _loc3_ = int(_loc3_ + 16);
                  _loc12_ = int(eax);
                  if(_loc12_ != 0)
                  {
                     _loc5_ = _loc12_;
                     _loc3_ = int(_loc3_ - 16);
                     si32(_loc9_,_loc3_ + 8);
                     si32(0,_loc3_ + 4);
                     si32(_loc5_,_loc3_);
                     ESP = _loc3_;
                     Fmemset();
                     _loc3_ = int(_loc3_ + 16);
                     _loc12_ = _loc10_;
                     _loc1_ = _loc6_;
                     if(_loc6_ >= 1)
                     {
                        do
                        {
                           _loc8_ = li32(_loc12_);
                           _loc3_ = int(_loc3_ - 16);
                           si32(_loc8_,_loc3_ + 4);
                           si32(_loc5_,_loc3_);
                           ESP = _loc3_;
                           F_strcat();
                           _loc3_ = int(_loc3_ + 16);
                           _loc12_ = int(_loc12_ + 4);
                           _loc1_ = int(_loc1_ + -1);
                        }
                        while(_loc1_ != 0);
                        
                     }
                     _loc3_ = int(_loc3_ - 16);
                     si32(_loc9_,_loc3_);
                     ESP = _loc3_;
                     F_malloc();
                     _loc3_ = int(_loc3_ + 16);
                     _loc9_ = int(eax);
                     si32(_loc9_,_loc7_);
                     if(_loc9_ != 0)
                     {
                        _loc3_ = int(_loc3_ - 16);
                        si32(_loc5_,_loc3_ + 4);
                        si32(_loc9_,_loc3_);
                        si32(_loc4_,_loc3_ + 8);
                        ESP = _loc3_;
                        Fmemcpy();
                        _loc3_ = int(_loc3_ + 16);
                        si8(0,int(_loc9_ + _loc4_));
                     }
                  }
               }
               if(_loc10_ != 0)
               {
                  if(_loc6_ >= 1)
                  {
                     _loc7_ = 1;
                     if(_loc10_ != 0)
                     {
                        while(true)
                        {
                           _loc8_ = _loc7_ << 2;
                           _loc8_ = int(_loc10_ + _loc8_);
                           _loc9_ = li32(_loc8_ - 4);
                           if(_loc9_ != 0)
                           {
                              _loc3_ = int(_loc3_ - 16);
                              si32(_loc9_,_loc3_);
                              ESP = _loc3_;
                              F_free();
                              _loc3_ = int(_loc3_ + 16);
                           }
                           if(_loc7_ < _loc6_)
                           {
                              _loc7_ = int(_loc7_ + 1);
                              if(_loc10_ == 0)
                              {
                                 break;
                              }
                              continue;
                           }
                           break;
                        }
                     }
                  }
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc10_,_loc3_);
                  ESP = _loc3_;
                  F_free();
                  _loc3_ = int(_loc3_ + 16);
               }
               if(_loc5_ != 0)
               {
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc5_,_loc3_);
                  ESP = _loc3_;
                  F_free();
                  _loc3_ = int(_loc3_ + 16);
               }
            }
         }
      }
      eax = _loc4_;
      _loc3_ = _loc2_;
      ESP = _loc3_;
   }
}
