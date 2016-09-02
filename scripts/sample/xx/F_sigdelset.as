package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_igsetops_2E_o_3A_0EA300F2_2D_1D64_2D_48A0_2D_90E0_2D_937A0999C237.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_sigdelset() : void
   {
      var _loc3_:* = 0;
      var _loc7_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc7_ = _loc1_ + -1;
      if(uint(_loc7_) >= 128)
      {
         ESP = _loc2_;
         F___error();
         si32(22,int(eax));
         _loc1_ = -1;
      }
      else
      {
         var _loc5_:* = int(_loc1_ + 31);
         _loc5_ = 1 << (_loc5_ & 31);
         _loc5_ = _loc5_ ^ -1;
         var _loc4_:* = _loc7_ >> 5;
         var _loc6_:int = li32(_loc3_) + (_loc4_ << 2);
         _loc4_ = li32(_loc6_);
         _loc5_ = _loc4_ & _loc5_;
         si32(_loc5_,_loc6_);
         _loc1_ = 0;
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
