package sample.xx_p_2D_demangle_2E_o_3A_4EAE8D64_2D_DBB8_2D_467F_2D_83C7_2D_85C6725F4EAC
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx.eax;
   
   public function F_d_bare_function_type() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      _loc10_ = li32(_loc1_ + 12);
      _loc9_ = li8(_loc10_);
      _loc8_ = li32(_loc3_ + 4);
      if(_loc9_ == 74)
      {
         _loc9_ = int(_loc10_ + 1);
         si32(_loc9_,_loc1_ + 12);
         _loc8_ = 1;
      }
      si32(0,_loc3_ - 4);
      _loc7_ = int(_loc3_ - 4);
      _loc10_ = 0;
      loop0:
      while(true)
      {
         while(true)
         {
            _loc9_ = li32(_loc1_ + 12);
            _loc5_ = li8(_loc9_);
            if(_loc5_ != 0)
            {
               if(_loc5_ != 69)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc1_,_loc2_);
                  ESP = _loc2_;
                  F_d_type();
                  _loc5_ = 0;
                  _loc2_ = int(_loc2_ + 16);
                  _loc6_ = int(eax);
                  if(_loc6_ != 0)
                  {
                     if(_loc8_ == 0)
                     {
                        _loc5_ = li32(_loc1_ + 20);
                        if(_loc5_ < li32(_loc1_ + 24))
                        {
                           var _loc4_:int = _loc5_ + 1;
                           si32(_loc4_,_loc1_ + 20);
                           _loc5_ = int(li32(_loc1_ + 16) + int(_loc5_ * 12));
                           if(_loc5_ != 0)
                           {
                              si32(38,_loc5_);
                              si32(_loc6_,_loc5_ + 4);
                              si32(0,_loc5_ + 8);
                              si32(_loc5_,_loc7_);
                              _loc7_ = int(_loc5_ + 8);
                              continue;
                           }
                        }
                        _loc5_ = 0;
                        si32(_loc5_,_loc7_);
                     }
                     else
                     {
                        _loc8_ = 0;
                        _loc10_ = _loc6_;
                        continue loop0;
                     }
                  }
                  addr339:
                  eax = _loc5_;
                  _loc2_ = _loc3_;
                  ESP = _loc2_;
                  return;
               }
               break;
            }
            break;
         }
         _loc5_ = 0;
         _loc8_ = li32(_loc3_ - 4);
         if(_loc8_ != 0)
         {
            _loc9_ = li32(_loc8_ + 8);
            if(_loc9_ == 0)
            {
               _loc5_ = li32(_loc8_ + 4);
               _loc9_ = li32(_loc5_);
               if(_loc9_ == 33)
               {
                  _loc5_ = li32(_loc5_ + 4);
                  _loc9_ = li32(_loc5_ + 16);
                  if(_loc9_ == 9)
                  {
                     _loc9_ = li32(_loc1_ + 48);
                     _loc9_ = int(_loc9_ - li32(_loc5_ + 4));
                     si32(_loc9_,_loc1_ + 48);
                     _loc8_ = 0;
                     si32(_loc8_,_loc3_ - 4);
                  }
               }
            }
            _loc6_ = li32(_loc1_ + 20);
            _loc9_ = li32(_loc1_ + 24);
            _loc5_ = 0;
            if(_loc6_ < _loc9_)
            {
               _loc7_ = li32(_loc1_ + 16);
               _loc9_ = int(_loc6_ + 1);
               si32(_loc9_,_loc1_ + 20);
               _loc1_ = int(_loc6_ * 12);
               _loc6_ = int(_loc7_ + _loc1_);
               _loc5_ = 0;
               if(_loc6_ != 0)
               {
                  _loc9_ = int(_loc7_ + _loc1_);
                  si32(35,_loc9_);
                  si32(_loc10_,_loc9_ + 4);
                  si32(_loc8_,_loc9_ + 8);
                  _loc5_ = _loc6_;
               }
            }
         }
         §§goto(addr339);
      }
   }
}
