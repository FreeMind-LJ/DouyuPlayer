package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_ern_umtx_2E_o_3A_11C72270_2D_A3AB_2D_4798_2D_8F10_2D_4F543D95D387._op_table;
   
   public function F_k_umtx_op() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc6_ = li32(_loc1_ + 4);
      _loc5_ = 22;
      if(uint(_loc6_) <= 18)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_ + 4);
         si32(li32(_loc3_),_loc2_);
         var _loc4_:* = int(_op_table + (_loc6_ << 2));
         _loc4_ = li32(_loc4_);
         ESP = _loc2_;
         ptr2fun[_loc4_]();
         _loc2_ = int(_loc2_ + 16);
         _loc5_ = eax;
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
