package sample.xx_ig5_2E_o_3A_C5321009_2D_5A46_2D_4DFC_2D_8180_2D_6D517E9FA7D3
{
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__BIG5_wcrtomb() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      _loc1_ = li32(_loc1_);
      if(_loc1_ != 0)
      {
         ESP = _loc2_;
         F___error();
         si32(22,int(eax));
         _loc5_ = -1;
      }
      else
      {
         _loc4_ = li32(_loc3_);
         _loc5_ = 1;
         if(_loc4_ != 0)
         {
            _loc5_ = li32(_loc3_ + 4);
            if((_loc5_ & 32768) != 0)
            {
               si8(int(_loc5_ >>> 8),_loc4_);
               si8(_loc5_,_loc4_ + 1);
               _loc5_ = 2;
            }
            else
            {
               si8(_loc5_,_loc4_);
               _loc5_ = 1;
            }
         }
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
