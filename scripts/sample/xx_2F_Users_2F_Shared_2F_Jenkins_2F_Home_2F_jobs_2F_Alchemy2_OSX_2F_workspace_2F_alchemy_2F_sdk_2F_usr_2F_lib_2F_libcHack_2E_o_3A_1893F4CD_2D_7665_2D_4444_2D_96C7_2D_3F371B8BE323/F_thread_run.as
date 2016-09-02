package sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323
{
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_thread_run() : void
   {
      var _loc6_:* = 0;
      var _loc13_:* = 0;
      var _loc14_:* = 0;
      var _loc17_:int = 0;
      var _loc15_:int = 0;
      var _loc8_:int = 0;
      var _loc12_:int = 0;
      var _loc10_:int = 0;
      var _loc18_:int = 0;
      var _loc16_:* = 0;
      var _loc1_:int = 0;
      var _loc7_:int = 0;
      var _loc9_:* = 0;
      var _loc5_:int = 0;
      var _loc3_:* = int(ESP);
      _loc6_ = _loc3_;
      var _loc4_:* = li32(_loc6_);
      _loc4_ = li32(_loc4_ + 4);
      tcbp = _loc4_;
      _loc18_ = _sLock_2E_3947;
      _loc17_ = tcbp;
      if(_loc17_ != -1)
      {
         _loc18_ = _loc17_ + 16;
      }
      _loc16_ = li32(_sLock_2E_3947);
      if(_loc16_ == -1)
      {
         _loc4_ = int(realThreadId);
         _loc16_ = int(_loc4_ + 1);
         si32(_loc16_,_sLock_2E_3947);
      }
      if(_loc16_ != 0)
      {
         if(_loc18_ != _sLock_2E_3947)
         {
            si32(_loc16_,_loc18_);
            si32(0,_sLock_2E_3947);
         }
      }
      _loc4_ = int(realThreadId);
      _loc15_ = _loc4_ + 1;
      _loc4_ = li32(_loc18_);
      _loc4_ = _loc4_ & 2147483647;
      if(_loc4_ != _loc15_)
      {
         _loc3_ = int(_loc3_ - 16);
         si32(_loc15_,_loc3_ + 4);
         si32(_loc18_,_loc3_);
         ESP = _loc3_;
         F_avm2_lock_id();
         _loc3_ = int(_loc3_ + 16);
      }
      _loc14_ = li32(_loc6_ + 8);
      _loc13_ = li32(_loc6_ + 4);
      _loc12_ = tcbp;
      if(_loc12_ == -1)
      {
         li32(_sCounter_2E_3962);
         _loc1_ = _sCounter_2E_3962;
      }
      else
      {
         _loc1_ = _loc12_ + 20;
         _loc4_ = li32(_sCounter_2E_3962);
         if(_loc4_ != 0)
         {
            if(_loc1_ != _sCounter_2E_3962)
            {
               _loc4_ = li32(_sCounter_2E_3962);
               si32(_loc4_,_loc1_);
               si32(0,_sCounter_2E_3962);
            }
         }
      }
      _loc4_ = li32(_loc1_);
      _loc4_ = int(_loc4_ + 1);
      si32(_loc4_,_loc1_);
      _loc3_ = int(_loc3_ - 16);
      si32(_loc14_,_loc3_);
      ESP = _loc3_;
      ptr2fun[_loc13_]();
      _loc3_ = int(_loc3_ + 16);
      _loc7_ = _sLock_2E_3947;
      _loc8_ = tcbp;
      if(_loc8_ != -1)
      {
         _loc7_ = _loc8_ + 16;
      }
      _loc9_ = li32(_sLock_2E_3947);
      if(_loc9_ == -1)
      {
         _loc4_ = int(realThreadId);
         _loc9_ = int(_loc4_ + 1);
         si32(_loc9_,_sLock_2E_3947);
      }
      if(_loc9_ != 0)
      {
         if(_loc7_ != _sLock_2E_3947)
         {
            si32(_loc9_,_loc7_);
            si32(0,_sLock_2E_3947);
         }
      }
      _loc10_ = tcbp;
      if(_loc10_ == -1)
      {
         li32(_sCounter_2E_3962);
         _loc5_ = _sCounter_2E_3962;
      }
      else
      {
         _loc5_ = _loc10_ + 20;
         _loc4_ = li32(_sCounter_2E_3962);
         if(_loc4_ != 0)
         {
            if(_loc5_ != _sCounter_2E_3962)
            {
               _loc4_ = li32(_sCounter_2E_3962);
               si32(_loc4_,_loc5_);
               si32(0,_sCounter_2E_3962);
            }
         }
      }
      _loc4_ = li32(_loc5_);
      _loc4_ = int(_loc4_ + -1);
      si32(_loc4_,_loc5_);
      if(_loc4_ == 0)
      {
         _loc3_ = int(_loc3_ - 16);
         si32(_loc7_,_loc3_);
         ESP = _loc3_;
         F_avm2_unlock();
         _loc3_ = int(_loc3_ + 16);
      }
      _loc3_ = _loc6_;
      ESP = _loc3_;
   }
}
