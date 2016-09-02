package sample.xx
{
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccf8iwcn_2E_o_3A_97b2014d_2D_8ddb_2D_4d42_2D_b61d_2D_986fcc55eb9e.*;
   import avm2.intrinsics.memory.li16;
   
   public function F__ZN12CDataProcess17ProcessServerDataEPKh() : void
   {
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:int = 0;
      var _loc8_:* = 0;
      var _loc3_:int = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc3_ = 0;
      si16(_loc3_,_loc1_ - 4);
      si32(_loc3_,_loc1_ - 8);
      si32(_loc3_,_loc1_ - 12);
      _loc2_ = int(_loc2_ - 16);
      _loc4_ = _loc1_ - 12;
      si32(_loc4_,_loc2_ + 4);
      _loc5_ = li32(_loc1_ + 4);
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F_ParseType();
      _loc2_ = int(_loc2_ + 16);
      var _loc6_:* = int(eax);
      if(_loc6_ != 0)
      {
         _loc7_ = li32(_loc1_);
         _loc2_ = int(_loc2_ - 16);
         si32(3,_loc2_ + 8);
         si32(L__2E_str18,_loc2_ + 4);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         F_memcmp();
         _loc2_ = int(_loc2_ + 16);
         _loc6_ = int(eax);
         if(_loc6_ == 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc5_,_loc2_ + 4);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F__ZN12CDataProcess14ParseSetupDataEPKh();
            _loc2_ = int(_loc2_ + 16);
            _loc3_ = 1;
         }
         else
         {
            _loc3_ = 0;
            _loc8_ = 1;
            _loc6_ = li16(_loc1_ - 12);
            if(_loc6_ == 29046)
            {
               _loc8_ = _loc3_;
            }
            _loc6_ = _loc8_ & 1;
            if(_loc6_ == 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc5_,_loc2_ + 4);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F__ZN12CDataProcess15ParseVerifyDataEPKh();
               _loc2_ = int(_loc2_ + 16);
               _loc3_ = 2;
            }
         }
      }
      eax = _loc3_;
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
