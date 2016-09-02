package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_rr_2E_o_3A_0F4AC9AE_2D_3C6A_2D_4BAD_2D_9492_2D_610F0C9ACA2C.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_err_set_file() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      if(_loc1_ == 0)
      {
         _loc1_ = li32(___stderrp);
      }
      si32(_loc1_,_err_file);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
