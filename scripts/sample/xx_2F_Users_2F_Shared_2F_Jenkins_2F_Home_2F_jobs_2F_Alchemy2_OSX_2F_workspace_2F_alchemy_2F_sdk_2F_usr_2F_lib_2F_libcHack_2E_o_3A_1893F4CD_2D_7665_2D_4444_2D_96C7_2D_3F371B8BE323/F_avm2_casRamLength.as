package sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323
{
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_avm2_casRamLength() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_avm2_haveWorkers_2E_4273);
      if(_loc1_ == -1)
      {
         _loc1_ = int(Boolean(workerClass));
         si32(_loc1_,_avm2_haveWorkers_2E_4273);
      }
      _loc5_ = li32(_loc3_ + 4);
      _loc4_ = li32(_loc3_);
      if(_loc1_ != 0)
      {
         try
         {
            _loc4_ = int(ram.atomicCompareAndSwapLength(_loc4_,_loc5_));
         }
         catch(e:*)
         {
            if(throwWhenOutOfMemory)
            {
               throw e;
            }
            _loc4_ = -1;
         }
      }
      else
      {
         _loc4_ = int(ram.length);
         if(_loc4_ == _loc4_)
         {
            try
            {
               ram.length = _loc5_;
            }
            catch(e:*)
            {
               if(throwWhenOutOfMemory)
               {
                  throw e;
               }
               _loc4_ = -1;
            }
         }
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
