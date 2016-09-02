package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import sample.xx_etenv_2E_o_3A_A3451165_2D_2A9D_2D_441A_2D_BCA8_2D_D41B459D3F48.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F_unsetenv() : void
   {
      var _loc4_:* = 0;
      var _loc14_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:int = 0;
      var _loc6_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:int = 0;
      var _loc11_:* = 0;
      var _loc7_:int = 0;
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = -1;
      _loc14_ = li32(_loc4_);
      if(_loc14_ != 0)
      {
         while(true)
         {
            var _loc13_:* = int(_loc14_ - _loc3_);
            _loc12_ = li8(_loc13_ - 1);
            if(_loc12_ != 61)
            {
               if(_loc12_ == 0)
               {
                  if(_loc3_ == -1)
                  {
                     break;
                  }
                  addr499:
                  ESP = _loc2_;
                  F___merge_environ();
                  _loc11_ = -1;
                  _loc13_ = int(eax);
                  if(_loc13_ != -1)
                  {
                     _loc11_ = li32(_envVars);
                     if(_loc11_ == 0)
                     {
                        ESP = _loc2_;
                        F___build_env();
                        _loc11_ = -1;
                        _loc13_ = int(eax);
                        if(_loc13_ != -1)
                        {
                           _loc11_ = li32(_envVars);
                        }
                     }
                     _loc10_ = _loc3_ ^ -1;
                     _loc12_ = li32(_envVarsTotal);
                     _loc9_ = int(_loc12_ * 20);
                     _loc8_ = _loc11_ + _loc9_;
                     _loc7_ = _loc12_ + -1;
                     _loc11_ = 0;
                     _loc1_ = _loc11_;
                     while(_loc7_ > -1)
                     {
                        _loc5_ = _loc8_ - _loc1_;
                        _loc13_ = li8(_loc5_ - 3);
                        if(_loc13_ != 0)
                        {
                           _loc6_ = li32(_loc5_ - 12);
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc10_,_loc2_ + 8);
                           si32(_loc14_,_loc2_ + 4);
                           si32(_loc6_,_loc2_);
                           ESP = _loc2_;
                           F_strncmp();
                           _loc2_ = int(_loc2_ + 16);
                           _loc13_ = int(eax);
                           if(_loc13_ == 0)
                           {
                              _loc13_ = int(_loc6_ - _loc3_);
                              _loc13_ = li8(_loc13_ - 1);
                              if(_loc13_ == 61)
                              {
                                 _loc13_ = li32(_loc5_ - 12);
                                 _loc3_ = int(_loc13_ - _loc3_);
                                 addr333:
                                 _loc11_ = 0;
                                 if(_loc3_ != 0)
                                 {
                                    _loc11_ = 0;
                                    si8(_loc11_,_loc5_ - 4);
                                    _loc3_ = li32(_envVars);
                                    _loc13_ = int(_loc3_ + _loc9_);
                                    _loc10_ = int(_loc13_ - _loc1_);
                                    _loc13_ = li8(_loc10_ - 3);
                                    if(_loc13_ != 0)
                                    {
                                       _loc14_ = li32(_envVarsTotal);
                                       _loc9_ = int(_loc14_ + -1);
                                       si32(_loc9_,_envVarsTotal);
                                       if(_loc9_ > _loc7_)
                                       {
                                          _loc13_ = int(_loc14_ - _loc12_);
                                          _loc13_ = int(_loc13_ * 20);
                                          _loc2_ = int(_loc2_ - 16);
                                          si32(int(_loc13_ + _loc1_),_loc2_ + 8);
                                          si32(_loc10_,_loc2_ + 4);
                                          _loc13_ = int(_loc10_ + -20);
                                          si32(_loc13_,_loc2_);
                                          ESP = _loc2_;
                                          Fmemmove();
                                          _loc2_ = int(_loc2_ + 16);
                                          _loc3_ = li32(_envVars);
                                          _loc9_ = li32(_envVarsTotal);
                                       }
                                       _loc13_ = int(_loc9_ * 20);
                                       _loc13_ = int(_loc3_ + _loc13_);
                                       si32(_loc11_,_loc13_ + 16);
                                       si32(_loc11_,_loc13_ + 12);
                                       si32(_loc11_,_loc13_ + 8);
                                       si32(_loc11_,_loc13_ + 4);
                                       si32(_loc11_,_loc13_);
                                    }
                                    _loc13_ = li32(_envActive);
                                    _loc2_ = int(_loc2_ - 16);
                                    _loc13_ = int(_loc13_ + -1);
                                    si32(_loc13_,_loc2_);
                                    ESP = _loc2_;
                                    F___rebuild_environ();
                                    _loc2_ = int(_loc2_ + 16);
                                    break;
                                 }
                                 break;
                              }
                           }
                        }
                        else
                        {
                           _loc13_ = li8(_loc5_ - 4);
                           if(_loc13_ != 0)
                           {
                              _loc13_ = int(_loc3_ + li32(_loc5_ - 20));
                              if(_loc13_ == -1)
                              {
                                 _loc6_ = li32(_loc5_ - 12);
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc10_,_loc2_ + 8);
                                 si32(_loc14_,_loc2_ + 4);
                                 si32(_loc6_,_loc2_);
                                 ESP = _loc2_;
                                 F_strncmp();
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc13_ = int(eax);
                                 if(_loc13_ == 0)
                                 {
                                    _loc13_ = int(_loc6_ - _loc3_);
                                    _loc13_ = li8(_loc13_ - 1);
                                    if(_loc13_ == 61)
                                    {
                                       _loc3_ = li32(_loc5_ - 8);
                                       §§goto(addr333);
                                    }
                                 }
                              }
                           }
                        }
                        _loc7_ = _loc7_ + -1;
                        _loc1_ = int(_loc1_ + 20);
                     }
                  }
                  eax = _loc11_;
                  _loc2_ = _loc4_;
                  ESP = _loc2_;
                  return;
               }
               _loc3_ = int(_loc3_ + -1);
               continue;
            }
            break;
         }
      }
      ESP = _loc2_;
      F___error();
      _loc13_ = int(eax);
      si32(22,_loc13_);
      _loc11_ = -1;
      §§goto(addr499);
   }
}
