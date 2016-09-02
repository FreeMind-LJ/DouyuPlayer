package sample.xx_etenv_2E_o_3A_A3451165_2D_2A9D_2D_441A_2D_BCA8_2D_D41B459D3F48
{
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   
   public function F___merge_environ() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      _loc7_ = li32(_intEnviron);
      if(_loc7_ != 0)
      {
         _loc6_ = li32(_envActive);
         _loc5_ = li32(_environ);
         if(_loc5_ == _loc7_)
         {
            _loc1_ = 0;
            if(_loc6_ >= 1)
            {
               _loc1_ = 0;
               if(li32(_loc5_) == 0)
               {
                  addr55:
                  si32(0,_origEnviron);
                  _loc2_ = int(_loc2_ - 16);
                  si32(0,_loc2_);
                  ESP = _loc2_;
                  F___clean_env();
                  _loc2_ = int(_loc2_ + 16);
                  _loc5_ = li32(_environ);
               }
            }
         }
         else if(_loc6_ >= 1)
         {
            §§goto(addr55);
         }
         si32(_loc5_,_origEnviron);
         _loc1_ = 0;
         if(_loc5_ != 0)
         {
            while(true)
            {
               _loc7_ = li32(_loc5_);
               _loc1_ = 0;
               if(_loc7_ != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(61,_loc2_ + 4);
                  si32(_loc7_,_loc2_);
                  ESP = _loc2_;
                  F_strchr();
                  _loc2_ = int(_loc2_ + 16);
                  _loc1_ = eax;
                  if(_loc1_ == 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc7_,_loc2_);
                     ESP = _loc2_;
                     F_strlen();
                     _loc2_ = int(_loc2_ + 16);
                     _loc2_ = int(_loc2_ - 16);
                     si32(int(eax),_loc2_ + 8);
                     si32(_loc7_,_loc2_ + 4);
                     si32(_CorruptEnvValueMsg,_loc2_);
                     ESP = _loc2_;
                     F___env_warnx();
                     _loc2_ = int(_loc2_ + 16);
                     ESP = _loc2_;
                     F___error();
                     si32(14,int(eax));
                     _loc1_ = -1;
                     break;
                  }
                  _loc2_ = int(_loc2_ - 16);
                  si32(1,_loc2_ + 12);
                  var _loc4_:int = _loc1_ + 1;
                  si32(_loc4_,_loc2_ + 8);
                  si32(_loc7_,_loc2_);
                  _loc4_ = _loc1_ - _loc7_;
                  si32(_loc4_,_loc2_ + 4);
                  ESP = _loc2_;
                  F___setenv();
                  _loc1_ = -1;
                  _loc2_ = int(_loc2_ + 16);
                  _loc4_ = eax;
                  if(_loc4_ != -1)
                  {
                     _loc5_ = int(_loc5_ + 4);
                     continue;
                  }
                  break;
               }
               break;
            }
         }
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
