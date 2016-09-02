package sample.xx_p_2D_demangle_2E_o_3A_4EAE8D64_2D_DBB8_2D_467F_2D_83C7_2D_85C6725F4EAC
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import sample.xx.*;
   import avm2.intrinsics.memory.si8;
   
   public function F_d_print_mod_list() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      _loc11_ = li32(_loc3_ + 4);
      _loc10_ = li32(_loc3_);
      for(; _loc11_ != 0; _loc11_ = li32(_loc11_))
      {
         var _loc9_:* = li32(_loc10_ + 4);
         if(_loc9_ != 0)
         {
            _loc9_ = li32(_loc11_ + 8);
            if(_loc9_ == 0)
            {
               if(_loc1_ == 0)
               {
                  _loc9_ = li32(_loc11_ + 4);
                  _loc9_ = li32(_loc9_);
                  _loc9_ = int(_loc9_ + -25);
                  if(uint(_loc9_) >= 3)
                  {
                  }
                  continue;
               }
               si32(1,_loc11_ + 8);
               _loc8_ = li32(_loc10_ + 16);
               _loc9_ = li32(_loc11_ + 12);
               si32(_loc9_,_loc10_ + 16);
               _loc7_ = li32(_loc11_ + 4);
               _loc6_ = li32(_loc7_);
               if(_loc6_ != 2)
               {
                  if(_loc6_ != 36)
                  {
                     if(_loc6_ == 35)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(li32(_loc11_),_loc2_ + 8);
                        si32(_loc7_,_loc2_ + 4);
                        si32(_loc10_,_loc2_);
                        ESP = _loc2_;
                        F_d_print_function_type();
                        _loc2_ = int(_loc2_ + 16);
                        si32(_loc8_,_loc10_ + 16);
                        break;
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc7_,_loc2_ + 4);
                     si32(_loc10_,_loc2_);
                     ESP = _loc2_;
                     F_d_print_mod();
                     _loc2_ = int(_loc2_ + 16);
                     si32(_loc8_,_loc10_ + 16);
                     continue;
                  }
                  _loc2_ = int(_loc2_ - 16);
                  si32(li32(_loc11_),_loc2_ + 8);
                  si32(_loc7_,_loc2_ + 4);
                  si32(_loc10_,_loc2_);
                  ESP = _loc2_;
                  F_d_print_array_type();
                  _loc2_ = int(_loc2_ + 16);
                  si32(_loc8_,_loc10_ + 16);
                  break;
               }
               si32(0,_loc10_ + 20);
               var _loc5_:* = li32(_loc11_ + 4);
               _loc2_ = int(_loc2_ - 16);
               si32(li32(_loc5_ + 4),_loc2_ + 4);
               si32(_loc10_,_loc2_);
               ESP = _loc2_;
               F_d_print_comp();
               _loc2_ = int(_loc2_ + 16);
               si32(li32(_loc10_ + 20),_loc10_ + 20);
               _loc1_ = li32(_loc10_ + 4);
               _loc9_ = li8(_loc10_);
               _loc9_ = _loc9_ & 4;
               if(_loc9_ == 0)
               {
                  if(_loc1_ != 0)
                  {
                     _loc6_ = li32(_loc10_ + 8);
                     _loc9_ = int(_loc6_ + 2);
                     if(uint(_loc9_) <= uint(li32(_loc10_ + 12)))
                     {
                        si16(14906,int(_loc1_ + _loc6_));
                        _loc9_ = li32(_loc10_ + 8);
                        _loc9_ = int(_loc9_ + 2);
                        si32(_loc9_,_loc10_ + 8);
                     }
                     else
                     {
                        _loc6_ = li32(_loc10_ + 12);
                        _loc4_ = li32(_loc10_ + 8);
                        _loc7_ = int(_loc4_ + 2);
                        if(uint(_loc7_) <= uint(_loc6_))
                        {
                           addr423:
                           _loc9_ = int(_loc1_ + _loc4_);
                           si16(14906,_loc9_);
                           _loc9_ = li32(_loc10_ + 8);
                           _loc9_ = int(_loc9_ + 2);
                           si32(_loc9_,_loc10_ + 8);
                        }
                        else
                        {
                           while(true)
                           {
                              if(uint(_loc6_) >= uint(_loc7_))
                              {
                                 if(_loc1_ != 0)
                                 {
                                    _loc4_ = li32(_loc10_ + 8);
                                    §§goto(addr423);
                                 }
                              }
                              else
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc1_,_loc2_);
                                 _loc6_ = _loc6_ << 1;
                                 si32(_loc6_,_loc2_ + 4);
                                 ESP = _loc2_;
                                 F_realloc();
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc1_ = int(eax);
                                 if(_loc1_ == 0)
                                 {
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(li32(_loc10_ + 4),_loc2_);
                                    ESP = _loc2_;
                                    F_free();
                                    _loc2_ = int(_loc2_ + 16);
                                    si32(0,_loc10_ + 4);
                                    si32(1,_loc10_ + 24);
                                 }
                                 else
                                 {
                                    si32(_loc1_,_loc10_ + 4);
                                    si32(_loc6_,_loc10_ + 12);
                                    continue;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               else if(_loc1_ != 0)
               {
                  _loc6_ = li32(_loc10_ + 8);
                  if(uint(_loc6_) < uint(li32(_loc10_ + 12)))
                  {
                     si8(46,int(_loc1_ + _loc6_));
                     _loc9_ = int(_loc6_ + 1);
                     si32(_loc9_,_loc10_ + 8);
                  }
                  else
                  {
                     _loc6_ = li32(_loc10_ + 12);
                     _loc7_ = li32(_loc10_ + 8);
                     if(uint(_loc7_) >= uint(_loc6_))
                     {
                        _loc7_ = int(_loc7_ + 1);
                        while(true)
                        {
                           if(uint(_loc6_) >= uint(_loc7_))
                           {
                              if(_loc1_ != 0)
                              {
                                 _loc7_ = li32(_loc10_ + 8);
                              }
                              break;
                           }
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc1_,_loc2_);
                           _loc6_ = _loc6_ << 1;
                           si32(_loc6_,_loc2_ + 4);
                           ESP = _loc2_;
                           F_realloc();
                           _loc2_ = int(_loc2_ + 16);
                           _loc1_ = int(eax);
                           if(_loc1_ == 0)
                           {
                              _loc2_ = int(_loc2_ - 16);
                              si32(li32(_loc10_ + 4),_loc2_);
                              ESP = _loc2_;
                              F_free();
                              _loc2_ = int(_loc2_ + 16);
                              si32(0,_loc10_ + 4);
                              si32(1,_loc10_ + 24);
                              break;
                           }
                           si32(_loc1_,_loc10_ + 4);
                           si32(_loc6_,_loc10_ + 12);
                        }
                     }
                     _loc9_ = int(_loc1_ + _loc7_);
                     si8(46,_loc9_);
                     _loc9_ = li32(_loc10_ + 8);
                     _loc9_ = int(_loc9_ + 1);
                     si32(_loc9_,_loc10_ + 8);
                  }
               }
               _loc9_ = li32(_loc11_ + 4);
               _loc11_ = li32(_loc9_ + 8);
               _loc9_ = li32(_loc11_);
               _loc9_ = int(_loc9_ + -25);
               if(uint(_loc9_) <= 2)
               {
                  do
                  {
                     _loc11_ = li32(_loc11_ + 4);
                     _loc9_ = li32(_loc11_);
                     _loc9_ = int(_loc9_ + -25);
                  }
                  while(uint(_loc9_) < 3);
                  
               }
               _loc2_ = int(_loc2_ - 16);
               si32(_loc11_,_loc2_ + 4);
               si32(_loc10_,_loc2_);
               ESP = _loc2_;
               F_d_print_comp();
               _loc2_ = int(_loc2_ + 16);
               si32(_loc8_,_loc10_ + 16);
               break;
            }
            continue;
         }
         break;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
