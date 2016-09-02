package sample.xx_ern_umtx_2E_o_3A_11C72270_2D_A3AB_2D_4798_2D_8F10_2D_4F543D95D387
{
   import sample.xx.ram;
   import avm2.intrinsics.memory.si32;
   
   function modDataInit_C_Run_kern_umtx_2E_o_3A_11C72270_2D_A3AB_2D_4798_2D_8F10_2D_4F543D95D387(param1:Object) : void
   {
      var _loc5_:int = param1[".bss"][0];
      ram.position = _loc5_;
      ram.writeBytes(new DS0());
      var _loc4_:int = param1[".data.rel.ro.local"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS1());
      var _loc3_:int = param1[".ctors"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS2());
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS3());
      si32(___umtx_op_lock_umtx,_loc4_ + 0);
      si32(___umtx_op_unlock_umtx,_loc4_ + 4);
      si32(___umtx_op_wait,_loc4_ + 8);
      si32(___umtx_op_wake,_loc4_ + 12);
      si32(___umtx_op_trylock_umutex,_loc4_ + 16);
      si32(___umtx_op_lock_umutex,_loc4_ + 20);
      si32(___umtx_op_unlock_umutex,_loc4_ + 24);
      si32(___umtx_op_set_ceiling,_loc4_ + 28);
      si32(___umtx_op_cv_wait,_loc4_ + 32);
      si32(___umtx_op_cv_signal,_loc4_ + 36);
      si32(___umtx_op_cv_broadcast,_loc4_ + 40);
      si32(___umtx_op_wait_uint,_loc4_ + 44);
      si32(___umtx_op_rw_rdlock,_loc4_ + 48);
      si32(___umtx_op_rw_wrlock,_loc4_ + 52);
      si32(___umtx_op_rw_unlock,_loc4_ + 56);
      si32(___umtx_op_wait_uint_private,_loc4_ + 60);
      si32(___umtx_op_wake_private,_loc4_ + 64);
      si32(___umtx_op_wait_umutex,_loc4_ + 68);
      si32(___umtx_op_wake_umutex,_loc4_ + 72);
      si32(__umtxq_sysinit,_loc3_ + 0);
   }
}
