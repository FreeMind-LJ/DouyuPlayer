package sample.xx_p_2D_demangle_2E_o_3A_4EAE8D64_2D_DBB8_2D_467F_2D_83C7_2D_85C6725F4EAC
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si16;
   import sample.xx.*;
   import avm2.intrinsics.memory.si8;
   
   public function F_d_print_array_type() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc4_:int = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      _loc12_ = li32(_loc3_ + 4);
      _loc11_ = li32(_loc3_);
      _loc10_ = _loc1_;
      if(_loc1_ != 0)
      {
         while(true)
         {
            _loc8_ = 1;
            if(_loc10_ != 0)
            {
               var _loc9_:* = li32(_loc10_ + 8);
               if(_loc9_ != 0)
               {
                  _loc10_ = li32(_loc10_);
                  continue;
               }
               _loc9_ = li32(_loc10_ + 4);
               _loc10_ = li32(_loc9_);
               _loc8_ = 1;
               if(_loc10_ == 36)
               {
                  _loc8_ = 0;
               }
               _loc8_ = _loc8_ & 1;
               if(_loc10_ != 36)
               {
                  _loc7_ = li32(_loc11_ + 4);
                  if(_loc7_ == 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(0,_loc2_ + 8);
                     si32(_loc1_,_loc2_ + 4);
                     si32(_loc11_,_loc2_);
                     ESP = _loc2_;
                     F_d_print_mod_list();
                     _loc2_ = int(_loc2_ + 16);
                     addr327:
                     _loc10_ = li32(_loc11_ + 4);
                     if(_loc10_ != 0)
                     {
                        _loc1_ = li32(_loc11_ + 12);
                        _loc5_ = li32(_loc11_ + 8);
                        if(uint(_loc5_) < uint(_loc1_))
                        {
                           si8(41,int(_loc10_ + _loc5_));
                           _loc9_ = int(_loc5_ + 1);
                           si32(_loc9_,_loc11_ + 8);
                        }
                        else
                        {
                           _loc5_ = int(_loc5_ + 1);
                           while(true)
                           {
                              if(uint(_loc1_) >= uint(_loc5_))
                              {
                                 if(_loc10_ != 0)
                                 {
                                    si8(41,int(_loc10_ + li32(_loc11_ + 8)));
                                    _loc9_ = li32(_loc11_ + 8);
                                    _loc9_ = int(_loc9_ + 1);
                                    si32(_loc9_,_loc11_ + 8);
                                    break;
                                 }
                                 break;
                              }
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc10_,_loc2_);
                              _loc1_ = _loc1_ << 1;
                              si32(_loc1_,_loc2_ + 4);
                              ESP = _loc2_;
                              F_realloc();
                              _loc2_ = int(_loc2_ + 16);
                              _loc10_ = int(eax);
                              if(_loc10_ == 0)
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(li32(_loc11_ + 4),_loc2_);
                                 ESP = _loc2_;
                                 F_free();
                                 _loc2_ = int(_loc2_ + 16);
                                 si32(0,_loc11_ + 4);
                                 si32(1,_loc11_ + 24);
                                 break;
                              }
                              si32(_loc10_,_loc11_ + 4);
                              si32(_loc1_,_loc11_ + 12);
                           }
                        }
                     }
                  }
                  else
                  {
                     _loc6_ = li32(_loc11_ + 12);
                     _loc5_ = li32(_loc11_ + 8);
                     _loc4_ = _loc5_ + 2;
                     if(uint(_loc4_) <= uint(_loc6_))
                     {
                        si16(10272,int(_loc7_ + _loc5_));
                        _loc9_ = li32(_loc11_ + 8);
                        _loc9_ = int(_loc9_ + 2);
                        si32(_loc9_,_loc11_ + 8);
                     }
                     else
                     {
                        while(true)
                        {
                           if(uint(_loc6_) >= uint(_loc4_))
                           {
                              if(_loc7_ != 0)
                              {
                                 si16(10272,int(_loc7_ + li32(_loc11_ + 8)));
                                 _loc9_ = li32(_loc11_ + 8);
                                 _loc9_ = int(_loc9_ + 2);
                                 si32(_loc9_,_loc11_ + 8);
                                 break;
                              }
                              break;
                           }
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc7_,_loc2_);
                           _loc6_ = _loc6_ << 1;
                           si32(_loc6_,_loc2_ + 4);
                           ESP = _loc2_;
                           F_realloc();
                           _loc2_ = int(_loc2_ + 16);
                           _loc7_ = int(eax);
                           if(_loc7_ == 0)
                           {
                              _loc2_ = int(_loc2_ - 16);
                              si32(li32(_loc11_ + 4),_loc2_);
                              ESP = _loc2_;
                              F_free();
                              _loc2_ = int(_loc2_ + 16);
                              si32(0,_loc11_ + 4);
                              si32(1,_loc11_ + 24);
                              break;
                           }
                           si32(_loc7_,_loc11_ + 4);
                           si32(_loc6_,_loc11_ + 12);
                        }
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(0,_loc2_ + 8);
                     si32(_loc1_,_loc2_ + 4);
                     si32(_loc11_,_loc2_);
                     ESP = _loc2_;
                     F_d_print_mod_list();
                     _loc2_ = int(_loc2_ + 16);
                     if(_loc10_ != 36)
                     {
                        §§goto(addr327);
                     }
                  }
                  addr526:
                  addr710:
                  if(_loc8_ == 0)
                  {
                     _loc8_ = int(_loc11_ + 4);
                  }
                  _loc10_ = li32(_loc8_);
                  if(_loc10_ != 0)
                  {
                     _loc1_ = li32(_loc11_ + 12);
                     _loc5_ = li32(_loc11_ + 8);
                     if(uint(_loc5_) < uint(_loc1_))
                     {
                        si8(91,int(_loc10_ + _loc5_));
                        _loc9_ = int(_loc5_ + 1);
                        si32(_loc9_,_loc11_ + 8);
                     }
                     else
                     {
                        _loc5_ = int(_loc5_ + 1);
                        while(true)
                        {
                           if(uint(_loc1_) >= uint(_loc5_))
                           {
                              if(_loc10_ != 0)
                              {
                                 si8(91,int(_loc10_ + li32(_loc11_ + 8)));
                                 _loc9_ = li32(_loc11_ + 8);
                                 _loc9_ = int(_loc9_ + 1);
                                 si32(_loc9_,_loc11_ + 8);
                                 break;
                              }
                              break;
                           }
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc10_,_loc2_);
                           _loc1_ = _loc1_ << 1;
                           si32(_loc1_,_loc2_ + 4);
                           ESP = _loc2_;
                           F_realloc();
                           _loc2_ = int(_loc2_ + 16);
                           _loc10_ = int(eax);
                           if(_loc10_ == 0)
                           {
                              _loc2_ = int(_loc2_ - 16);
                              si32(li32(_loc8_),_loc2_);
                              ESP = _loc2_;
                              F_free();
                              _loc2_ = int(_loc2_ + 16);
                              si32(0,_loc8_);
                              si32(1,_loc11_ + 24);
                              break;
                           }
                           si32(_loc10_,_loc8_);
                           si32(_loc1_,_loc11_ + 12);
                        }
                     }
                  }
                  _loc12_ = li32(_loc12_ + 4);
                  if(_loc12_ != 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc12_,_loc2_ + 4);
                     si32(_loc11_,_loc2_);
                     ESP = _loc2_;
                     F_d_print_comp();
                     _loc2_ = int(_loc2_ + 16);
                  }
                  _loc12_ = li32(_loc8_);
                  if(_loc12_ != 0)
                  {
                     _loc1_ = li32(_loc11_ + 12);
                     _loc10_ = li32(_loc11_ + 8);
                     if(uint(_loc10_) < uint(_loc1_))
                     {
                        si8(93,int(_loc12_ + _loc10_));
                        _loc9_ = int(_loc10_ + 1);
                        si32(_loc9_,_loc11_ + 8);
                     }
                     else
                     {
                        _loc10_ = int(_loc10_ + 1);
                        while(true)
                        {
                           if(uint(_loc1_) >= uint(_loc10_))
                           {
                              if(_loc12_ != 0)
                              {
                                 si8(93,int(_loc12_ + li32(_loc11_ + 8)));
                                 _loc9_ = li32(_loc11_ + 8);
                                 _loc9_ = int(_loc9_ + 1);
                                 si32(_loc9_,_loc11_ + 8);
                                 break;
                              }
                              break;
                           }
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc12_,_loc2_);
                           _loc1_ = _loc1_ << 1;
                           si32(_loc1_,_loc2_ + 4);
                           ESP = _loc2_;
                           F_realloc();
                           _loc2_ = int(_loc2_ + 16);
                           _loc12_ = int(eax);
                           if(_loc12_ == 0)
                           {
                              _loc2_ = int(_loc2_ - 16);
                              si32(li32(_loc8_),_loc2_);
                              ESP = _loc2_;
                              F_free();
                              _loc2_ = int(_loc2_ + 16);
                              si32(0,_loc8_);
                              si32(1,_loc11_ + 24);
                              break;
                           }
                           si32(_loc12_,_loc8_);
                           si32(_loc1_,_loc11_ + 12);
                        }
                     }
                  }
                  _loc2_ = _loc3_;
                  ESP = _loc2_;
                  return;
               }
               break;
            }
            break;
         }
         _loc2_ = int(_loc2_ - 16);
         si32(0,_loc2_ + 8);
         si32(_loc1_,_loc2_ + 4);
         si32(_loc11_,_loc2_);
         ESP = _loc2_;
         F_d_print_mod_list();
         _loc2_ = int(_loc2_ + 16);
         §§goto(addr526);
      }
      _loc10_ = li32(_loc11_ + 4);
      _loc8_ = int(_loc11_ + 4);
      if(_loc10_ != 0)
      {
         _loc1_ = li32(_loc11_ + 12);
         _loc5_ = li32(_loc11_ + 8);
         if(uint(_loc5_) < uint(_loc1_))
         {
            si8(32,int(_loc10_ + _loc5_));
            _loc9_ = int(_loc5_ + 1);
            si32(_loc9_,_loc11_ + 8);
         }
         else
         {
            _loc5_ = int(_loc5_ + 1);
            while(true)
            {
               if(uint(_loc1_) >= uint(_loc5_))
               {
                  if(_loc10_ != 0)
                  {
                     si8(32,int(_loc10_ + li32(_loc11_ + 8)));
                     _loc9_ = li32(_loc11_ + 8);
                     _loc9_ = int(_loc9_ + 1);
                     si32(_loc9_,_loc11_ + 8);
                     break;
                  }
                  break;
               }
               _loc2_ = int(_loc2_ - 16);
               si32(_loc10_,_loc2_);
               _loc1_ = _loc1_ << 1;
               si32(_loc1_,_loc2_ + 4);
               ESP = _loc2_;
               F_realloc();
               _loc2_ = int(_loc2_ + 16);
               _loc10_ = int(eax);
               if(_loc10_ == 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(li32(_loc11_ + 4),_loc2_);
                  ESP = _loc2_;
                  F_free();
                  _loc2_ = int(_loc2_ + 16);
                  si32(0,_loc11_ + 4);
                  si32(1,_loc11_ + 24);
                  break;
               }
               si32(_loc10_,_loc11_ + 4);
               si32(_loc1_,_loc11_ + 12);
            }
         }
      }
      §§goto(addr710);
   }
}
