package sample.xx_one_2E_o_3A_BEE23FA3_2D_19C3_2D_4626_2D_BC1F_2D_7E2FCA4B655E
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.li8;
   
   public function F__none_mbsnrtowcs() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc6_:int = 0;
      var _loc7_:int = 0;
      var _loc5_:int = 0;
      var _loc10_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc11_ = li32(_loc1_);
      _loc10_ = li32(_loc3_ + 8);
      _loc9_ = li32(_loc3_);
      if(_loc9_ != 0)
      {
         _loc7_ = 0 - li32(_loc3_ + 12);
         _loc6_ = 0 - _loc10_;
         _loc5_ = 0;
         while(_loc7_ != _loc5_)
         {
            if(_loc6_ == _loc5_)
            {
               break;
            }
            _loc10_ = int(0 - _loc5_);
            var _loc4_:* = int(_loc11_ - _loc5_);
            _loc4_ = li8(_loc4_);
            si32(_loc4_,int(_loc9_ + (_loc10_ << 2)));
            if(_loc4_ == 0)
            {
               si32(0,_loc1_);
            }
            else
            {
               _loc5_ = _loc5_ + -1;
               continue;
            }
         }
         var _loc8_:int = _loc11_ - _loc5_;
         si32(_loc8_,_loc1_);
         _loc10_ = int(0 - _loc5_);
      }
      else
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc10_,_loc2_ + 8);
         si32(0,_loc2_ + 4);
         si32(_loc11_,_loc2_);
         ESP = _loc2_;
         F_memchr();
         _loc2_ = int(_loc2_ + 16);
         _loc9_ = int(eax);
         if(_loc9_ != 0)
         {
            _loc10_ = int(_loc9_ - _loc11_);
         }
      }
      eax = _loc10_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
