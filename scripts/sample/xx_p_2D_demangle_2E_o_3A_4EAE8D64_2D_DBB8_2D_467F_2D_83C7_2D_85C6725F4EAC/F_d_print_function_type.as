package sample.xx_p_2D_demangle_2E_o_3A_4EAE8D64_2D_DBB8_2D_467F_2D_83C7_2D_85C6725F4EAC
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   
   public function F_d_print_function_type() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc4_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      _loc10_ = li32(_loc3_ + 8);
      _loc9_ = li32(_loc3_ + 4);
      _loc8_ = li32(_loc3_);
      _loc7_ = _loc10_;
      for(; _loc7_ != 0; _loc7_ = li32(_loc7_),_loc1_ = 1)
      {
         var _loc6_:* = li32(_loc7_ + 8);
         if(_loc6_ == 0)
         {
            _loc6_ = li32(_loc7_ + 4);
            _loc6_ = li32(_loc6_);
            _loc5_ = int(_loc6_ + -22);
            if(uint(_loc5_) <= 15)
            {
               _loc5_ = 1 << _loc5_;
               _loc6_ = _loc5_ & 34375;
               if(_loc6_ == 0)
               {
                  _loc6_ = _loc5_ & 384;
                  if(_loc6_ == 0)
                  {
                     continue;
                  }
                  addr138:
                  _loc1_ = li32(_loc8_ + 4);
                  _loc7_ = int(_loc8_ + 4);
                  if(_loc1_ != 0)
                  {
                     _loc5_ = li32(_loc8_ + 8);
                     if(_loc5_ != 0)
                     {
                        _loc6_ = int(_loc5_ + _loc1_);
                        _loc6_ = li8(_loc6_ - 1);
                        _loc6_ = _loc6_ | 2;
                        _loc6_ = _loc6_ & 255;
                        if(_loc6_ != 42)
                        {
                        }
                        addr359:
                        _loc7_ = li32(_loc8_ + 4);
                        _loc5_ = 0;
                        addr537:
                        if(_loc7_ != 0)
                        {
                           _loc5_ = li32(_loc8_ + 12);
                           _loc1_ = li32(_loc8_ + 8);
                           if(uint(_loc1_) < uint(_loc5_))
                           {
                              si8(40,int(_loc7_ + _loc1_));
                              _loc6_ = int(_loc1_ + 1);
                              si32(_loc6_,_loc8_ + 8);
                              _loc5_ = 0;
                           }
                           else
                           {
                              _loc1_ = int(_loc1_ + 1);
                              while(true)
                              {
                                 if(uint(_loc5_) >= uint(_loc1_))
                                 {
                                    _loc5_ = 0;
                                    if(_loc7_ != 0)
                                    {
                                       si8(40,int(_loc7_ + li32(_loc8_ + 8)));
                                       _loc6_ = li32(_loc8_ + 8);
                                       _loc6_ = int(_loc6_ + 1);
                                       si32(_loc6_,_loc8_ + 8);
                                       _loc5_ = 0;
                                       break;
                                    }
                                    break;
                                 }
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc7_,_loc2_);
                                 _loc5_ = _loc5_ << 1;
                                 si32(_loc5_,_loc2_ + 4);
                                 ESP = _loc2_;
                                 F_realloc();
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc7_ = int(eax);
                                 if(_loc7_ == 0)
                                 {
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(li32(_loc8_ + 4),_loc2_);
                                    ESP = _loc2_;
                                    F_free();
                                    _loc2_ = int(_loc2_ + 16);
                                    _loc5_ = 0;
                                    si32(_loc5_,_loc8_ + 4);
                                    si32(1,_loc8_ + 24);
                                    break;
                                 }
                                 si32(_loc7_,_loc8_ + 4);
                                 si32(_loc5_,_loc8_ + 12);
                              }
                           }
                        }
                        _loc7_ = li32(_loc8_ + 20);
                        si32(0,_loc8_ + 20);
                        _loc2_ = int(_loc2_ - 16);
                        si32(0,_loc2_ + 8);
                        si32(_loc10_,_loc2_ + 4);
                        si32(_loc8_,_loc2_);
                        ESP = _loc2_;
                        F_d_print_mod_list();
                        _loc2_ = int(_loc2_ + 16);
                        if(_loc5_ == 0)
                        {
                           _loc5_ = li32(_loc8_ + 4);
                           if(_loc5_ != 0)
                           {
                              _loc1_ = li32(_loc8_ + 12);
                              _loc4_ = li32(_loc8_ + 8);
                              if(uint(_loc4_) < uint(_loc1_))
                              {
                                 si8(41,int(_loc5_ + _loc4_));
                                 _loc6_ = int(_loc4_ + 1);
                                 si32(_loc6_,_loc8_ + 8);
                              }
                              else
                              {
                                 _loc4_ = int(_loc4_ + 1);
                                 while(true)
                                 {
                                    if(uint(_loc1_) >= uint(_loc4_))
                                    {
                                       if(_loc5_ != 0)
                                       {
                                          si8(41,int(_loc5_ + li32(_loc8_ + 8)));
                                          _loc6_ = li32(_loc8_ + 8);
                                          _loc6_ = int(_loc6_ + 1);
                                          si32(_loc6_,_loc8_ + 8);
                                          break;
                                       }
                                       break;
                                    }
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(_loc5_,_loc2_);
                                    _loc1_ = _loc1_ << 1;
                                    si32(_loc1_,_loc2_ + 4);
                                    ESP = _loc2_;
                                    F_realloc();
                                    _loc2_ = int(_loc2_ + 16);
                                    _loc5_ = int(eax);
                                    if(_loc5_ == 0)
                                    {
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(li32(_loc8_ + 4),_loc2_);
                                       ESP = _loc2_;
                                       F_free();
                                       _loc2_ = int(_loc2_ + 16);
                                       si32(0,_loc8_ + 4);
                                       si32(1,_loc8_ + 24);
                                       break;
                                    }
                                    si32(_loc5_,_loc8_ + 4);
                                    si32(_loc1_,_loc8_ + 12);
                                 }
                              }
                           }
                        }
                        _loc5_ = li32(_loc8_ + 4);
                        if(_loc5_ != 0)
                        {
                           _loc1_ = li32(_loc8_ + 12);
                           _loc4_ = li32(_loc8_ + 8);
                           if(uint(_loc4_) < uint(_loc1_))
                           {
                              si8(40,int(_loc5_ + _loc4_));
                              _loc6_ = int(_loc4_ + 1);
                              si32(_loc6_,_loc8_ + 8);
                           }
                           else
                           {
                              _loc4_ = int(_loc4_ + 1);
                              while(true)
                              {
                                 if(uint(_loc1_) >= uint(_loc4_))
                                 {
                                    if(_loc5_ != 0)
                                    {
                                       si8(40,int(_loc5_ + li32(_loc8_ + 8)));
                                       _loc6_ = li32(_loc8_ + 8);
                                       _loc6_ = int(_loc6_ + 1);
                                       si32(_loc6_,_loc8_ + 8);
                                       break;
                                    }
                                    break;
                                 }
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc5_,_loc2_);
                                 _loc1_ = _loc1_ << 1;
                                 si32(_loc1_,_loc2_ + 4);
                                 ESP = _loc2_;
                                 F_realloc();
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc5_ = int(eax);
                                 if(_loc5_ == 0)
                                 {
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(li32(_loc8_ + 4),_loc2_);
                                    ESP = _loc2_;
                                    F_free();
                                    _loc2_ = int(_loc2_ + 16);
                                    si32(0,_loc8_ + 4);
                                    si32(1,_loc8_ + 24);
                                    break;
                                 }
                                 si32(_loc5_,_loc8_ + 4);
                                 si32(_loc1_,_loc8_ + 12);
                              }
                           }
                        }
                        _loc9_ = li32(_loc9_ + 8);
                        if(_loc9_ != 0)
                        {
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc9_,_loc2_ + 4);
                           si32(_loc8_,_loc2_);
                           ESP = _loc2_;
                           F_d_print_comp();
                           _loc2_ = int(_loc2_ + 16);
                        }
                        _loc9_ = li32(_loc8_ + 4);
                        if(_loc9_ != 0)
                        {
                           _loc5_ = li32(_loc8_ + 12);
                           _loc1_ = li32(_loc8_ + 8);
                           if(uint(_loc1_) < uint(_loc5_))
                           {
                              si8(41,int(_loc9_ + _loc1_));
                              _loc6_ = int(_loc1_ + 1);
                              si32(_loc6_,_loc8_ + 8);
                           }
                           else
                           {
                              _loc1_ = int(_loc1_ + 1);
                              while(true)
                              {
                                 if(uint(_loc5_) >= uint(_loc1_))
                                 {
                                    if(_loc9_ != 0)
                                    {
                                       si8(41,int(_loc9_ + li32(_loc8_ + 8)));
                                       _loc6_ = li32(_loc8_ + 8);
                                       _loc6_ = int(_loc6_ + 1);
                                       si32(_loc6_,_loc8_ + 8);
                                       break;
                                    }
                                    break;
                                 }
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc9_,_loc2_);
                                 _loc5_ = _loc5_ << 1;
                                 si32(_loc5_,_loc2_ + 4);
                                 ESP = _loc2_;
                                 F_realloc();
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc9_ = int(eax);
                                 if(_loc9_ == 0)
                                 {
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(li32(_loc8_ + 4),_loc2_);
                                    ESP = _loc2_;
                                    F_free();
                                    _loc2_ = int(_loc2_ + 16);
                                    si32(0,_loc8_ + 4);
                                    si32(1,_loc8_ + 24);
                                    break;
                                 }
                                 si32(_loc9_,_loc8_ + 4);
                                 si32(_loc5_,_loc8_ + 12);
                              }
                           }
                        }
                        _loc2_ = int(_loc2_ - 16);
                        si32(1,_loc2_ + 8);
                        si32(_loc10_,_loc2_ + 4);
                        si32(_loc8_,_loc2_);
                        ESP = _loc2_;
                        F_d_print_mod_list();
                        _loc2_ = int(_loc2_ + 16);
                        si32(_loc7_,_loc8_ + 20);
                        _loc2_ = _loc3_;
                        ESP = _loc2_;
                        return;
                     }
                  }
               }
               else
               {
                  _loc7_ = int(_loc8_ + 4);
               }
               _loc5_ = li32(_loc7_);
               if(_loc5_ != 0)
               {
                  _loc4_ = li32(_loc8_ + 8);
                  if(_loc4_ != 0)
                  {
                     _loc6_ = int(_loc4_ + _loc5_);
                     _loc6_ = li8(_loc6_ - 1);
                     if(_loc6_ != 32)
                     {
                     }
                  }
                  _loc1_ = li32(_loc8_ + 12);
                  if(uint(_loc4_) < uint(_loc1_))
                  {
                     si8(32,int(_loc5_ + _loc4_));
                     _loc6_ = int(_loc4_ + 1);
                     si32(_loc6_,_loc8_ + 8);
                  }
                  else
                  {
                     _loc4_ = int(_loc4_ + 1);
                     while(true)
                     {
                        if(uint(_loc1_) >= uint(_loc4_))
                        {
                           if(_loc5_ != 0)
                           {
                              si8(32,int(_loc5_ + li32(_loc8_ + 8)));
                              _loc6_ = li32(_loc8_ + 8);
                              _loc6_ = int(_loc6_ + 1);
                              si32(_loc6_,_loc8_ + 8);
                              break;
                           }
                           break;
                        }
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc5_,_loc2_);
                        _loc1_ = _loc1_ << 1;
                        si32(_loc1_,_loc2_ + 4);
                        ESP = _loc2_;
                        F_realloc();
                        _loc2_ = int(_loc2_ + 16);
                        _loc5_ = int(eax);
                        if(_loc5_ == 0)
                        {
                           _loc2_ = int(_loc2_ - 16);
                           si32(li32(_loc7_),_loc2_);
                           ESP = _loc2_;
                           F_free();
                           _loc2_ = int(_loc2_ + 16);
                           si32(0,_loc7_);
                           si32(1,_loc8_ + 24);
                           break;
                        }
                        si32(_loc5_,_loc7_);
                        si32(_loc1_,_loc8_ + 12);
                     }
                  }
               }
               §§goto(addr359);
            }
            continue;
         }
         break;
      }
      _loc5_ = 1;
      _loc7_ = _loc5_;
      if(_loc1_ == 0)
      {
         _loc7_ = 0;
      }
      _loc6_ = li32(_loc9_ + 4);
      _loc1_ = _loc5_;
      if(_loc6_ != 0)
      {
         _loc1_ = 0;
      }
      _loc6_ = _loc7_ | _loc1_;
      if(_loc6_ == 0)
      {
         §§goto(addr138);
      }
      §§goto(addr537);
   }
}
