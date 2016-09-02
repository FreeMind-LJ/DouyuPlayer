package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sf64;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccvV9AI3_2E_o_3A_da20dbdf_2D_caa3_2D_4453_2D_b603_2D_506343b80641.*;
   
   public function _wrap_sub_13(param1:int, param2:Number, param3:String, param4:int) : int
   {
      var _loc13_:* = undefined;
      var _loc12_:* = 0;
      var _loc7_:* = 0;
      var _loc10_:* = NaN;
      var _loc8_:int = 0;
      var _loc9_:* = 0;
      var _loc11_:int = 0;
      var _loc5_:* = int(ESP);
      _loc12_ = _loc5_;
      _loc7_ = param1;
      _loc10_ = param2;
      ESP = _loc5_ & -16;
      _loc8_ = CModule.mallocString(param3);
      _loc9_ = param4;
      _loc5_ = int(_loc5_ - 32);
      si32(_loc9_,_loc5_ + 16);
      si32(_loc8_,_loc5_ + 12);
      sf64(_loc10_,_loc5_ + 4);
      si32(_loc7_,_loc5_);
      ESP = _loc5_;
      F_sub_13();
      _loc5_ = int(_loc5_ + 32);
      _loc11_ = eax;
      _loc5_ = int(_loc5_ - 16);
      si32(_loc8_,_loc5_);
      ESP = _loc5_;
      F_free();
      _loc5_ = int(_loc5_ + 16);
      var _loc6_:* = _loc11_;
      _loc13_ = _loc6_;
      _loc5_ = _loc12_;
      ESP = _loc5_;
      return _loc13_;
   }
}
