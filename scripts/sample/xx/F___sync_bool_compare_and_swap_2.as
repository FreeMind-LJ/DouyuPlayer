package sample.xx
{
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323.*;
   
   public function F___sync_bool_compare_and_swap_2() : void
   {
      var _loc1_:int = ESP;
      var _loc2_:* = _loc1_;
      ESP = _loc1_ & -16;
      trace(new Error().getStackTrace() + "\n");
      ESP = _loc1_ & -16;
      trace("FlasCC does not support CAS on a non-32bit values..");
      ESP = _loc1_;
      F_abort();
   }
}
