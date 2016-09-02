package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323._delegateExitToActiveConsoleThunk;
   
   public function F__exit() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:int = ESP;
      _loc3_ = _loc2_;
      _loc2_ = _loc2_ - 16;
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_ + 4);
      si32(_delegateExitToActiveConsoleThunk,_loc2_);
      ESP = _loc2_;
      F_avm2_ui_thunk();
      _loc2_ = _loc2_ + 16;
      var _loc4_:int = eax;
      if(_loc4_ == 0)
      {
         throw new Exit(_loc1_);
      }
      ESP = _loc3_;
   }
}
