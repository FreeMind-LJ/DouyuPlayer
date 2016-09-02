package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_hdtoa_2E_o_3A_A9D6C7BA_2D_8457_2D_420E_2D_88B8_2D_4A7C4646F1EF.*;
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.li8;
   
   public function F___hdtoa() : void
   {
      var _loc4_:* = 0;
      var _loc9_:* = NaN;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc13_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc3_:* = 0;
      var _loc14_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc15_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      _loc9_ = lf64(_loc4_);
      sf64(_loc9_,_loc4_ - 8);
      _loc3_ = int(_loc4_ - 8);
      _loc3_ = _loc3_ | 4;
      _loc15_ = li32(_loc3_);
      _loc3_ = int(_loc15_ >>> 31);
      _loc14_ = li32(_loc4_ + 20);
      si32(_loc3_,_loc14_);
      _loc2_ = int(_loc2_ - 16);
      sf64(_loc9_,_loc2_);
      ESP = _loc2_;
      F___fpclassifyd();
      _loc13_ = li32(_loc4_ + 24);
      _loc11_ = li32(_loc4_ + 16);
      _loc10_ = li32(_loc4_ + 12);
      _loc7_ = li32(_loc4_ + 8);
      _loc2_ = int(_loc2_ + 16);
      _loc6_ = int(eax);
      if(_loc6_ <= 7)
      {
         if(_loc6_ != 1)
         {
            if(_loc6_ != 4)
            {
               addr260:
               si32(2147483647,_loc11_);
               _loc2_ = int(_loc2_ - 16);
               si32(3,_loc2_ + 8);
               si32(_loc13_,_loc2_ + 4);
               si32(L__2E_str2,_loc2_);
               ESP = _loc2_;
               F___nrv_alloc_D2A();
               _loc2_ = int(_loc2_ + 16);
               _loc10_ = int(eax);
            }
            else
            {
               _loc6_ = li32(_loc4_ - 8);
               _loc5_ = int((int(_loc15_ >>> 20) & 2047) + -1022);
            }
         }
         else
         {
            si32(2147483647,_loc11_);
            _loc2_ = int(_loc2_ - 16);
            si32(8,_loc2_ + 8);
            si32(_loc13_,_loc2_ + 4);
            si32(L__2E_str1,_loc2_);
            ESP = _loc2_;
            F___nrv_alloc_D2A();
            _loc2_ = int(_loc2_ + 16);
            _loc10_ = int(eax);
         }
         addr589:
         eax = _loc10_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
      if(_loc6_ != 8)
      {
         if(_loc6_ != 16)
         {
            §§goto(addr260);
         }
         else
         {
            si32(1,_loc11_);
            _loc2_ = int(_loc2_ - 16);
            si32(1,_loc2_ + 8);
            si32(_loc13_,_loc2_ + 4);
            si32(L__2E_str,_loc2_);
            ESP = _loc2_;
            F___nrv_alloc_D2A();
            _loc2_ = int(_loc2_ + 16);
            _loc10_ = int(eax);
         }
      }
      else
      {
         var _loc8_:* = Number(_loc9_ * 5.36312317197704e154);
         sf64(_loc8_,_loc4_ - 16);
         _loc15_ = li32(int(_loc4_ - 16) | 4);
         _loc5_ = int((int(_loc15_ >>> 20) & 2047) + -1536);
         _loc6_ = li32(_loc4_ - 16);
      }
      §§goto(addr589);
      si32(_loc5_,_loc11_);
      _loc5_ = 1;
      if(_loc10_ != 0)
      {
         _loc5_ = _loc10_;
      }
      _loc1_ = _loc5_;
      if(_loc5_ <= 0)
      {
         _loc1_ = 15;
      }
      _loc2_ = int(_loc2_ - 16);
      si32(_loc1_,_loc2_);
      _loc3_ = int(_loc5_ + -1);
      ESP = _loc2_;
      F___rv_alloc_D2A();
      _loc2_ = int(_loc2_ + 16);
      _loc10_ = int(eax);
      if(uint(_loc3_) <= 13)
      {
         _loc14_ = _loc5_ << 22;
         _loc14_ = int(_loc14_ + 1013972992);
         _loc14_ = int(_loc4_ - 24);
         si32(_loc15_ & -2146435073 | _loc14_ & 2146435072,_loc14_ | 4);
         si32(_loc6_,_loc4_ - 24);
         _loc8_ = lf32(int(_one + (int((_loc15_ & -2147483648) >>> 29))));
         var _loc12_:* = lf64(_loc4_ - 24);
         _loc12_ = Number(_loc12_ + _loc8_);
         _loc8_ = Number(_loc12_ - _loc8_);
         sf64(_loc8_,_loc4_ - 32);
         _loc14_ = int(_loc4_ - 32);
         _loc14_ = _loc14_ | 4;
         _loc15_ = li32(_loc14_);
         _loc14_ = int(_loc15_ >>> 20);
         si32(int(int(li32(_loc11_) + (int(-967 - (_loc5_ << 2)))) + (_loc14_ & 2047)),_loc11_);
         _loc6_ = li32(_loc4_ - 32);
      }
      si8(49,_loc10_);
      if(_loc1_ >= 2)
      {
         _loc11_ = int(_loc10_ + _loc1_);
         _loc1_ = int(_loc10_ + 2);
         if(uint(_loc11_) <= uint(_loc1_))
         {
            _loc11_ = _loc1_;
         }
         _loc3_ = _loc10_ ^ -1;
         _loc11_ = int(_loc11_ + _loc3_);
         _loc1_ = int(_loc10_ + 1);
         _loc15_ = _loc15_ & 1048575;
         do
         {
            _loc3_ = int(_loc15_ >>> 16);
            _loc3_ = _loc3_ & 15;
            _loc3_ = int(_loc7_ + _loc3_);
            _loc3_ = li8(_loc3_);
            si8(_loc3_,_loc1_);
            _loc14_ = _loc15_ << 4;
            _loc3_ = int(_loc6_ >>> 28);
            _loc15_ = _loc3_ | _loc14_;
            _loc1_ = int(_loc1_ + 1);
            _loc11_ = int(_loc11_ + -1);
            _loc6_ = _loc6_ << 4;
         }
         while(_loc11_ != 0);
         
      }
      _loc7_ = 16;
      if(_loc5_ <= -1)
      {
         do
         {
            _loc3_ = int(_loc10_ + _loc7_);
            _loc3_ = li8(_loc3_ - 2);
            _loc7_ = int(_loc7_ + -1);
            _loc5_ = _loc7_;
         }
         while(_loc3_ == 48);
         
      }
      _loc7_ = int(_loc10_ + _loc5_);
      si8(0,_loc7_);
      if(_loc13_ != 0)
      {
         si32(_loc7_,_loc13_);
      }
      §§goto(addr589);
   }
}
