package sample.xx_etenv_2E_o_3A_A3451165_2D_2A9D_2D_441A_2D_BCA8_2D_D41B459D3F48
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F___setenv() : void
   {
      var _loc6_:* = 0;
      var _loc17_:* = 0;
      var _loc15_:int = 0;
      var _loc2_:* = 0;
      var _loc12_:int = 0;
      var _loc4_:* = 0;
      var _loc16_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:int = 0;
      var _loc13_:* = 0;
      var _loc18_:* = 0;
      var _loc14_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc3_:* = int(ESP);
      _loc6_ = _loc3_;
      _loc4_ = li32(_envActive);
      _loc18_ = li32(_envVarsTotal);
      _loc3_ = int(_loc3_ - 16);
      _loc17_ = li32(_loc6_ + 8);
      si32(_loc17_,_loc3_);
      ESP = _loc3_;
      F_strlen();
      _loc16_ = int(_loc18_ * 20);
      _loc3_ = int(_loc3_ + 16);
      _loc15_ = eax;
      _loc14_ = li32(_envVars);
      _loc13_ = int(_loc14_ + _loc16_);
      _loc12_ = _loc18_ + -1;
      _loc11_ = 0;
      _loc1_ = li32(_loc6_ + 12);
      _loc7_ = li32(_loc6_ + 4);
      _loc8_ = li32(_loc6_);
      while(_loc12_ > -1)
      {
         _loc9_ = int(_loc13_ - _loc11_);
         var _loc10_:* = li8(_loc9_ - 3);
         if(_loc10_ != 0)
         {
            _loc2_ = li32(_loc9_ - 12);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc7_,_loc3_ + 8);
            si32(_loc8_,_loc3_ + 4);
            si32(_loc2_,_loc3_);
            ESP = _loc3_;
            F_strncmp();
            _loc3_ = int(_loc3_ + 16);
            _loc10_ = int(eax);
            if(_loc10_ == 0)
            {
               _loc10_ = int(_loc2_ + _loc7_);
               _loc10_ = li8(_loc10_);
               if(_loc10_ == 61)
               {
                  _loc10_ = int(_loc7_ + li32(_loc9_ - 12));
                  _loc13_ = int(_loc10_ + 1);
                  addr274:
                  if(_loc13_ != 0)
                  {
                     _loc10_ = li8(_loc9_ - 4);
                     if(_loc10_ != 0)
                     {
                        _loc14_ = 0;
                        if(_loc1_ != 0)
                        {
                           si8(0,_loc9_ - 4);
                           _loc4_ = int(_loc4_ + -1);
                           _loc14_ = li32(_envVars);
                        }
                        addr828:
                        eax = _loc14_;
                        _loc3_ = _loc6_;
                        ESP = _loc3_;
                        return;
                     }
                     _loc1_ = int(_loc14_ + _loc16_);
                     _loc9_ = int(_loc1_ - _loc11_);
                     _loc10_ = li8(_loc9_ - 3);
                     if(_loc10_ != 0)
                     {
                        _loc16_ = li32(_envVarsTotal);
                        _loc9_ = int(_loc16_ + -1);
                        si32(_loc9_,_envVarsTotal);
                        if(_loc9_ > _loc12_)
                        {
                           _loc10_ = int(_loc16_ - _loc18_);
                           _loc10_ = int(_loc10_ * 20);
                           _loc3_ = int(_loc3_ - 16);
                           si32(int(_loc10_ + _loc11_),_loc3_ + 8);
                           _loc10_ = int(_loc1_ + -20);
                           _loc10_ = int(_loc10_ - _loc11_);
                           si32(_loc10_,_loc3_);
                           _loc10_ = int(_loc10_ + 20);
                           si32(_loc10_,_loc3_ + 4);
                           ESP = _loc3_;
                           Fmemmove();
                           _loc3_ = int(_loc3_ + 16);
                           _loc14_ = li32(_envVars);
                           _loc9_ = li32(_envVarsTotal);
                        }
                        _loc10_ = int(_loc9_ * 20);
                        _loc10_ = int(_loc14_ + _loc10_);
                        si32(0,_loc10_ + 16);
                        si32(0,_loc10_ + 12);
                        si32(0,_loc10_ + 8);
                        si32(0,_loc10_ + 4);
                        si32(0,_loc10_);
                        _loc18_ = _loc9_;
                        break;
                     }
                     _loc10_ = li32(_loc9_ - 16);
                     if(uint(_loc10_) < uint(_loc15_))
                     {
                        _loc18_ = li32(_envVarsTotal);
                        break;
                     }
                     addr733:
                     _loc8_ = li32(_loc9_ - 8);
                     _loc7_ = 1;
                     _loc18_ = _loc12_;
                     _loc3_ = int(_loc3_ - 16);
                     si32(_loc17_,_loc3_ + 4);
                     si32(_loc8_,_loc3_);
                     ESP = _loc3_;
                     F_strcpy();
                     _loc3_ = int(_loc3_ + 16);
                     _loc10_ = int(_loc18_ * 20);
                     var _loc5_:* = li32(_envVars);
                     _loc5_ = int(_loc5_ + _loc10_);
                     si32(_loc8_,_loc5_ + 12);
                     _loc5_ = li32(_envVars);
                     _loc10_ = int(_loc5_ + _loc10_);
                     si8(1,_loc10_ + 16);
                     _loc4_ = int(_loc4_ + 1);
                     if(_loc7_ == 1)
                     {
                        _loc14_ = 0;
                        if(_loc4_ != li32(_envActive))
                        {
                        }
                        §§goto(addr828);
                     }
                     _loc3_ = int(_loc3_ - 16);
                     si32(_loc4_,_loc3_);
                     ESP = _loc3_;
                     F___rebuild_environ();
                     _loc3_ = int(_loc3_ + 16);
                     _loc14_ = int(eax);
                     §§goto(addr828);
                  }
                  break;
               }
            }
         }
         else
         {
            _loc10_ = li32(_loc9_ - 20);
            if(_loc10_ == _loc7_)
            {
               _loc2_ = li32(_loc9_ - 12);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc7_,_loc3_ + 8);
               si32(_loc8_,_loc3_ + 4);
               si32(_loc2_,_loc3_);
               ESP = _loc3_;
               F_strncmp();
               _loc3_ = int(_loc3_ + 16);
               _loc10_ = int(eax);
               if(_loc10_ == 0)
               {
                  _loc10_ = int(_loc2_ + _loc7_);
                  _loc10_ = li8(_loc10_);
                  if(_loc10_ == 61)
                  {
                     _loc13_ = li32(_loc9_ - 8);
                     §§goto(addr274);
                  }
               }
            }
         }
         _loc12_ = _loc12_ + -1;
         _loc11_ = _loc11_ + 20;
      }
      _loc12_ = _loc18_ + 1;
      si32(_loc12_,_envVarsTotal);
      _loc10_ = li32(_envVarsSize);
      if(_loc12_ > _loc10_)
      {
         _loc3_ = int(_loc3_ - 16);
         si32(_loc14_,_loc3_);
         _loc10_ = int(_loc12_ * 40);
         si32(_loc10_,_loc3_ + 4);
         ESP = _loc3_;
         F_realloc();
         _loc3_ = int(_loc3_ + 16);
         _loc14_ = int(eax);
         if(_loc14_ != 0)
         {
            _loc10_ = _loc12_ << 1;
            si32(_loc10_,_envVarsSize);
            si32(_loc14_,_envVars);
         }
         else
         {
            _loc10_ = li32(_envVarsTotal);
            _loc10_ = int(_loc10_ + -1);
            si32(_loc10_,_envVarsTotal);
            _loc14_ = -1;
         }
         §§goto(addr828);
      }
      _loc10_ = int(_loc7_ + _loc15_);
      _loc10_ = int(_loc10_ + 2);
      _loc3_ = int(_loc3_ - 16);
      si32(_loc10_,_loc3_);
      _loc12_ = _loc18_ * 20;
      _loc10_ = int(_loc14_ + _loc12_);
      ESP = _loc3_;
      F_malloc();
      _loc3_ = int(_loc3_ + 16);
      _loc5_ = int(eax);
      si32(_loc5_,_loc10_ + 8);
      _loc10_ = li32(_envVars);
      _loc14_ = int(_loc10_ + _loc12_);
      _loc10_ = li32(_loc14_ + 8);
      if(_loc10_ == 0)
      {
         _loc10_ = li32(_envVarsTotal);
         _loc10_ = int(_loc10_ + -1);
         si32(_loc10_,_envVarsTotal);
         _loc14_ = -1;
      }
      else
      {
         si32(_loc7_,_loc14_);
         _loc10_ = li32(_envVars);
         si32(_loc15_,int(_loc10_ + _loc12_) + 4);
         _loc10_ = li32(_envVars);
         _loc10_ = int(_loc10_ + _loc12_);
         _loc3_ = int(_loc3_ - 16);
         si32(_loc8_,_loc3_ + 4);
         si32(li32(_loc10_ + 8),_loc3_);
         ESP = _loc3_;
         F_stpcpy();
         _loc3_ = int(_loc3_ + 16);
         _loc8_ = int(eax);
         _loc10_ = li32(_envVars);
         _loc10_ = int(_loc10_ + _loc12_);
         _loc10_ = li32(_loc10_ + 8);
         _loc10_ = int(_loc10_ + _loc7_);
         _loc7_ = 0;
         if(li8(_loc10_) != 61)
         {
            _loc3_ = int(_loc3_ - 16);
            si32(L__2E_str,_loc3_ + 4);
            si32(_loc8_,_loc3_);
            ESP = _loc3_;
            F_stpcpy();
            _loc7_ = 0;
            _loc3_ = int(_loc3_ + 16);
            _loc8_ = int(eax);
         }
         §§goto(addr733);
      }
      §§goto(addr828);
   }
}
