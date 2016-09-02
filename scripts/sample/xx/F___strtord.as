package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_dtoa_strtord_2E_o_3A_E20CD67A_2D_88FF_2D_48E9_2D_A52D_2D_11DD24BE3424.*;
   
   public function F___strtord() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:int = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 48);
      _loc1_ = int(_fpi0_2E_3243);
      _loc9_ = li32(_loc3_ + 8);
      if(_loc9_ != 1)
      {
         var _loc8_:* = li32(_fpi0_2E_3243);
         si32(_loc8_,_loc3_ - 24);
         _loc1_ = int(_loc3_ - 24);
         var _loc7_:* = li32(_fpi0_2E_3243 + 4);
         si32(_loc7_,_loc1_ | 4);
         _loc8_ = li32(_fpi0_2E_3243 + 8);
         si32(_loc8_,_loc3_ - 16);
         _loc8_ = li32(_fpi0_2E_3243 + 16);
         si32(_loc8_,_loc3_ - 8);
         si32(_loc9_,_loc3_ - 12);
      }
      _loc9_ = li32(_loc3_ + 12);
      _loc7_ = li32(_loc3_ + 4);
      _loc8_ = li32(_loc3_);
      _loc2_ = int(_loc2_ - 32);
      var _loc6_:int = _loc3_ - 32;
      si32(_loc6_,_loc2_ + 16);
      _loc6_ = _loc3_ - 36;
      si32(_loc6_,_loc2_ + 12);
      si32(_loc1_,_loc2_ + 8);
      si32(_loc7_,_loc2_ + 4);
      si32(_loc8_,_loc2_);
      ESP = _loc2_;
      F___strtodg();
      _loc2_ = int(_loc2_ + 32);
      _loc5_ = eax;
      _loc1_ = _loc5_ & 7;
      _loc4_ = li32(_loc3_ - 36);
      if(_loc1_ <= 2)
      {
         if(_loc1_ != 0)
         {
            if(_loc1_ != 1)
            {
               if(_loc1_ == 2)
               {
                  _loc8_ = li32(_loc3_ - 32);
                  si32(_loc8_,_loc9_);
                  _loc8_ = li32(_loc3_ - 28);
                  si32(_loc8_,_loc9_ + 4);
               }
            }
         }
         else
         {
            addr197:
            si32(0,_loc9_ + 4);
            si32(0,_loc9_);
         }
         addr283:
         _loc8_ = _loc5_ & 8;
         if(_loc8_ != 0)
         {
            _loc8_ = li32(_loc9_ + 4);
            _loc8_ = _loc8_ | -2147483648;
            si32(_loc8_,_loc9_ + 4);
         }
         eax = _loc5_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      if(_loc1_ <= 4)
      {
         if(_loc1_ != 3)
         {
            if(_loc1_ == 4)
            {
               si32(0,_loc9_);
               si32(2146959360,_loc9_ + 4);
            }
         }
         else
         {
            si32(2146435072,_loc9_ + 4);
            si32(0,_loc9_);
         }
      }
      else if(_loc1_ != 5)
      {
         if(_loc1_ == 6)
         {
            §§goto(addr197);
         }
      }
      §§goto(addr283);
      _loc8_ = li32(_loc3_ - 32);
      si32(_loc8_,_loc9_);
      _loc8_ = _loc4_ << 20;
      _loc8_ = int(_loc8_ + 1127219200);
      _loc7_ = li32(_loc3_ - 28);
      _loc7_ = _loc7_ & -1048577;
      _loc8_ = _loc7_ | _loc8_;
      si32(_loc8_,_loc9_ + 4);
      §§goto(addr283);
   }
}
