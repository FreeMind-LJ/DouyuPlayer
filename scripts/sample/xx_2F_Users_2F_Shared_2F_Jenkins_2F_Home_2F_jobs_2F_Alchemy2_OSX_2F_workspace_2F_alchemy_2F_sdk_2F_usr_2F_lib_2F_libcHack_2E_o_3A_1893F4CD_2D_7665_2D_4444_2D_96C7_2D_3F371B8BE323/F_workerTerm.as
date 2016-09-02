package sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323
{
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   
   public function F_workerTerm() : void
   {
      var _loc4_:* = 0;
      var _loc2_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc3_:* = int(ESP);
      _loc4_ = _loc3_;
      _loc2_ = li32(_loc4_);
      _loc6_ = li32(_loc4_ + 4);
      _loc5_ = li32(_loc4_ + 8);
      var _loc8_:int = 0;
      var _loc7_:* = workerDomainClass.current.listWorkers();
      for each(var _loc1_ in workerDomainClass.current.listWorkers())
      {
         if(Number(_loc1_.getSharedProperty("flascc.threadId")) == _loc2_)
         {
            if(_loc6_)
            {
               CModule.callI(_avm2_unlock,new <int>[_loc6_]);
            }
            if(_loc5_)
            {
               CModule.callI(_avm2_unlock,new <int>[_loc5_]);
            }
            _loc1_.terminate();
            while(_loc1_.state == "running" || _loc1_.state == "new")
            {
               yield();
            }
            break;
         }
      }
      _loc3_ = _loc4_;
      ESP = _loc3_;
   }
}
