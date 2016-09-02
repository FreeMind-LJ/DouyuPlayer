package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_etenv_2E_o_3A_A3451165_2D_2A9D_2D_441A_2D_BCA8_2D_D41B459D3F48.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F_putenv() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc14_:* = 0;
      var _loc10_:int = 0;
      var _loc7_:int = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc11_:* = 0;
      var _loc9_:* = 0;
      var _loc12_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_);
      if(_loc3_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(61,_loc2_ + 4);
         si32(_loc3_,_loc2_);
         ESP = _loc2_;
         F_strchr();
         _loc2_ = int(_loc2_ + 16);
         _loc14_ = int(eax);
         if(_loc14_ != 0)
         {
            if(_loc14_ != _loc3_)
            {
               ESP = _loc2_;
               F___merge_environ();
               _loc12_ = -1;
               var _loc13_:* = int(eax);
               if(_loc13_ != -1)
               {
                  _loc11_ = li32(_envVars);
                  if(_loc11_ == 0)
                  {
                     ESP = _loc2_;
                     F___build_env();
                     _loc12_ = -1;
                     _loc13_ = int(eax);
                     if(_loc13_ != -1)
                     {
                        _loc11_ = li32(_envVars);
                     }
                  }
                  _loc10_ = _loc14_ - _loc3_;
                  _loc12_ = li32(_envVarsTotal);
                  _loc9_ = int(_loc12_ + -1);
                  _loc14_ = li32(_envActive);
                  while(_loc9_ > -1)
                  {
                     _loc8_ = int(_loc9_ * 5);
                     _loc7_ = _loc11_ + int(_loc9_ * 20);
                     _loc13_ = li8(_loc7_ + 17);
                     if(_loc13_ != 0)
                     {
                        _loc1_ = int(_loc11_ + (_loc8_ << 2));
                        _loc5_ = li32(_loc1_ + 8);
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc10_,_loc2_ + 8);
                        si32(_loc3_,_loc2_ + 4);
                        si32(_loc5_,_loc2_);
                        ESP = _loc2_;
                        F_strncmp();
                        _loc2_ = int(_loc2_ + 16);
                        _loc13_ = int(eax);
                        if(_loc13_ == 0)
                        {
                           _loc13_ = int(_loc5_ + _loc10_);
                           _loc13_ = li8(_loc13_);
                           if(_loc13_ == 61)
                           {
                              _loc13_ = int(_loc10_ + li32(_loc1_ + 8));
                              _loc9_ = int(_loc13_ + 1);
                              addr350:
                              if(_loc9_ != 0)
                              {
                                 _loc13_ = li8(_loc7_ + 17);
                                 if(_loc13_ != 0)
                                 {
                                    si32(_loc3_,int(_loc11_ + (_loc8_ << 2)) + 8);
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(li32(_envActive),_loc2_);
                                    ESP = _loc2_;
                                    F___rebuild_environ();
                                    _loc2_ = int(_loc2_ + 16);
                                    _loc12_ = int(eax);
                                 }
                                 else
                                 {
                                    si8(0,_loc7_ + 16);
                                    _loc14_ = int(_loc14_ + -1);
                                    _loc12_ = li32(_envVarsTotal);
                                    break;
                                 }
                              }
                              break;
                           }
                        }
                     }
                     else
                     {
                        _loc13_ = li8(_loc7_ + 16);
                        if(_loc13_ != 0)
                        {
                           _loc13_ = int(_loc11_ + (_loc8_ << 2));
                           _loc13_ = li32(_loc13_);
                           if(_loc13_ == _loc10_)
                           {
                              _loc5_ = int(_loc11_ + (_loc8_ << 2));
                              _loc1_ = li32(_loc5_ + 8);
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc10_,_loc2_ + 8);
                              si32(_loc3_,_loc2_ + 4);
                              si32(_loc1_,_loc2_);
                              ESP = _loc2_;
                              F_strncmp();
                              _loc2_ = int(_loc2_ + 16);
                              _loc13_ = int(eax);
                              if(_loc13_ == 0)
                              {
                                 _loc13_ = int(_loc1_ + _loc10_);
                                 _loc13_ = li8(_loc13_);
                                 if(_loc13_ == 61)
                                 {
                                    _loc9_ = li32(_loc5_ + 12);
                                    §§goto(addr350);
                                 }
                              }
                           }
                        }
                     }
                     _loc9_ = int(_loc9_ + -1);
                  }
                  _loc11_ = int(_loc12_ + 1);
                  si32(_loc11_,_envVarsTotal);
                  _loc8_ = li32(_envVars);
                  _loc13_ = li32(_envVarsSize);
                  if(_loc11_ > _loc13_)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc8_,_loc2_);
                     _loc13_ = int(_loc11_ * 40);
                     si32(_loc13_,_loc2_ + 4);
                     ESP = _loc2_;
                     F_realloc();
                     _loc2_ = int(_loc2_ + 16);
                     _loc8_ = int(eax);
                     if(_loc8_ != 0)
                     {
                        _loc13_ = _loc11_ << 1;
                        si32(_loc13_,_envVarsSize);
                        si32(_loc8_,_envVars);
                     }
                     else
                     {
                        _loc13_ = li32(_envVarsTotal);
                        _loc13_ = int(_loc13_ + -1);
                        si32(_loc13_,_envVarsTotal);
                        _loc12_ = -1;
                     }
                  }
                  _loc13_ = int(_loc12_ * 20);
                  var _loc6_:* = int(_loc8_ + _loc13_);
                  si32(_loc3_,_loc6_ + 8);
                  _loc6_ = li32(_envVars);
                  _loc6_ = int(_loc6_ + _loc13_);
                  si32(-1,_loc6_);
                  _loc6_ = li32(_envVars);
                  _loc6_ = int(_loc6_ + _loc13_);
                  si32(0,_loc6_ + 12);
                  _loc6_ = li32(_envVars);
                  _loc6_ = int(_loc6_ + _loc13_);
                  si32(-1,_loc6_ + 4);
                  _loc6_ = li32(_envVars);
                  _loc6_ = int(_loc6_ + _loc13_);
                  si8(1,_loc6_ + 17);
                  _loc6_ = li32(_envVars);
                  _loc13_ = int(_loc6_ + _loc13_);
                  si8(1,_loc13_ + 16);
                  _loc2_ = int(_loc2_ - 16);
                  _loc13_ = int(_loc14_ + 1);
                  si32(_loc13_,_loc2_);
                  ESP = _loc2_;
                  F___rebuild_environ();
                  _loc2_ = int(_loc2_ + 16);
                  _loc12_ = int(eax);
               }
            }
            addr601:
            eax = _loc12_;
            _loc2_ = _loc4_;
            ESP = _loc2_;
            return;
         }
      }
      ESP = _loc2_;
      F___error();
      _loc13_ = int(eax);
      si32(22,_loc13_);
      _loc12_ = -1;
      §§goto(addr601);
   }
}
