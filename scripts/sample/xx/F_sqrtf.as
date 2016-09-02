package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_sqrtf() : void
   {
      var _loc7_:* = 0;
      var _loc16_:int = 0;
      var _loc9_:int = 0;
      var _loc6_:* = 0;
      var _loc17_:* = 0;
      var _loc11_:int = 0;
      var _loc14_:int = 0;
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = NaN;
      var _loc5_:* = int(ESP);
      _loc7_ = _loc5_;
      _loc5_ = int(_loc5_ - 8);
      _loc1_ = lf32(_loc7_);
      sf32(_loc1_,_loc7_ - 4);
      _loc6_ = li32(_loc7_ - 4);
      var _loc18_:* = _loc6_ & 2139095040;
      if(_loc18_ == 2139095040)
      {
         var _loc13_:* = _loc1_;
         var _loc12_:* = Number(_loc13_ * _loc13_);
         _loc12_ = _loc12_;
         _loc13_ = Number(_loc12_ + _loc13_);
         _loc1_ = _loc13_;
      }
      else
      {
         if(_loc6_ <= 0)
         {
            _loc18_ = _loc6_ & 2147483647;
            if(_loc18_ != 0)
            {
               if(_loc6_ <= -1)
               {
                  _loc13_ = _loc1_;
                  _loc13_ = Number(_loc13_ - _loc13_);
                  _loc13_ = _loc13_;
                  _loc13_ = Number(_loc13_ / _loc13_);
                  _loc1_ = _loc13_;
               }
            }
         }
         _loc17_ = _loc6_ >> 23;
         if(_loc17_ == 0)
         {
            _loc16_ = 0;
            if((_loc6_ & 8388608) == 0)
            {
               do
               {
                  _loc16_ = _loc16_ + 1;
                  _loc6_ = _loc6_ << 1;
                  _loc18_ = _loc6_ & 8388608;
               }
               while(_loc18_ == 0);
               
            }
            _loc18_ = int(_loc17_ + 1);
            _loc17_ = int(_loc18_ - _loc16_);
         }
         _loc16_ = _loc17_ + -127;
         _loc18_ = _loc16_ & 1;
         var _loc15_:* = _loc6_ & 8388607;
         _loc15_ = _loc15_ | 8388608;
         _loc18_ = _loc15_ << _loc18_;
         _loc17_ = _loc18_ << 1;
         _loc14_ = 0;
         _loc6_ = 16777216;
         _loc11_ = 25;
         _loc10_ = _loc14_;
         do
         {
            _loc9_ = _loc14_ + _loc6_;
            if(_loc9_ <= _loc17_)
            {
               _loc14_ = _loc9_ + _loc6_;
            }
            _loc4_ = 0;
            _loc8_ = _loc4_;
            if(_loc9_ <= _loc17_)
            {
               _loc8_ = _loc6_;
            }
            if(_loc9_ <= _loc17_)
            {
               _loc4_ = _loc9_;
            }
            _loc10_ = int(_loc8_ + _loc10_);
            _loc18_ = int(_loc17_ - _loc4_);
            _loc17_ = _loc18_ << 1;
            _loc11_ = _loc11_ + -1;
            _loc6_ = int(_loc6_ >>> 1);
         }
         while(_loc11_ != 0);
         
         if(_loc17_ != 0)
         {
            _loc18_ = _loc10_ & 1;
            _loc10_ = int(_loc18_ + _loc10_);
         }
         _loc18_ = _loc10_ >> 1;
         _loc15_ = _loc16_ << 22;
         _loc15_ = int(_loc15_ + 1056964608);
         _loc15_ = _loc15_ & -8388608;
         _loc18_ = int(_loc18_ + _loc15_);
         si32(_loc18_,_loc7_ - 8);
         _loc1_ = lf32(_loc7_ - 8);
      }
      st0 = _loc1_;
      _loc5_ = _loc7_;
      ESP = _loc5_;
   }
}
