package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   
   public function F_yn() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = NaN;
      var _loc10_:* = 0;
      var _loc7_:* = 0;
      var _loc12_:* = NaN;
      var _loc14_:* = 0;
      var _loc2_:* = 0;
      var _loc5_:* = NaN;
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc15_:* = NaN;
      var _loc1_:* = int(ESP);
      _loc3_ = _loc1_;
      _loc1_ = int(_loc1_ - 32);
      _loc6_ = lf64(_loc3_ + 4);
      sf64(_loc6_,_loc3_ - 8);
      _loc2_ = li32(_loc3_ - 8);
      _loc14_ = int(0 - _loc2_);
      _loc14_ = _loc2_ | _loc14_;
      _loc14_ = int(_loc14_ >>> 31);
      var _loc13_:* = int(_loc3_ - 8);
      _loc13_ = _loc13_ | 4;
      _loc10_ = li32(_loc13_);
      _loc8_ = _loc10_ & 2147483647;
      _loc14_ = _loc14_ | _loc8_;
      if(uint(_loc14_) >= 2146435073)
      {
         _loc5_ = Number(_loc6_ + _loc6_);
      }
      else
      {
         _loc5_ = Number(-inf);
         if((_loc8_ | _loc2_) != 0)
         {
            _loc5_ = Number(nan);
            if(_loc10_ >= 0)
            {
               _loc7_ = li32(_loc3_);
               _loc10_ = 1;
               if(_loc7_ <= -1)
               {
                  _loc7_ = int(0 - _loc7_);
                  _loc14_ = _loc7_ << 1;
                  _loc10_ = int(1 - (_loc14_ & 2));
               }
               if(_loc7_ != 1)
               {
                  if(_loc7_ == 0)
                  {
                     _loc1_ = int(_loc1_ - 16);
                     sf64(_loc6_,_loc1_);
                     ESP = _loc1_;
                     F_y0();
                     _loc1_ = int(_loc1_ + 16);
                     _loc5_ = Number(st0);
                  }
                  else
                  {
                     _loc5_ = 0;
                     if(_loc8_ != 2146435072)
                     {
                        if(uint(_loc8_) >= 1389363200)
                        {
                           _loc2_ = _loc7_ & 3;
                           if(_loc2_ <= 1)
                           {
                              if(_loc2_ != 0)
                              {
                                 if(_loc2_ == 1)
                                 {
                                    var _loc11_:Number = Math.sin(_loc6_);
                                    _loc11_ = -_loc11_;
                                    _loc5_ = Number(_loc11_ - Math.cos(_loc6_));
                                 }
                              }
                              else
                              {
                                 _loc11_ = Math.sin(_loc6_);
                                 _loc5_ = Number(_loc11_ - Math.cos(_loc6_));
                              }
                           }
                           else if(_loc2_ != 2)
                           {
                              if(_loc2_ == 3)
                              {
                                 _loc11_ = Math.sin(_loc6_);
                                 _loc5_ = Number(_loc11_ + Number(Math.cos(_loc6_)));
                              }
                           }
                           else
                           {
                              _loc11_ = Math.cos(_loc6_);
                              _loc5_ = Number(_loc11_ - Math.sin(_loc6_));
                           }
                           _loc1_ = int(_loc1_ - 16);
                           sf64(_loc6_,_loc1_);
                           ESP = _loc1_;
                           F_sqrt();
                           var _loc9_:Number = _loc5_ * 0.564189583547756;
                           _loc1_ = int(_loc1_ + 16);
                           _loc11_ = st0;
                           _loc5_ = Number(_loc9_ / _loc11_);
                        }
                        else
                        {
                           _loc1_ = int(_loc1_ - 16);
                           sf64(_loc6_,_loc1_);
                           ESP = _loc1_;
                           F_y0();
                           _loc1_ = int(_loc1_ + 16);
                           _loc15_ = Number(st0);
                           _loc1_ = int(_loc1_ - 16);
                           sf64(_loc6_,_loc1_);
                           ESP = _loc1_;
                           F_y1();
                           _loc1_ = int(_loc1_ + 16);
                           _loc5_ = Number(st0);
                           sf64(_loc5_,_loc3_ - 16);
                           if(_loc7_ >= 2)
                           {
                              _loc14_ = int(_loc3_ - 16);
                              _loc14_ = _loc14_ | 4;
                              _loc8_ = 2;
                              _loc4_ = _loc8_;
                              if((0 | li32(_loc14_) ^ -1048576) != 0)
                              {
                                 while(true)
                                 {
                                    _loc12_ = _loc5_;
                                    _loc9_ = _loc8_;
                                    _loc9_ = _loc9_ / _loc6_;
                                    _loc9_ = _loc9_ * _loc12_;
                                    _loc5_ = Number(_loc9_ - _loc15_);
                                    sf64(_loc5_,_loc3_ - 24);
                                    if(_loc4_ < _loc7_)
                                    {
                                       _loc8_ = int(_loc8_ + 2);
                                       _loc4_ = int(_loc4_ + 1);
                                       _loc14_ = int(_loc3_ - 24);
                                       _loc14_ = _loc14_ | 4;
                                       _loc14_ = li32(_loc14_);
                                       _loc15_ = _loc12_;
                                       if((0 | _loc14_ ^ -1048576) == 0)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    break;
                                 }
                              }
                           }
                        }
                        if(_loc10_ <= 0)
                        {
                           _loc5_ = Number(-_loc5_);
                        }
                     }
                  }
               }
               else
               {
                  _loc1_ = int(_loc1_ - 16);
                  sf64(_loc6_,_loc1_);
                  ESP = _loc1_;
                  F_y1();
                  _loc1_ = int(_loc1_ + 16);
                  _loc5_ = Number(_loc10_ * st0);
               }
            }
         }
      }
      st0 = _loc5_;
      _loc1_ = _loc3_;
      ESP = _loc1_;
   }
}
