package sample.xx_p_2D_demangle_2E_o_3A_4EAE8D64_2D_DBB8_2D_467F_2D_83C7_2D_85C6725F4EAC
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   
   public function F_d_print_expr_op() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:int = 0;
      var _loc11_:* = 0;
      var _loc9_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc11_ = li32(_loc1_);
      _loc10_ = li32(_loc3_);
      if(_loc11_ == 40)
      {
         _loc9_ = li32(_loc10_ + 4);
         if(_loc9_ != 0)
         {
            _loc8_ = li32(_loc10_ + 8);
            _loc7_ = li32(_loc1_ + 4);
            _loc6_ = li32(_loc7_ + 8);
            var _loc5_:* = li32(_loc10_ + 12);
            if(uint(int(_loc6_ + _loc8_)) <= uint(_loc5_))
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc6_,_loc2_ + 8);
               si32(li32(_loc7_ + 4),_loc2_ + 4);
               _loc11_ = int(_loc9_ + _loc8_);
               si32(_loc11_,_loc2_);
               ESP = _loc2_;
               Fmemcpy();
               _loc2_ = int(_loc2_ + 16);
               _loc5_ = li32(_loc1_ + 4);
               _loc5_ = li32(_loc5_ + 8);
               _loc11_ = int(_loc5_ + li32(_loc10_ + 8));
               si32(_loc11_,_loc10_ + 8);
            }
            else
            {
               _loc1_ = li32(_loc10_ + 8);
               _loc4_ = _loc1_ + _loc6_;
               _loc8_ = li32(_loc10_ + 12);
               _loc7_ = li32(_loc7_ + 4);
               if(uint(_loc4_) <= uint(_loc8_))
               {
                  addr265:
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc7_,_loc2_ + 4);
                  _loc11_ = int(_loc9_ + _loc1_);
                  si32(_loc11_,_loc2_);
                  si32(_loc6_,_loc2_ + 8);
                  ESP = _loc2_;
                  Fmemcpy();
                  _loc2_ = int(_loc2_ + 16);
                  _loc11_ = li32(_loc10_ + 8);
                  _loc11_ = int(_loc11_ + _loc6_);
                  si32(_loc11_,_loc10_ + 8);
               }
               else
               {
                  while(true)
                  {
                     if(uint(_loc8_) >= uint(_loc4_))
                     {
                        if(_loc9_ != 0)
                        {
                           _loc1_ = li32(_loc10_ + 8);
                           §§goto(addr265);
                        }
                        break;
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc9_,_loc2_);
                     _loc8_ = _loc8_ << 1;
                     si32(_loc8_,_loc2_ + 4);
                     ESP = _loc2_;
                     F_realloc();
                     _loc2_ = int(_loc2_ + 16);
                     _loc9_ = int(eax);
                     if(_loc9_ == 0)
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
                     si32(_loc9_,_loc10_ + 4);
                     si32(_loc8_,_loc10_ + 12);
                  }
               }
            }
         }
      }
      else
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_ + 4);
         si32(_loc10_,_loc2_);
         ESP = _loc2_;
         F_d_print_comp();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
