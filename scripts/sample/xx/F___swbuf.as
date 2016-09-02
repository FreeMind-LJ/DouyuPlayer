package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li16;
   import sample.xx_buf_2E_o_3A_AC672836_2D_9DA0_2D_4B11_2D_93EB_2D_A7F6A92EAC38.*;
   import avm2.intrinsics.memory.si8;
   
   public function F___swbuf() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc8_ = li32(_loc1_ + 24);
      si32(_loc8_,_loc1_ + 8);
      _loc7_ = li16(_loc1_ + 12);
      _loc8_ = _loc7_ & 8;
      _loc6_ = li32(_loc3_);
      if(_loc8_ != 0)
      {
         _loc8_ = li32(_loc1_ + 16);
         if(_loc8_ == 0)
         {
            _loc8_ = _loc7_ & 512;
            if(_loc8_ == 0)
            {
            }
         }
         addr98:
         _loc8_ = li32(_loc1_ + 100);
         if(_loc8_ == 0)
         {
            si32(-1,_loc1_ + 100);
         }
         _loc7_ = _loc6_ & 255;
         _loc8_ = li32(_loc1_ + 16);
         _loc5_ = li32(_loc1_);
         _loc4_ = _loc5_ - _loc8_;
         _loc8_ = li32(_loc1_ + 20);
         addr263:
         if(_loc8_ > _loc4_)
         {
            _loc4_ = _loc4_ + 1;
            addr180:
            _loc8_ = li32(_loc1_ + 8);
            _loc8_ = int(_loc8_ + -1);
            si32(_loc8_,_loc1_ + 8);
            si8(_loc6_,_loc5_);
            _loc8_ = int(_loc5_ + 1);
            si32(_loc8_,_loc1_);
            _loc8_ = li32(_loc1_ + 20);
            if(_loc4_ != _loc8_)
            {
               _loc8_ = li16(_loc1_ + 12);
               _loc8_ = _loc8_ & 1;
               if(_loc8_ != 0)
               {
                  if(_loc7_ == 10)
                  {
                  }
               }
               addr260:
               _loc5_ = _loc7_;
            }
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F___fflush();
            _loc5_ = -1;
            _loc2_ = int(_loc2_ + 16);
            _loc8_ = int(eax);
            if(_loc8_ == 0)
            {
               §§goto(addr260);
            }
         }
         else
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F___fflush();
            _loc5_ = -1;
            _loc2_ = int(_loc2_ + 16);
            _loc8_ = int(eax);
            if(_loc8_ == 0)
            {
               _loc5_ = li32(_loc1_);
               _loc4_ = 1;
               §§goto(addr180);
            }
         }
         eax = _loc5_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc2_ = int(_loc2_ - 16);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F___swsetup();
      _loc5_ = -1;
      _loc2_ = int(_loc2_ + 16);
      _loc8_ = int(eax);
      if(_loc8_ == 0)
      {
         §§goto(addr98);
      }
      §§goto(addr263);
   }
}
