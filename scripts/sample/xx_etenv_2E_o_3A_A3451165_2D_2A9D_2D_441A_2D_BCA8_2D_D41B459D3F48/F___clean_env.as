package sample.xx_etenv_2E_o_3A_A3451165_2D_2A9D_2D_441A_2D_BCA8_2D_D41B459D3F48
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.si8;
   
   public function F___clean_env() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:int = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_envVars);
      if(_loc1_ != 0)
      {
         _loc11_ = li32(_loc3_);
         _loc10_ = li32(_envVarsTotal);
         if(_loc10_ >= 1)
         {
            _loc9_ = int(0 - _loc10_);
            _loc8_ = int(_loc10_ * 20);
            _loc10_ = int(_loc10_ + -1);
            while(true)
            {
               _loc7_ = _loc1_ + _loc8_;
               var _loc6_:* = li8(_loc7_ - 3);
               if(_loc6_ != 0)
               {
                  if(_loc11_ == 0)
                  {
                     _loc5_ = li32(_envVarsTotal);
                     _loc4_ = int(_loc5_ + -1);
                     si32(_loc4_,_envVarsTotal);
                     if(_loc4_ > _loc10_)
                     {
                        _loc6_ = int(_loc9_ + _loc5_);
                        _loc2_ = int(_loc2_ - 16);
                        si32(int(_loc6_ * 20),_loc2_ + 8);
                        si32(_loc7_,_loc2_ + 4);
                        _loc6_ = int(_loc7_ + -20);
                        si32(_loc6_,_loc2_);
                        ESP = _loc2_;
                        Fmemmove();
                        _loc2_ = int(_loc2_ + 16);
                        _loc1_ = li32(_envVars);
                        _loc4_ = li32(_envVarsTotal);
                     }
                     _loc6_ = int(_loc4_ * 20);
                     _loc6_ = int(_loc1_ + _loc6_);
                     si32(0,_loc6_ + 16);
                     si32(0,_loc6_ + 12);
                     si32(0,_loc6_ + 8);
                     si32(0,_loc6_ + 4);
                     si32(0,_loc6_);
                  }
               }
               else if(_loc11_ != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(li32(_loc7_ - 12),_loc2_);
                  ESP = _loc2_;
                  F_free();
                  _loc2_ = int(_loc2_ + 16);
               }
               else
               {
                  si8(0,_loc7_ - 4);
               }
               if(_loc10_ != 0)
               {
                  _loc9_ = int(_loc9_ + 1);
                  _loc8_ = int(_loc8_ + -20);
                  _loc10_ = int(_loc10_ + -1);
                  _loc1_ = li32(_envVars);
                  continue;
               }
               break;
            }
         }
         if(_loc11_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(li32(_envVars),_loc2_);
            ESP = _loc2_;
            F_free();
            _loc2_ = int(_loc2_ + 16);
            si32(0,_envVars);
         }
         else
         {
            si32(0,_envActive);
         }
         _loc8_ = li32(_origEnviron);
         if(_loc8_ != 0)
         {
            _loc9_ = li32(_intEnviron);
            _loc6_ = li32(_environ);
            if(_loc6_ == _loc9_)
            {
               si32(_loc8_,_environ);
            }
            _loc2_ = int(_loc2_ - 16);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F_free();
            _loc2_ = int(_loc2_ + 16);
            si32(0,_intEnviron);
            si32(0,_environSize);
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
