package sample.xx_one_2E_o_3A_BEE23FA3_2D_19C3_2D_4626_2D_BC1F_2D_7E2FCA4B655E
{
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__none_wcrtomb() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 1;
      _loc5_ = li32(_loc3_);
      if(_loc5_ != 0)
      {
         _loc1_ = li32(_loc3_ + 4);
         if(uint(_loc1_) >= 256)
         {
            ESP = _loc2_;
            F___error();
            si32(86,int(eax));
            _loc1_ = -1;
         }
         else
         {
            si8(_loc1_,_loc5_);
            _loc1_ = 1;
         }
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
