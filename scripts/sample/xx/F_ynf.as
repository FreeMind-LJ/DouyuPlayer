package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   
   public function F_ynf() : void
   {
      var _loc6_:* = 0;
      var _loc1_:* = NaN;
      var _loc5_:* = 0;
      var _loc15_:* = 0;
      var _loc13_:int = 0;
      var _loc8_:int = 0;
      var _loc11_:int = 0;
      var _loc10_:* = NaN;
      var _loc16_:* = NaN;
      var _loc3_:* = NaN;
      var _loc4_:* = int(ESP);
      _loc6_ = _loc4_;
      _loc4_ = int(_loc4_ - 16);
      _loc1_ = lf32(_loc6_ + 4);
      sf32(_loc1_,_loc6_ - 4);
      _loc5_ = li32(_loc6_ - 4);
      _loc15_ = _loc5_ & 2147483647;
      if(uint(_loc15_) >= 2139095041)
      {
         var _loc9_:* = _loc1_;
         _loc9_ = Number(_loc9_ + _loc9_);
         _loc3_ = _loc9_;
      }
      else
      {
         _loc3_ = Number(-inf);
         if(_loc15_ != 0)
         {
            _loc3_ = Number(nan);
            if(_loc5_ >= 0)
            {
               _loc5_ = li32(_loc6_);
               _loc13_ = 1;
               if(_loc5_ <= -1)
               {
                  _loc5_ = int(0 - _loc5_);
                  var _loc12_:* = _loc5_ << 1;
                  _loc13_ = 1 - (_loc12_ & 2);
               }
               if(_loc5_ != 1)
               {
                  if(_loc5_ == 0)
                  {
                     _loc4_ = int(_loc4_ - 16);
                     sf32(_loc1_,_loc4_);
                     ESP = _loc4_;
                     F_y0f();
                     _loc4_ = int(_loc4_ + 16);
                     _loc3_ = Number(st0);
                  }
                  else
                  {
                     _loc3_ = 0;
                     if(_loc15_ != 2139095040)
                     {
                        _loc4_ = int(_loc4_ - 16);
                        sf32(_loc1_,_loc4_);
                        ESP = _loc4_;
                        F_y0f();
                        _loc4_ = int(_loc4_ + 16);
                        _loc16_ = Number(st0);
                        _loc4_ = int(_loc4_ - 16);
                        sf32(_loc1_,_loc4_);
                        ESP = _loc4_;
                        F_y1f();
                        _loc11_ = 1;
                        _loc8_ = 2;
                        _loc4_ = int(_loc4_ + 16);
                        _loc10_ = Number(st0);
                        while(true)
                        {
                           _loc3_ = _loc10_;
                           if(_loc11_ < _loc5_)
                           {
                              sf32(_loc3_,_loc6_ - 8);
                              _loc12_ = li32(_loc6_ - 8);
                              if(_loc12_ == -8388608)
                              {
                                 break;
                              }
                              var _loc14_:Number = _loc8_;
                              var _loc7_:* = _loc14_;
                              _loc9_ = Number(_loc7_ / _loc1_);
                              _loc9_ = Number(_loc9_ * _loc3_);
                              _loc9_ = Number(_loc9_ - _loc16_);
                              _loc10_ = _loc9_;
                              _loc8_ = _loc8_ + 2;
                              _loc11_ = _loc11_ + 1;
                              _loc16_ = _loc3_;
                              continue;
                           }
                           break;
                        }
                        if(_loc13_ <= 0)
                        {
                           _loc9_ = _loc3_;
                           _loc9_ = Number(-_loc9_);
                           _loc3_ = _loc9_;
                        }
                     }
                  }
               }
               else
               {
                  _loc4_ = int(_loc4_ - 16);
                  sf32(_loc1_,_loc4_);
                  ESP = _loc4_;
                  F_y1f();
                  _loc4_ = int(_loc4_ + 16);
                  _loc14_ = st0;
                  _loc9_ = Number(_loc13_ * _loc14_);
                  _loc3_ = _loc9_;
               }
            }
         }
      }
      st0 = _loc3_;
      _loc4_ = _loc6_;
      ESP = _loc4_;
   }
}
