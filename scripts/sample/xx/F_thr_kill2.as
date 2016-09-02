package sample.xx
{
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F_thr_kill2() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc6_:* = 0;
      var _loc5_:int = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      ESP = _loc2_;
      F_getpid();
      _loc1_ = eax;
      _loc6_ = li32(_loc3_);
      if(_loc1_ == _loc6_)
      {
         _loc6_ = li32(_loc3_ + 4);
         _loc6_ = int(_loc6_ + -8);
         si32(_loc6_,_loc3_ - 16);
         _loc5_ = _loc3_ - 16;
         _loc4_ = 0;
         si32(_loc4_,_loc5_ | 4);
         si8(_loc4_,_loc3_ - 8);
         if(li32(_loc3_ + 8) != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F_callOnAuxStack();
            _loc4_ = 0;
            _loc2_ = int(_loc2_ + 16);
            if(int(eax) == 0)
            {
               ESP = _loc2_;
               F___error();
               si32(22,int(eax));
               _loc4_ = -1;
            }
         }
      }
      else
      {
         ESP = _loc2_;
         F___error();
         si32(22,int(eax));
         _loc4_ = -1;
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
