package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sf64;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccvV9AI3_2E_o_3A_da20dbdf_2D_caa3_2D_4453_2D_b603_2D_506343b80641.*;
   
   public function _wrap_sub_4(param1:Number, param2:int, param3:int) : int
   {
      var _loc11_:* = undefined;
      var _loc4_:* = 0;
      var _loc10_:* = NaN;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc5_:* = int(ESP);
      _loc4_ = _loc5_;
      _loc10_ = param1;
      _loc7_ = param2;
      _loc8_ = param3;
      _loc5_ = int(_loc5_ - 16);
      si32(_loc8_,_loc5_ + 12);
      si32(_loc7_,_loc5_ + 8);
      sf64(_loc10_,_loc5_);
      ESP = _loc5_;
      F_sub_4();
      _loc5_ = int(_loc5_ + 16);
      var _loc9_:int = eax;
      var _loc6_:* = _loc9_;
      _loc11_ = _loc6_;
      _loc5_ = _loc4_;
      ESP = _loc5_;
      return _loc11_;
   }
}
