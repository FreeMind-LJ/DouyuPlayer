package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_ysctl_2E_o_3A_30608893_2D_C683_2D_407A_2D_A12E_2D_2BE474AFB519.*;
   
   public function F_sysctl() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc8_ = li32(_loc1_);
      _loc7_ = li32(_loc3_ + 16);
      _loc6_ = li32(_loc3_ + 12);
      _loc5_ = li32(_loc3_ + 8);
      _loc4_ = li32(_loc3_ + 4);
      if(_loc8_ != 8)
      {
         _loc2_ = int(_loc2_ - 32);
         si32(li32(_loc3_ + 20),_loc2_ + 20);
         si32(_loc7_,_loc2_ + 16);
         si32(_loc6_,_loc2_ + 12);
         si32(_loc5_,_loc2_ + 8);
         si32(_loc4_,_loc2_ + 4);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F___sysctl();
         _loc2_ = int(_loc2_ + 32);
         _loc1_ = int(eax);
      }
      else if(_loc7_ != 0)
      {
         ESP = _loc2_;
         F___error();
         si32(1,int(eax));
         _loc1_ = -1;
      }
      else if(_loc4_ != 2)
      {
         ESP = _loc2_;
         F___error();
         si32(22,int(eax));
         _loc1_ = -1;
      }
      else
      {
         _loc8_ = li32(_loc1_ + 4);
         if(_loc8_ == 1)
         {
            if(_loc5_ == 0)
            {
               si32(31,_loc6_);
               _loc1_ = 0;
            }
            else
            {
               _loc8_ = li32(_loc6_);
               if(uint(_loc8_) <= 30)
               {
                  ESP = _loc2_;
                  F___error();
                  si32(12,int(eax));
                  _loc1_ = -1;
               }
               else
               {
                  si32(31,_loc6_);
                  _loc2_ = int(_loc2_ - 16);
                  si32(31,_loc2_ + 8);
                  si32(L__2E_str,_loc2_ + 4);
                  si32(_loc5_,_loc2_);
                  ESP = _loc2_;
                  Fmemcpy();
                  _loc2_ = int(_loc2_ + 16);
                  _loc1_ = 0;
               }
            }
         }
         else if(_loc5_ == 0)
         {
            si32(4,_loc6_);
            _loc1_ = 0;
         }
         else
         {
            _loc8_ = li32(_loc6_);
            if(uint(_loc8_) <= 3)
            {
               ESP = _loc2_;
               F___error();
               si32(12,int(eax));
               _loc1_ = -1;
            }
            else
            {
               si32(4,_loc6_);
               _loc1_ = li32(_loc1_ + 4);
               if(_loc1_ <= 10)
               {
                  if(_loc1_ <= 5)
                  {
                     if(_loc1_ <= 3)
                     {
                        if(_loc1_ != 2)
                        {
                           if(_loc1_ != 3)
                           {
                              addr508:
                              ESP = _loc2_;
                              F___error();
                              _loc8_ = int(eax);
                              si32(22,_loc8_);
                              _loc1_ = -1;
                           }
                           else
                           {
                              si32(2048,_loc5_);
                              _loc1_ = 0;
                           }
                        }
                        else
                        {
                           si32(99,_loc5_);
                           _loc1_ = 0;
                        }
                     }
                     else if(_loc1_ != 4)
                     {
                        if(_loc1_ != 5)
                        {
                           §§goto(addr508);
                        }
                        else
                        {
                           si32(1000,_loc5_);
                           _loc1_ = 0;
                        }
                     }
                     else
                     {
                        si32(99,_loc5_);
                        _loc1_ = 0;
                     }
                  }
                  else if(_loc1_ <= 7)
                  {
                     if(_loc1_ != 6)
                     {
                        if(_loc1_ != 7)
                        {
                           §§goto(addr508);
                        }
                        else
                        {
                           si32(32,_loc5_);
                           _loc1_ = 0;
                        }
                     }
                     else
                     {
                        _loc1_ = 0;
                        si32(_loc1_,_loc5_);
                     }
                  }
                  else if(_loc1_ != 8)
                  {
                     if(_loc1_ != 9)
                     {
                        if(_loc1_ != 10)
                        {
                           §§goto(addr508);
                        }
                        else
                        {
                           si32(199212,_loc5_);
                           _loc1_ = 0;
                        }
                     }
                     else
                     {
                        si32(255,_loc5_);
                        _loc1_ = 0;
                     }
                  }
                  else
                  {
                     si32(2048,_loc5_);
                     _loc1_ = 0;
                  }
               }
               else if(_loc1_ <= 15)
               {
                  if(_loc1_ <= 12)
                  {
                     if(_loc1_ != 11)
                     {
                        if(_loc1_ != 12)
                        {
                           §§goto(addr508);
                        }
                        else
                        {
                           _loc1_ = 0;
                           si32(_loc1_,_loc5_);
                        }
                     }
                     else
                     {
                        _loc1_ = 0;
                        si32(_loc1_,_loc5_);
                     }
                  }
                  else if(_loc1_ != 13)
                  {
                     if(_loc1_ != 14)
                     {
                        if(_loc1_ != 15)
                        {
                           §§goto(addr508);
                        }
                        else
                        {
                           _loc1_ = 0;
                           si32(_loc1_,_loc5_);
                        }
                     }
                     else
                     {
                        _loc1_ = 0;
                        si32(_loc1_,_loc5_);
                     }
                  }
                  else
                  {
                     _loc1_ = 0;
                     si32(_loc1_,_loc5_);
                  }
               }
               else if(_loc1_ <= 17)
               {
                  if(_loc1_ != 16)
                  {
                     if(_loc1_ != 17)
                     {
                        §§goto(addr508);
                     }
                     else
                     {
                        _loc1_ = 0;
                        si32(_loc1_,_loc5_);
                     }
                  }
                  else
                  {
                     _loc1_ = 0;
                     si32(_loc1_,_loc5_);
                  }
               }
               else if(_loc1_ != 18)
               {
                  if(_loc1_ != 19)
                  {
                     if(_loc1_ != 20)
                     {
                        §§goto(addr508);
                     }
                     else
                     {
                        si32(255,_loc5_);
                        _loc1_ = 0;
                     }
                  }
                  else
                  {
                     si32(20,_loc5_);
                     _loc1_ = 0;
                  }
               }
               else
               {
                  _loc1_ = 0;
                  si32(_loc1_,_loc5_);
               }
            }
         }
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
