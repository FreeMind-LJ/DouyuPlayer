package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import sample.xx_etenv_2E_o_3A_A3451165_2D_2A9D_2D_441A_2D_BCA8_2D_D41B459D3F48.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_setenv() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:int = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      _loc8_ = li32(_loc3_ + 8);
      _loc7_ = li32(_loc3_ + 4);
      _loc6_ = li32(_loc3_);
      if(_loc6_ != 0)
      {
         while(true)
         {
            var _loc5_:* = int(_loc6_ - _loc1_);
            _loc4_ = li8(_loc5_);
            if(_loc4_ != 61)
            {
               if(_loc4_ == 0)
               {
                  if(_loc1_ == 0)
                  {
                     break;
                  }
                  addr162:
                  ESP = _loc2_;
                  F___merge_environ();
                  _loc4_ = -1;
                  _loc5_ = int(eax);
                  if(_loc5_ != -1)
                  {
                     _loc5_ = li32(_envVars);
                     if(_loc5_ == 0)
                     {
                        ESP = _loc2_;
                        F___build_env();
                        _loc4_ = -1;
                        _loc5_ = int(eax);
                        if(_loc5_ != -1)
                        {
                        }
                     }
                     _loc5_ = int(0 - _loc1_);
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc8_,_loc2_ + 12);
                     si32(_loc7_,_loc2_ + 8);
                     si32(_loc5_,_loc2_ + 4);
                     si32(_loc6_,_loc2_);
                     ESP = _loc2_;
                     F___setenv();
                     _loc2_ = int(_loc2_ + 16);
                     _loc4_ = int(eax);
                  }
                  eax = _loc4_;
                  _loc2_ = _loc3_;
                  ESP = _loc2_;
                  return;
               }
               _loc1_ = _loc1_ + -1;
               continue;
            }
            break;
         }
      }
      ESP = _loc2_;
      F___error();
      _loc5_ = int(eax);
      si32(22,_loc5_);
      _loc4_ = -1;
      §§goto(addr162);
   }
}
