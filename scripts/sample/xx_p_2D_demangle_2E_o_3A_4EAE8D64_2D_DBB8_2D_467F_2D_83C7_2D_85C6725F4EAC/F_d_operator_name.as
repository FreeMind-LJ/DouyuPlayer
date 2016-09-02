package sample.xx_p_2D_demangle_2E_o_3A_4EAE8D64_2D_DBB8_2D_467F_2D_83C7_2D_85C6725F4EAC
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi8;
   import sample.xx.eax;
   
   public function F_d_operator_name() : void
   {
      var _loc4_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:* = 0;
      var _loc3_:* = 0;
      var _loc7_:int = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_);
      _loc13_ = li32(_loc3_ + 12);
      _loc12_ = li8(_loc13_);
      var _loc11_:* = int(_loc13_ + 1);
      si32(_loc11_,_loc3_ + 12);
      _loc10_ = si8(li8(_loc13_ + 1));
      _loc13_ = int(_loc13_ + 2);
      si32(_loc13_,_loc3_ + 12);
      if(_loc12_ != 99)
      {
         _loc9_ = 49;
         _loc8_ = 0;
         if(_loc12_ == 118)
         {
            _loc13_ = int(_loc10_ + -48);
            _loc9_ = 49;
            _loc8_ = 0;
            if((uint(_loc13_ & 255)) <= 9)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc3_,_loc2_);
               ESP = _loc2_;
               F_d_source_name();
               _loc2_ = int(_loc2_ + 16);
               _loc7_ = eax;
               _loc8_ = li32(_loc3_ + 20);
               _loc6_ = 0;
               if(_loc8_ < li32(_loc3_ + 24))
               {
                  _loc12_ = li32(_loc3_ + 16);
                  _loc13_ = int(_loc8_ + 1);
                  si32(_loc13_,_loc3_ + 20);
                  _loc3_ = int(_loc8_ * 12);
                  _loc8_ = int(_loc12_ + _loc3_);
                  _loc6_ = 0;
                  if(_loc8_ != 0)
                  {
                     _loc10_ = int(_loc10_ + -48);
                     if(_loc10_ >= 0)
                     {
                        if(_loc7_ != 0)
                        {
                           _loc13_ = int(_loc12_ + _loc3_);
                           si32(41,_loc13_);
                           si32(_loc10_,_loc13_ + 4);
                           si32(_loc7_,_loc13_ + 8);
                           _loc6_ = _loc8_;
                        }
                     }
                  }
               }
            }
            addr472:
            eax = _loc6_;
            _loc2_ = _loc4_;
            ESP = _loc2_;
            return;
         }
      }
      else
      {
         _loc9_ = 49;
         _loc8_ = 0;
         if((_loc10_ & 255) == 118)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F_d_type();
            _loc6_ = 0;
            _loc2_ = int(_loc2_ + 16);
            _loc7_ = eax;
            if(_loc7_ != 0)
            {
               _loc12_ = li32(_loc3_ + 20);
               _loc6_ = 0;
               if(_loc12_ < li32(_loc3_ + 24))
               {
                  _loc10_ = li32(_loc3_ + 16);
                  _loc13_ = int(_loc12_ + 1);
                  si32(_loc13_,_loc3_ + 20);
                  _loc12_ = int(_loc12_ * 12);
                  _loc3_ = int(_loc10_ + _loc12_);
                  _loc6_ = 0;
                  if(_loc3_ != 0)
                  {
                     _loc13_ = int(_loc10_ + _loc12_);
                     si32(42,_loc13_);
                     si32(_loc7_,_loc13_ + 4);
                     si32(0,_loc13_ + 8);
                     _loc6_ = _loc3_;
                  }
               }
            }
         }
         §§goto(addr472);
      }
      do
      {
         _loc11_ = int(_loc9_ - _loc8_);
         _loc13_ = int(_loc11_ >>> 31);
         _loc13_ = int(_loc11_ + _loc13_);
         _loc13_ = _loc13_ >> 1;
         _loc1_ = int(_loc13_ + _loc8_);
         _loc13_ = _loc1_ << 4;
         _loc7_ = _cplus_demangle_operators + _loc13_;
         _loc6_ = li32(_loc7_);
         _loc5_ = li8(_loc6_);
         if(_loc5_ == _loc12_)
         {
            _loc13_ = li8(_loc6_ + 1);
            if(_loc13_ == (_loc10_ & 255))
            {
               _loc12_ = li32(_loc3_ + 20);
               _loc6_ = 0;
               if(_loc12_ < li32(_loc3_ + 24))
               {
                  _loc10_ = li32(_loc3_ + 16);
                  _loc13_ = int(_loc12_ + 1);
                  si32(_loc13_,_loc3_ + 20);
                  _loc3_ = int(_loc12_ * 12);
                  _loc12_ = int(_loc10_ + _loc3_);
                  _loc6_ = 0;
                  if(_loc12_ != 0)
                  {
                     _loc13_ = int(_loc10_ + _loc3_);
                     si32(40,_loc13_);
                     si32(_loc7_,_loc13_ + 4);
                     _loc6_ = _loc12_;
                     break;
                  }
                  break;
               }
               break;
            }
         }
         _loc13_ = _loc12_ << 24;
         _loc13_ = _loc13_ >> 24;
         _loc11_ = _loc5_ << 24;
         _loc11_ = _loc11_ >> 24;
         if(_loc11_ <= _loc13_)
         {
            if(_loc5_ == _loc12_)
            {
               _loc13_ = si8(li8(_loc6_ + 1));
               if(_loc13_ <= _loc10_)
               {
               }
            }
            _loc8_ = int(_loc1_ + 1);
            _loc1_ = _loc9_;
         }
         _loc6_ = 0;
         _loc9_ = _loc1_;
      }
      while(_loc8_ != _loc1_);
      
      §§goto(addr472);
   }
}
