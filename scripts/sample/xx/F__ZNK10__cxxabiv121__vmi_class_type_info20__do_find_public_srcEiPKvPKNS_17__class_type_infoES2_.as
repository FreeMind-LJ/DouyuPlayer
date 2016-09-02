package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNK10__cxxabiv121__vmi_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_() : void
   {
      var _loc4_:* = 0;
      var _loc14_:* = 0;
      var _loc10_:* = 0;
      var _loc15_:* = 0;
      var _loc16_:* = 0;
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc8_:int = 0;
      var _loc9_:int = 0;
      var _loc6_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_ + 16);
      _loc16_ = li32(_loc4_ + 12);
      _loc15_ = li32(_loc4_ + 8);
      _loc14_ = li32(_loc4_);
      if(_loc15_ == _loc3_)
      {
         _loc11_ = 6;
         if(li32(_loc14_ + 4) != li32(_loc16_ + 4))
         {
         }
         addr236:
         eax = _loc11_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
      _loc10_ = li32(_loc4_ + 4);
      var _loc13_:* = li32(_loc14_ + 12);
      _loc9_ = _loc13_ + 1;
      while(true)
      {
         _loc11_ = 1;
         if(_loc9_ != 1)
         {
            _loc13_ = int(_loc14_ + (_loc9_ << 3));
            _loc1_ = li32(_loc13_ + 4);
            _loc13_ = _loc1_ & 2;
            if(_loc13_ != 0)
            {
               _loc5_ = _loc1_ & 1;
               if(_loc5_ != 0)
               {
                  if(_loc10_ != -3)
                  {
                  }
                  continue;
               }
               _loc6_ = _loc1_ >> 8;
               if(_loc5_ != 0)
               {
                  _loc13_ = li32(_loc15_);
                  _loc13_ = int(_loc13_ + _loc6_);
                  _loc6_ = li32(_loc13_);
               }
               _loc13_ = _loc9_ << 1;
               _loc13_ = _loc13_ << 2;
               _loc13_ = int(_loc14_ + _loc13_);
               _loc13_ = li32(_loc13_);
               var _loc12_:* = li32(_loc13_);
               var _loc7_:* = li32(_loc12_ + 32);
               _loc2_ = int(_loc2_ - 32);
               si32(_loc3_,_loc2_ + 16);
               si32(_loc16_,_loc2_ + 12);
               _loc12_ = int(_loc15_ + _loc6_);
               si32(_loc12_,_loc2_ + 8);
               si32(_loc10_,_loc2_ + 4);
               si32(_loc13_,_loc2_);
               ESP = _loc2_;
               ptr2fun[_loc7_]();
               _loc2_ = int(_loc2_ + 32);
               _loc8_ = eax;
               if(_loc8_ >= 4)
               {
                  _loc11_ = _loc8_ | _loc5_;
                  break;
               }
               continue;
            }
            continue;
         }
         break;
      }
      §§goto(addr236);
   }
}
