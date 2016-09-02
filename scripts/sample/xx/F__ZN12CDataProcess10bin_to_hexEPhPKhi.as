package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccf8iwcn_2E_o_3A_97b2014d_2D_8ddb_2D_4d42_2D_b61d_2D_986fcc55eb9e.*;
   
   public function F__ZN12CDataProcess10bin_to_hexEPhPKhi() : void
   {
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(_loc1_ + 12);
      _loc4_ = li32(_loc1_ + 8);
      _loc5_ = li32(_loc1_ + 4);
      if(_loc3_ >= 1)
      {
         do
         {
            var _loc6_:* = li8(_loc4_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc6_,_loc2_ + 8);
            si32(L__2E_str,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F_sprintf();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = int(_loc4_ + 1);
            _loc3_ = int(_loc3_ + -1);
            _loc5_ = int(_loc5_ + 2);
         }
         while(_loc3_ != 0);
         
      }
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
