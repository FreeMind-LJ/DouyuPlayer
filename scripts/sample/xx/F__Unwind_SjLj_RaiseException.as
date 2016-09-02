package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_nwind_2D_sjlj_2E_o_3A_AB7D2B82_2D_CFCA_2D_47B6_2D_8B3C_2D_7E9171E8B0E4.*;
   
   public function F__Unwind_SjLj_RaiseException() : void
   {
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:int = 0;
      var _loc5_:int = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_use_fc_key);
      if(_loc1_ <= -1)
      {
         ESP = _loc2_;
         F_fc_key_init_once();
         _loc1_ = li32(_use_fc_key);
      }
      _loc12_ = li32(_loc3_);
      if(_loc1_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(li32(_fc_key),_loc2_);
         ESP = _loc2_;
         F_pthread_getspecific();
         _loc2_ = int(_loc2_ + 16);
         _loc10_ = int(eax);
      }
      else
      {
         _loc10_ = li32(_fc_static);
      }
      _loc9_ = _loc10_;
      while(true)
      {
         si32(_loc9_,_loc3_ - 8);
         _loc8_ = 5;
         if(_loc9_ != 0)
         {
            _loc7_ = li32(_loc9_ + 24);
            if(_loc7_ != 0)
            {
               _loc2_ = int(_loc2_ - 32);
               _loc5_ = _loc3_ - 8;
               si32(_loc5_,_loc2_ + 20);
               si32(_loc12_,_loc2_ + 16);
               si32(li32(_loc12_ + 4),_loc2_ + 12);
               si32(li32(_loc12_),_loc2_ + 8);
               si32(1,_loc2_ + 4);
               si32(1,_loc2_);
               ESP = _loc2_;
               ptr2fun[_loc7_]();
               _loc2_ = int(_loc2_ + 32);
               _loc4_ = eax;
               if(_loc4_ != 6)
               {
                  _loc8_ = 3;
                  if(_loc4_ == 8)
                  {
                     _loc9_ = li32(_loc3_ - 8);
                  }
                  else
                  {
                     break;
                  }
               }
               else
               {
                  si32(0,_loc12_ + 12);
                  var _loc11_:* = li32(_loc3_ - 8);
                  si32(_loc11_,_loc12_ + 16);
                  si32(_loc10_,_loc3_ - 8);
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc5_,_loc2_ + 4);
                  si32(_loc12_,_loc2_);
                  ESP = _loc2_;
                  F__Unwind_RaiseException_Phase2();
                  _loc2_ = int(_loc2_ + 16);
                  _loc8_ = eax;
                  if(_loc8_ == 7)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc5_,_loc2_);
                     ESP = _loc2_;
                     F_uw_install_context();
                     _loc2_ = int(_loc2_ + 16);
                     break;
                  }
                  break;
               }
            }
            _loc9_ = li32(_loc9_);
            continue;
         }
         break;
      }
      eax = _loc8_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
