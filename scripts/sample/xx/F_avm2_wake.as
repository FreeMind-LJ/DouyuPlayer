package sample.xx
{
   import avm2.intrinsics.memory.li8;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_avm2_wake() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc9_:int = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li8(_sIsThreaded_2E_b);
      if(_loc1_ == 1)
      {
         threadArbMutexLock();
      }
      _loc10_ = li32(_loc3_);
      _loc9_ = 0;
      _loc8_ = li32(_sArbRequestHead);
      _loc7_ = _loc9_;
      _loc6_ = _loc9_;
      if(_loc8_ != 0)
      {
         do
         {
            _loc1_ = li32(_loc8_ + 8);
            if(_loc1_ == 2)
            {
               if(li32(_loc8_ + 12) == _loc10_)
               {
                  si32(_loc7_,_loc8_ + 4);
                  _loc9_ = 1;
                  _loc7_ = _loc8_;
               }
            }
            _loc8_ = li32(_loc8_);
         }
         while(_loc8_ != 0);
         
         _loc8_ = 0;
         if(_loc7_ != 0)
         {
            do
            {
               _loc5_ = li32(_loc7_ + 16);
               _loc10_ = li32(_loc5_);
               do
               {
                  _loc6_ = _loc10_;
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc6_,_loc2_ + 4);
                  si32(_loc5_,_loc2_);
                  _loc1_ = _loc6_ | -2147483648;
                  si32(_loc1_,_loc2_ + 8);
                  ESP = _loc2_;
                  F_avm2_cmpSwapUns();
                  _loc2_ = int(_loc2_ + 16);
                  _loc10_ = int(eax);
               }
               while(_loc10_ != _loc6_);
               
               if(_loc6_ == 0)
               {
                  var _loc4_:* = li32(_loc7_ + 20);
                  si32(_loc4_,li32(_loc7_ + 16));
                  ESP = _loc2_;
                  F__sync_synchronize();
                  si32(0,_loc7_ + 8);
                  _loc8_ = 1 << (li32(_loc7_ + 24) & 31) | _loc8_;
               }
               else
               {
                  si32(1,_loc7_ + 8);
               }
               _loc7_ = li32(_loc7_ + 4);
            }
            while(_loc7_ != 0);
            
            if(_loc8_ != 0)
            {
               _loc6_ = _loc9_;
               if(li8(_sIsThreaded_2E_b) == 1)
               {
                  ESP = _loc2_;
                  F__sync_synchronize();
                  threadArbCondsNotify(_loc8_);
                  _loc6_ = _loc9_;
               }
               addr249:
               _loc1_ = _loc6_ & 255;
               eax = _loc1_;
               _loc2_ = _loc3_;
               ESP = _loc2_;
               return;
            }
         }
         _loc1_ = _loc9_ & 255;
         _loc6_ = 0;
         if(_loc1_ != 0)
         {
            ESP = _loc2_;
            F__sync_synchronize();
            _loc6_ = _loc9_;
         }
      }
      _loc1_ = li8(_sIsThreaded_2E_b);
      if(_loc1_ == 1)
      {
         threadArbMutexUnlock();
      }
      §§goto(addr249);
   }
}
