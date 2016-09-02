package sample.xx
{
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cchkBB4I_2E_o_3A_3d09543f_2D_286a_2D_4d3e_2D_a658_2D_8a6759fb7e32.*;
   import avm2.intrinsics.memory.li16;
   
   public function F__ZN12CHashProcess17ProcessServerDataEPcPi() : void
   {
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc9_:int = 0;
      var _loc8_:int = 0;
      var _loc6_:* = 0;
      var _loc3_:int = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc3_ = 0;
      si16(_loc3_,_loc1_ - 4);
      si32(_loc3_,_loc1_ - 8);
      si32(_loc3_,_loc1_ - 12);
      _loc2_ = int(_loc2_ - 16);
      var _loc4_:* = int(_loc1_ - 12);
      si32(_loc4_,_loc2_ + 4);
      _loc5_ = li32(_loc1_ + 4);
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F_ParseType();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = int(eax);
      if(_loc4_ != 0)
      {
         _loc3_ = 0;
         _loc6_ = 1;
         _loc4_ = li16(_loc1_ - 12);
         if(_loc4_ == 29032)
         {
            _loc6_ = _loc3_;
         }
         _loc4_ = _loc6_ & 1;
         if(_loc4_ == 0)
         {
            _loc7_ = li32(_loc1_ + 8);
            _loc3_ = 0;
            si32(_loc3_,_loc7_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc5_,_loc2_ + 4);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F__ZN12CHashProcess15ParseServerDataEPc();
            _loc2_ = int(_loc2_ + 16);
            _loc9_ = eax;
            if(_loc9_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc7_,_loc2_ + 8);
               si32(_loc9_,_loc2_ + 4);
               si32(li32(_loc1_),_loc2_);
               ESP = _loc2_;
               F__ZN12CHashProcess14PackResultDataEP10IDataCachePi();
               _loc2_ = int(_loc2_ + 16);
               _loc3_ = eax;
            }
         }
      }
      eax = _loc3_;
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
