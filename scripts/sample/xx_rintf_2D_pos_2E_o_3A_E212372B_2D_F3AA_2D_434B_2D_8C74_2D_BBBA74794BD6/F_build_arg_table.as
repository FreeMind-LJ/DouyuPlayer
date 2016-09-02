package sample.xx_rintf_2D_pos_2E_o_3A_E212372B_2D_F3AA_2D_434B_2D_8C74_2D_BBBA74794BD6
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   
   public function F_build_arg_table() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc10_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc12_ = li32(_loc1_ + 40);
      _loc11_ = li32(_loc3_ + 8);
      _loc10_ = li32(_loc3_ + 4);
      if(_loc12_ <= 7)
      {
         _loc9_ = li32(_loc11_);
         addr87:
         _loc12_ = 0;
         si32(_loc12_,_loc9_);
         var _loc8_:* = li32(_loc1_ + 40);
         if(_loc8_ >= 1)
         {
            do
            {
               _loc9_ = _loc12_;
               var _loc6_:* = _loc9_ << 2;
               _loc8_ = li32(_loc1_);
               _loc8_ = int(_loc8_ + _loc6_);
               _loc5_ = li32(_loc8_ + 4);
               _loc12_ = int(_loc9_ + 1);
               if(_loc5_ <= 12)
               {
                  if(_loc5_ <= 5)
                  {
                     if(_loc5_ <= 2)
                     {
                        if(_loc5_ != 0)
                        {
                           if(_loc5_ != 1)
                           {
                              if(_loc5_ == 2)
                              {
                                 _loc8_ = li32(_loc11_);
                                 _loc8_ = li32(_loc10_);
                                 si32(_loc8_,int(_loc8_ + (_loc9_ << 3)) + 8);
                                 _loc10_ = int(_loc10_ + 4);
                              }
                           }
                           else
                           {
                              _loc8_ = li32(_loc11_);
                              _loc8_ = li32(_loc10_);
                              si32(_loc8_,int(_loc8_ + (_loc9_ << 3)) + 8);
                              _loc10_ = int(_loc10_ + 4);
                           }
                        }
                        else
                        {
                           _loc8_ = li32(_loc11_);
                           _loc8_ = li32(_loc10_);
                           si32(_loc8_,int(_loc8_ + (_loc9_ << 3)) + 8);
                           _loc10_ = int(_loc10_ + 4);
                        }
                     }
                     else if(_loc5_ != 3)
                     {
                        if(_loc5_ != 4)
                        {
                           if(_loc5_ == 5)
                           {
                              _loc8_ = li32(_loc11_);
                              _loc8_ = li32(_loc10_);
                              si32(_loc8_,int(_loc8_ + (_loc9_ << 3)) + 8);
                              _loc10_ = int(_loc10_ + 4);
                           }
                        }
                        else
                        {
                           _loc8_ = li32(_loc11_);
                           _loc8_ = li32(_loc10_);
                           si32(_loc8_,int(_loc8_ + (_loc9_ << 3)) + 8);
                           _loc10_ = int(_loc10_ + 4);
                        }
                     }
                     else
                     {
                        _loc8_ = li32(_loc11_);
                        _loc8_ = li32(_loc10_);
                        si32(_loc8_,int(_loc8_ + (_loc9_ << 3)) + 8);
                        _loc10_ = int(_loc10_ + 4);
                     }
                  }
                  else if(_loc5_ <= 8)
                  {
                     if(_loc5_ != 6)
                     {
                        if(_loc5_ != 7)
                        {
                           if(_loc5_ == 8)
                           {
                              _loc8_ = li32(_loc11_);
                              var _loc4_:* = int(_loc8_ + (_loc9_ << 3));
                              _loc8_ = li32(_loc10_ + 4);
                              si32(_loc8_,_loc4_ + 12);
                              si32(li32(_loc10_),_loc4_ + 8);
                              _loc10_ = int(_loc10_ + 8);
                           }
                        }
                        else
                        {
                           _loc8_ = li32(_loc11_);
                           _loc8_ = li32(_loc10_);
                           si32(_loc8_,int(_loc8_ + (_loc9_ << 3)) + 8);
                           _loc10_ = int(_loc10_ + 4);
                        }
                     }
                     else
                     {
                        _loc8_ = li32(_loc11_);
                        _loc8_ = li32(_loc10_);
                        si32(_loc8_,int(_loc8_ + (_loc9_ << 3)) + 8);
                        _loc10_ = int(_loc10_ + 4);
                     }
                  }
                  else if(_loc5_ <= 10)
                  {
                     if(_loc5_ != 9)
                     {
                        if(_loc5_ == 10)
                        {
                           _loc6_ = li32(_loc11_);
                           _loc6_ = li32(_loc10_);
                           si32(_loc6_,int(_loc6_ + (_loc9_ << 3)) + 8);
                           _loc10_ = int(_loc10_ + 4);
                        }
                     }
                     else
                     {
                        _loc6_ = li32(_loc11_);
                        _loc4_ = int(_loc6_ + (_loc9_ << 3));
                        _loc8_ = li32(_loc10_ + 4);
                        si32(_loc8_,_loc4_ + 12);
                        si32(li32(_loc10_),_loc4_ + 8);
                        _loc10_ = int(_loc10_ + 8);
                     }
                  }
                  else if(_loc5_ != 11)
                  {
                     if(_loc5_ == 12)
                     {
                        _loc8_ = li32(_loc11_);
                        _loc8_ = li32(_loc10_);
                        si32(_loc8_,int(_loc8_ + (_loc9_ << 3)) + 8);
                        _loc10_ = int(_loc10_ + 4);
                     }
                  }
                  else
                  {
                     _loc6_ = li32(_loc11_);
                     _loc6_ = li32(_loc10_);
                     si32(_loc6_,int(_loc6_ + (_loc9_ << 3)) + 8);
                     _loc10_ = int(_loc10_ + 4);
                  }
               }
               else if(_loc5_ <= 18)
               {
                  if(_loc5_ <= 15)
                  {
                     if(_loc5_ != 13)
                     {
                        if(_loc5_ != 14)
                        {
                           if(_loc5_ == 15)
                           {
                              _loc6_ = li32(_loc11_);
                              _loc8_ = li32(_loc10_);
                              si32(_loc8_,int(_loc6_ + (_loc9_ << 3)) + 8);
                              _loc10_ = int(_loc10_ + 4);
                           }
                        }
                        else
                        {
                           _loc8_ = li32(_loc11_);
                           _loc8_ = li32(_loc10_);
                           si32(_loc8_,int(_loc8_ + (_loc9_ << 3)) + 8);
                           _loc10_ = int(_loc10_ + 4);
                        }
                     }
                     else
                     {
                        _loc8_ = li32(_loc11_);
                        _loc8_ = li32(_loc10_);
                        si32(_loc8_,int(_loc8_ + (_loc9_ << 3)) + 8);
                        _loc10_ = int(_loc10_ + 4);
                     }
                  }
                  else if(_loc5_ != 16)
                  {
                     if(_loc5_ != 17)
                     {
                        if(_loc5_ == 18)
                        {
                           _loc6_ = li32(_loc11_);
                           _loc6_ = li32(_loc10_);
                           si32(_loc6_,int(_loc6_ + (_loc9_ << 3)) + 8);
                           _loc10_ = int(_loc10_ + 4);
                        }
                     }
                     else
                     {
                        _loc6_ = li32(_loc11_);
                        _loc8_ = int(_loc6_ + (_loc9_ << 3));
                        _loc4_ = li32(_loc10_ + 4);
                        si32(_loc4_,_loc8_ + 12);
                        si32(li32(_loc10_),_loc8_ + 8);
                        _loc10_ = int(_loc10_ + 8);
                     }
                  }
                  else
                  {
                     _loc6_ = li32(_loc11_);
                     _loc8_ = int(_loc6_ + (_loc9_ << 3));
                     _loc4_ = li32(_loc10_ + 4);
                     si32(_loc4_,_loc8_ + 12);
                     si32(li32(_loc10_),_loc8_ + 8);
                     _loc10_ = int(_loc10_ + 8);
                  }
               }
               else if(_loc5_ <= 21)
               {
                  if(_loc5_ != 19)
                  {
                     if(_loc5_ != 20)
                     {
                        if(_loc5_ == 21)
                        {
                           _loc8_ = li32(_loc11_);
                           _loc8_ = li32(_loc10_);
                           si32(_loc8_,int(_loc8_ + (_loc9_ << 3)) + 8);
                           _loc10_ = int(_loc10_ + 4);
                        }
                     }
                     else
                     {
                        _loc8_ = li32(_loc11_);
                        _loc8_ = li32(_loc10_);
                        si32(_loc8_,int(_loc8_ + (_loc9_ << 3)) + 8);
                        _loc10_ = int(_loc10_ + 4);
                     }
                  }
                  else
                  {
                     _loc6_ = li32(_loc11_);
                     _loc6_ = li32(_loc10_);
                     si32(_loc6_,int(_loc6_ + (_loc9_ << 3)) + 8);
                     _loc10_ = int(_loc10_ + 4);
                  }
               }
               else if(_loc5_ <= 23)
               {
                  if(_loc5_ != 22)
                  {
                     if(_loc5_ == 23)
                     {
                        _loc8_ = li32(_loc11_);
                        var _loc7_:* = lf64(_loc10_);
                        sf64(_loc7_,int(_loc8_ + (_loc9_ << 3)) + 8);
                        _loc10_ = int(_loc10_ + 8);
                     }
                  }
                  else
                  {
                     _loc8_ = li32(_loc11_);
                     _loc7_ = lf64(_loc10_);
                     sf64(_loc7_,int(_loc8_ + (_loc9_ << 3)) + 8);
                     _loc10_ = int(_loc10_ + 8);
                  }
               }
               else if(_loc5_ != 24)
               {
                  if(_loc5_ == 25)
                  {
                     _loc8_ = li32(_loc11_);
                     _loc8_ = li32(_loc10_);
                     si32(_loc8_,int(_loc8_ + (_loc9_ << 3)) + 8);
                     _loc10_ = int(_loc10_ + 4);
                  }
               }
               else
               {
                  _loc8_ = li32(_loc11_);
                  _loc8_ = li32(_loc10_);
                  si32(_loc8_,int(_loc8_ + (_loc9_ << 3)) + 8);
                  _loc10_ = int(_loc10_ + 4);
               }
               _loc6_ = int(_loc12_ + 1);
               _loc8_ = li32(_loc1_ + 40);
            }
            while(_loc8_ >= _loc6_);
            
         }
      }
      else
      {
         _loc2_ = int(_loc2_ - 16);
         _loc8_ = _loc12_ << 3;
         _loc8_ = int(_loc8_ + 8);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F_malloc();
         _loc2_ = int(_loc2_ + 16);
         _loc9_ = int(eax);
         si32(_loc9_,_loc11_);
         if(_loc9_ != 0)
         {
            §§goto(addr87);
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
