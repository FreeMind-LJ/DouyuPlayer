package sample.xx_skanji_2E_o_3A_3601F93B_2D_5B5A_2D_4D89_2D_B452_2D_CF531CF3B516
{
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__MSKanji_wcrtomb() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:int = 0;
      var _loc7_:* = 0;
      var _loc4_:int = 0;
      var _loc8_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      _loc1_ = li32(_loc1_);
      if(_loc1_ != 0)
      {
         ESP = _loc2_;
         F___error();
         si32(22,int(eax));
         _loc8_ = -1;
      }
      else
      {
         _loc7_ = li32(_loc3_);
         _loc8_ = 1;
         if(_loc7_ != 0)
         {
            _loc6_ = li32(_loc3_ + 4);
            _loc8_ = 2;
            if(_loc6_ <= 256)
            {
               _loc8_ = 1;
            }
            _loc5_ = 0 - _loc8_;
            if(_loc5_ <= -1)
            {
               _loc5_ = -1;
            }
            _loc1_ = int(_loc8_ + _loc5_);
            _loc4_ = _loc1_ + 1;
            _loc1_ = _loc8_ << 3;
            _loc5_ = _loc1_ + -8;
            do
            {
               _loc1_ = _loc6_ >> _loc5_;
               si8(_loc1_,_loc7_);
               _loc5_ = _loc5_ + -8;
               _loc7_ = int(_loc7_ + 1);
               _loc4_ = _loc4_ + -1;
            }
            while(_loc4_ != 0);
            
         }
      }
      eax = _loc8_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
