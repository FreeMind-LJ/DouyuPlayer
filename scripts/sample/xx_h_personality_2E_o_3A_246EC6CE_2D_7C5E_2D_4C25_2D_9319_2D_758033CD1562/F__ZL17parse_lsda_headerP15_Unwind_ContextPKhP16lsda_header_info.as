package sample.xx_h_personality_2E_o_3A_246EC6CE_2D_7C5E_2D_4C25_2D_9319_2D_758033CD1562
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi8;
   
   public function F__ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info() : void
   {
      var _loc6_:* = 0;
      var _loc18_:* = 0;
      var _loc17_:* = 0;
      var _loc13_:* = 0;
      var _loc15_:int = 0;
      var _loc12_:* = 0;
      var _loc4_:int = 0;
      var _loc11_:int = 0;
      var _loc14_:int = 0;
      var _loc7_:int = 0;
      var _loc8_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:int = 0;
      var _loc10_:int = 0;
      var _loc5_:* = 0;
      var _loc3_:* = int(ESP);
      _loc6_ = _loc3_;
      _loc4_ = 0;
      _loc18_ = li32(_loc6_);
      if(_loc18_ != 0)
      {
         _loc3_ = int(_loc3_ - 16);
         si32(_loc18_,_loc3_);
         ESP = _loc3_;
         F__Unwind_GetRegionStart();
         _loc3_ = int(_loc3_ + 16);
         _loc4_ = eax;
      }
      _loc17_ = li32(_loc6_ + 8);
      var _loc16_:* = li32(_loc6_ + 4);
      si32(_loc4_,_loc17_);
      _loc15_ = _loc17_ + 4;
      _loc14_ = _loc16_ + 1;
      _loc13_ = li8(_loc16_);
      if(_loc13_ != 255)
      {
         _loc12_ = _loc13_ & 112;
         _loc11_ = 0;
         if(_loc12_ <= 47)
         {
            if(_loc12_ != 0)
            {
               if(_loc12_ != 16)
               {
                  if(_loc12_ != 32)
                  {
                     addr208:
                     ESP = _loc3_;
                     F_abort();
                  }
                  else
                  {
                     _loc3_ = int(_loc3_ - 16);
                     si32(_loc18_,_loc3_);
                     ESP = _loc3_;
                     F__Unwind_GetTextRelBase();
                     _loc3_ = int(_loc3_ + 16);
                     _loc11_ = eax;
                  }
               }
            }
         }
         else if(_loc12_ != 48)
         {
            if(_loc12_ != 64)
            {
               if(_loc12_ != 80)
               {
                  §§goto(addr208);
               }
            }
            else
            {
               _loc3_ = int(_loc3_ - 16);
               si32(_loc18_,_loc3_);
               ESP = _loc3_;
               F__Unwind_GetRegionStart();
               _loc3_ = int(_loc3_ + 16);
               _loc11_ = eax;
            }
         }
         else
         {
            _loc3_ = int(_loc3_ - 16);
            si32(_loc18_,_loc3_);
            ESP = _loc3_;
            F__Unwind_GetDataRelBase();
            _loc3_ = int(_loc3_ + 16);
            _loc11_ = eax;
         }
         _loc3_ = int(_loc3_ - 16);
         si32(_loc15_,_loc3_ + 12);
         si32(_loc14_,_loc3_ + 8);
         si32(_loc11_,_loc3_ + 4);
         si32(_loc13_,_loc3_);
         ESP = _loc3_;
         F__ZL28read_encoded_value_with_basehjPKhPj();
         _loc3_ = int(_loc3_ + 16);
         _loc14_ = eax;
      }
      else
      {
         si32(_loc4_,_loc15_);
      }
      _loc16_ = li8(_loc14_);
      si8(_loc16_,_loc17_ + 20);
      if(_loc16_ != 255)
      {
         _loc1_ = _loc14_ + 1;
         _loc7_ = 0;
         _loc8_ = _loc7_;
         do
         {
            _loc16_ = si8(li8(_loc1_));
            var _loc9_:* = _loc16_ & 127;
            _loc9_ = _loc9_ << _loc7_;
            _loc8_ = _loc9_ | _loc8_;
            _loc7_ = _loc7_ + 7;
            _loc1_ = _loc1_ + 1;
         }
         while(_loc16_ < 0);
         
         _loc16_ = int(_loc1_ + _loc8_);
         si32(_loc16_,_loc17_ + 12);
      }
      else
      {
         si32(0,_loc17_ + 12);
         _loc1_ = _loc14_ + 1;
      }
      _loc16_ = li8(_loc1_);
      si8(_loc16_,_loc17_ + 21);
      _loc10_ = _loc1_ + 1;
      _loc2_ = 0;
      _loc5_ = _loc2_;
      do
      {
         _loc16_ = si8(li8(_loc10_));
         _loc9_ = _loc16_ & 127;
         _loc9_ = _loc9_ << _loc2_;
         _loc5_ = _loc9_ | _loc5_;
         _loc2_ = _loc2_ + 7;
         _loc10_ = _loc10_ + 1;
      }
      while(_loc16_ < 0);
      
      _loc16_ = int(_loc10_ + _loc5_);
      si32(_loc16_,_loc17_ + 16);
      eax = _loc10_;
      _loc3_ = _loc6_;
      ESP = _loc3_;
   }
}
