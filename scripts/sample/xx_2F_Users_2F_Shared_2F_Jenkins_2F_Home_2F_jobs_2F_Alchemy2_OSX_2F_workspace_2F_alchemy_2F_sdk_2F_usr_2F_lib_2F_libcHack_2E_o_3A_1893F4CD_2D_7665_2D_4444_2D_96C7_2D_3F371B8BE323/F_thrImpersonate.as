package sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323
{
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   
   public function F_thrImpersonate() : void
   {
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:int = ESP;
      _loc6_ = _loc2_;
      _loc1_ = li32(_loc6_);
      _loc11_ = li32(_loc6_ + 4);
      _loc9_ = li32(_loc6_ + 8);
      _loc8_ = li32(_loc6_ + 12);
      _loc7_ = li32(_loc6_ + 16);
      var _loc5_:int = threadId;
      var _loc10_:int = tcbp;
      var _loc4_:int = _avm2_self_unlock;
      var _loc3_:* = _loc7_;
      var _loc12_:int = 0;
      try
      {
         threadId = _loc1_;
         tcbp = _loc11_;
         if(_loc3_)
         {
            CModule.write32(_loc3_,1);
         }
         CModule.callI(_avm2_self_lock,new Vector.<int>(0));
         _loc1_ = int(CModule.callI(_loc9_,new <int>[_loc8_]));
         if(_loc3_)
         {
            CModule.write32(_loc3_,0);
         }
      }
      catch(e:*)
      {
         if(!_loc3_)
         {
            throw e;
         }
         _loc12_ = 0;
      }
   }
}
