package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccf8iwcn_2E_o_3A_97b2014d_2D_8ddb_2D_4d42_2D_b61d_2D_986fcc55eb9e.*;
   
   public function F__ZN12CDataProcessD1Ev() : void
   {
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(_loc1_);
      _loc4_ = li32(_loc3_ + 4);
      if(_loc4_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         F__ZN5C4KeyD1Ev();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         F__ZdlPv();
         _loc2_ = int(_loc2_ + 16);
      }
      si32(0,_loc3_ + 4);
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
