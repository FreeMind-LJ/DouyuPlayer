package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323.*;
   import avm2.intrinsics.memory.si8;
   
   public function F_gdb_printf() : void
   {
      var _loc3_:* = 0;
      var _loc5_:int = 0;
      var _loc4_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16656);
      _loc1_ = int(_loc3_ + 4);
      si32(_loc1_,_loc3_ - 16644);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc1_,_loc2_ + 12);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_ + 8);
      si32(16384,_loc2_ + 4);
      _loc5_ = _loc3_ - 16640;
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F_vsnprintf();
      _loc2_ = int(_loc2_ + 16);
      _loc1_ = int(eax);
      si8(0,_loc3_ - 257);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F_strlen();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = eax;
      _loc2_ = int(_loc2_ - 16);
      si32(_loc4_,_loc2_ + 12);
      si32(_loc5_,_loc2_ + 8);
      si32(L__2E_str10,_loc2_ + 4);
      _loc5_ = _loc3_ - 256;
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F_sprintf();
      _loc2_ = int(_loc2_ + 16);
      ESP = _loc2_ & -16;
      _loc2_ = int(_loc2_ - 16);
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F_strlen();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = eax;
      ESP = _loc2_ & -16;
      AlcDbgHelper.gdb(CModule.readString(_loc5_,_loc4_),/^F/);
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
