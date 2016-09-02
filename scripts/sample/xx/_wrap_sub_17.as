package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccvV9AI3_2E_o_3A_da20dbdf_2D_caa3_2D_4453_2D_b603_2D_506343b80641.*;
   
   public function _wrap_sub_17(param1:String, param2:int) : int
   {
      var _loc9_:* = undefined;
      var _loc3_:* = 0;
      var _loc6_:int = 0;
      var _loc7_:* = 0;
      var _loc8_:int = 0;
      var _loc4_:* = int(ESP);
      _loc3_ = _loc4_;
      ESP = _loc4_ & -16;
      _loc6_ = CModule.mallocString(param1);
      _loc7_ = param2;
      _loc4_ = int(_loc4_ - 16);
      si32(_loc7_,_loc4_ + 4);
      si32(_loc6_,_loc4_);
      ESP = _loc4_;
      F_sub_17();
      _loc4_ = int(_loc4_ + 16);
      _loc8_ = eax;
      _loc4_ = int(_loc4_ - 16);
      si32(_loc6_,_loc4_);
      ESP = _loc4_;
      F_free();
      _loc4_ = int(_loc4_ + 16);
      var _loc5_:* = _loc8_;
      _loc9_ = _loc5_;
      _loc4_ = _loc3_;
      ESP = _loc4_;
      return _loc9_;
   }
}
