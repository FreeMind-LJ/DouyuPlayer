package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   
   public function F_tprintf() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16400);
      _loc1_ = li32(_avm2_haveWorkers_2E_4273);
      if(_loc1_ == -1)
      {
         _loc1_ = int(Boolean(workerClass));
         si32(_loc1_,_avm2_haveWorkers_2E_4273);
      }
      if(_loc1_ != 0)
      {
         var _loc8_:* = int(threadId);
         _loc8_ = int(_loc8_ + 8);
         _loc7_ = _loc8_ & 255;
         _loc6_ = -1;
         if(int(ram.atomicCompareAndSwapIntAt(int(_sEntered_2E_5493 + (_loc7_ << 2)),0,1)) == 0)
         {
         }
         addr180:
         eax = _loc6_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      var _loc5_:* = li32(_loc3_);
      _loc8_ = int(_loc3_ + 4);
      si32(_loc8_,_loc3_ - 16388);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc8_,_loc2_ + 12);
      si32(_loc5_,_loc2_ + 8);
      si32(16384,_loc2_ + 4);
      _loc1_ = int(_loc3_ - 16384);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_vsnprintf();
      _loc2_ = int(_loc2_ + 16);
      _loc6_ = int(eax);
      if(_loc6_ >= 1)
      {
         _loc4_ = int(_loc6_ + -1);
         _loc8_ = int(_loc1_ + _loc4_);
         _loc8_ = li8(_loc8_);
         if(_loc8_ != 10)
         {
            _loc4_ = _loc6_;
         }
         _loc6_ = _loc4_;
         if(_loc4_ >= 1)
         {
            trace(CModule.readString(_loc1_,_loc4_));
            _loc6_ = _loc4_;
         }
      }
      _loc8_ = _loc7_ << 2;
      _loc8_ = int(_sEntered_2E_5493 + _loc8_);
      si32(0,_loc8_);
      §§goto(addr180);
   }
}
