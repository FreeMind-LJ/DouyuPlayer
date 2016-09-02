package sample.xx_etenv_2E_o_3A_A3451165_2D_2A9D_2D_441A_2D_BCA8_2D_D41B459D3F48
{
   import sample.xx.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.li8;
   
   public function F___build_env() : void
   {
      var _loc5_:* = 0;
      var _loc17_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = 0;
      var _loc8_:int = 0;
      var _loc13_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:* = 0;
      var _loc9_:int = 0;
      var _loc15_:* = 0;
      var _loc4_:int = 0;
      var _loc1_:* = 0;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc4_ = 0;
      _loc17_ = li32(_environ);
      if(_loc17_ != 0)
      {
         _loc4_ = 0;
         if(li32(_loc17_) != 0)
         {
            _loc4_ = 0;
            si32(_loc4_,_envVarsTotal);
            var _loc16_:* = li32(_loc17_);
            if(_loc16_ != 0)
            {
               _loc15_ = 0;
               do
               {
                  _loc4_ = _loc15_ + 1;
                  si32(_loc4_,_envVarsTotal);
                  _loc16_ = _loc15_ << 2;
                  _loc16_ = int(_loc17_ + _loc16_);
                  _loc16_ = li32(_loc16_ + 4);
                  _loc15_ = _loc4_;
               }
               while(_loc16_ != 0);
               
            }
            _loc16_ = _loc4_ << 1;
            si32(_loc16_,_envVarsSize);
            _loc3_ = int(_loc3_ - 16);
            _loc16_ = int(_loc4_ * 40);
            si32(_loc16_,_loc3_ + 4);
            si32(1,_loc3_);
            ESP = _loc3_;
            F_calloc();
            _loc3_ = int(_loc3_ + 16);
            _loc16_ = int(eax);
            si32(_loc16_,_envVars);
            if(_loc16_ != 0)
            {
               _loc17_ = li32(_envVarsTotal);
               _loc15_ = int(0 - _loc17_);
               _loc4_ = 0;
               loop1:
               while(true)
               {
                  if(_loc17_ <= 0)
                  {
                     _loc16_ = li32(_environ);
                     si32(_loc16_,_origEnviron);
                     si32(_loc4_,_environ);
                     _loc3_ = int(_loc3_ - 16);
                     si32(li32(_envVarsTotal),_loc3_);
                     ESP = _loc3_;
                     F___rebuild_environ();
                     _loc3_ = int(_loc3_ + 16);
                     _loc16_ = int(eax);
                     if(_loc16_ != 0)
                     {
                        break;
                     }
                  }
                  else
                  {
                     var _loc14_:* = li32(_envVars);
                     si8(_loc4_,int(_loc14_ + int(_loc15_ * -20)) - 3);
                     _loc16_ = int(_loc15_ + li32(_envVarsTotal));
                     _loc14_ = li32(_environ);
                     _loc16_ = int(_loc14_ + (_loc16_ << 2));
                     _loc16_ = li32(_envVars);
                     _loc3_ = int(_loc3_ - 16);
                     si32(li32(_loc16_),_loc3_);
                     _loc14_ = int(_loc15_ * -5);
                     _loc13_ = _loc14_ << 2;
                     ESP = _loc3_;
                     F_strdup();
                     _loc3_ = int(_loc3_ + 16);
                     _loc14_ = int(eax);
                     si32(_loc14_,int(_loc16_ + _loc13_) - 12);
                     _loc16_ = li32(_envVars);
                     _loc12_ = int(_loc16_ + _loc13_);
                     _loc11_ = li32(_loc12_ - 12);
                     if(_loc11_ != 0)
                     {
                        _loc3_ = int(_loc3_ - 16);
                        si32(61,_loc3_ + 4);
                        si32(_loc11_,_loc3_);
                        ESP = _loc3_;
                        F_strchr();
                        _loc3_ = int(_loc3_ + 16);
                        _loc16_ = int(eax);
                        si32(_loc16_,_loc12_ - 8);
                        _loc16_ = li32(_envVars);
                        _loc11_ = int(_loc16_ + _loc13_);
                        _loc12_ = li32(_loc11_ - 8);
                        if(_loc12_ != 0)
                        {
                           _loc16_ = int(_loc12_ + 1);
                           si32(_loc16_,_loc11_ - 8);
                           _loc16_ = li32(_envVars);
                           _loc16_ = int(_loc16_ + _loc13_);
                           _loc3_ = int(_loc3_ - 16);
                           si32(li32(_loc16_ - 8),_loc3_);
                           ESP = _loc3_;
                           F_strlen();
                           _loc3_ = int(_loc3_ + 16);
                           _loc14_ = int(eax);
                           si32(_loc14_,_loc16_ - 16);
                           _loc16_ = li32(_envVars);
                           _loc16_ = int(_loc16_ + _loc13_);
                           var _loc10_:* = li32(_loc16_ - 8);
                           _loc1_ = int(_loc10_ - li32(_loc16_ - 12));
                           _loc12_ = int(_loc1_ + -1);
                           si32(_loc12_,_loc16_ - 20);
                           _loc6_ = li32(_envVars);
                           _loc13_ = int(_loc6_ + _loc13_);
                           _loc7_ = li32(_loc13_ - 12);
                           _loc16_ = li32(_envVarsTotal);
                           _loc8_ = _loc16_ + -1;
                           while(_loc8_ > -1)
                           {
                              _loc9_ = _loc8_ * 5;
                              _loc11_ = int(_loc6_ + int(_loc8_ * 20));
                              _loc16_ = li8(_loc11_ + 17);
                              if(_loc16_ != 0)
                              {
                                 _loc9_ = _loc6_ + (_loc9_ << 2);
                                 _loc2_ = li32(_loc9_ + 8);
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(_loc12_,_loc3_ + 8);
                                 si32(_loc7_,_loc3_ + 4);
                                 si32(_loc2_,_loc3_);
                                 ESP = _loc3_;
                                 F_strncmp();
                                 _loc3_ = int(_loc3_ + 16);
                                 _loc16_ = int(eax);
                                 if(_loc16_ == 0)
                                 {
                                    _loc16_ = int(_loc2_ + _loc12_);
                                    _loc16_ = li8(_loc16_);
                                    if(_loc16_ == 61)
                                    {
                                       _loc16_ = li32(_loc9_ + 8);
                                       _loc1_ = int(_loc16_ + _loc1_);
                                       addr588:
                                       if(_loc1_ != 0)
                                       {
                                          si8(1,_loc11_ + 16);
                                          _loc15_ = int(_loc15_ + 1);
                                          _loc17_ = int(_loc17_ + -1);
                                          continue loop1;
                                       }
                                       break;
                                    }
                                 }
                              }
                              else
                              {
                                 _loc16_ = int(_loc6_ + (_loc9_ << 2));
                                 _loc16_ = li32(_loc16_);
                                 if(_loc16_ == _loc12_)
                                 {
                                    _loc9_ = _loc6_ + (_loc9_ << 2);
                                    _loc2_ = li32(_loc9_ + 8);
                                    _loc3_ = int(_loc3_ - 16);
                                    si32(_loc12_,_loc3_ + 8);
                                    si32(_loc7_,_loc3_ + 4);
                                    si32(_loc2_,_loc3_);
                                    ESP = _loc3_;
                                    F_strncmp();
                                    _loc3_ = int(_loc3_ + 16);
                                    _loc16_ = int(eax);
                                    if(_loc16_ == 0)
                                    {
                                       _loc16_ = int(_loc2_ + _loc12_);
                                       _loc16_ = li8(_loc16_);
                                       if(_loc16_ == 61)
                                       {
                                          _loc1_ = li32(_loc9_ + 12);
                                          §§goto(addr588);
                                       }
                                    }
                                 }
                              }
                              _loc8_ = _loc8_ + -1;
                           }
                           _loc16_ = li32(_loc13_ - 12);
                           _loc3_ = int(_loc3_ - 16);
                           si32(_loc12_,_loc3_ + 8);
                           si32(_loc16_,_loc3_ + 4);
                           si32(_CorruptEnvFindMsg,_loc3_);
                           ESP = _loc3_;
                           F___env_warnx();
                           _loc3_ = int(_loc3_ + 16);
                           ESP = _loc3_;
                           F___error();
                           _loc16_ = int(eax);
                           si32(14,_loc16_);
                           break;
                        }
                        _loc3_ = int(_loc3_ - 16);
                        si32(li32(_loc11_ - 12),_loc3_);
                        ESP = _loc3_;
                        F_strlen();
                        _loc3_ = int(_loc3_ + 16);
                        _loc3_ = int(_loc3_ - 16);
                        si32(int(eax),_loc3_ + 8);
                        si32(li32(_loc11_ - 12),_loc3_ + 4);
                        si32(_CorruptEnvValueMsg,_loc3_);
                        ESP = _loc3_;
                        F___env_warnx();
                        _loc3_ = int(_loc3_ + 16);
                        ESP = _loc3_;
                        F___error();
                        si32(14,int(eax));
                        break;
                     }
                     break;
                  }
               }
            }
            ESP = _loc3_;
            F___error();
            _loc16_ = int(eax);
            _loc16_ = li32(_loc16_);
            _loc3_ = int(_loc3_ - 16);
            si32(1,_loc3_);
            ESP = _loc3_;
            F___clean_env();
            _loc3_ = int(_loc3_ + 16);
            ESP = _loc3_;
            F___error();
            _loc14_ = int(eax);
            si32(_loc16_,_loc14_);
            _loc4_ = -1;
         }
      }
      eax = _loc4_;
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
