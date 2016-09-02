package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_crt1_c_2E_o_3A_B1C6E0DF_2D_BD34_2D_4C12_2D_8223_2D_B8FF98B6BE26.*;
   
   public function F__start1() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:int = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:int = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc9_ = _loc1_ << 2;
      _loc8_ = li32(_loc3_ + 8);
      _loc9_ = int(_loc9_ + _loc8_);
      _loc7_ = _loc9_ + 4;
      si32(_loc7_,_environ);
      if(_loc1_ >= 1)
      {
         _loc6_ = li32(_loc8_);
         if(_loc6_ != 0)
         {
            si32(_loc6_,___progname);
            _loc5_ = 0;
            while(true)
            {
               _loc9_ = int(_loc6_ + _loc5_);
               _loc4_ = li8(_loc9_);
               if(_loc4_ != 0)
               {
                  if(_loc4_ != 47)
                  {
                     _loc5_ = _loc5_ + 1;
                  }
                  else
                  {
                     _loc5_ = _loc5_ + 1;
                     _loc9_ = int(_loc6_ + _loc5_);
                     si32(_loc9_,___progname);
                  }
                  continue;
               }
               break;
            }
         }
      }
      ESP = _loc2_;
      F__init_tls();
      _loc2_ = _loc2_ - 16;
      si32(__fini,_loc2_);
      ESP = _loc2_;
      F_atexit();
      _loc2_ = _loc2_ + 16;
      ESP = _loc2_;
      F__init();
      _loc2_ = _loc2_ - 16;
      si32(_loc7_,_loc2_ + 8);
      si32(_loc8_,_loc2_ + 4);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_main();
      _loc2_ = _loc2_ + 16;
      _loc2_ = _loc2_ - 16;
      si32(int(eax),_loc2_);
      ESP = _loc2_;
      F_exit();
      _loc2_ = _loc2_ + 16;
   }
}
