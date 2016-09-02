package sample.xx_one_2E_o_3A_BEE23FA3_2D_19C3_2D_4626_2D_BC1F_2D_7E2FCA4B655E
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx.eax;
   
   public function F__none_mbrtowc() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      _loc5_ = li32(_loc3_ + 4);
      if(_loc5_ != 0)
      {
         _loc1_ = -2;
         if(li32(_loc3_ + 8) != 0)
         {
            _loc1_ = li32(_loc3_);
            _loc5_ = li8(_loc5_);
            if(_loc1_ != 0)
            {
               si32(_loc5_,_loc1_);
            }
            _loc1_ = 1;
            if(_loc5_ == 0)
            {
               _loc1_ = 0;
            }
            _loc1_ = _loc1_ & 1;
         }
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
