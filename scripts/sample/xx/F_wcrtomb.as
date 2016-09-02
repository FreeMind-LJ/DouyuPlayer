package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_crtomb_2E_o_3A_3BA5F54A_2D_E806_2D_4BD9_2D_852D_2D_7569D987498C.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_wcrtomb() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = int(_mbs_2E_1626);
      _loc6_ = li32(_loc3_ + 8);
      if(_loc6_ != 0)
      {
         _loc1_ = _loc6_;
      }
      var _loc5_:* = li32(___wcrtomb);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc1_,_loc2_ + 8);
      var _loc4_:* = li32(_loc3_ + 4);
      si32(_loc4_,_loc2_ + 4);
      _loc4_ = li32(_loc3_);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc5_]();
      _loc2_ = int(_loc2_ + 16);
      _loc5_ = int(eax);
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
