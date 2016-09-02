package sample.xx_p_2D_demangle_2E_o_3A_4EAE8D64_2D_DBB8_2D_467F_2D_83C7_2D_85C6725F4EAC
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx.eax;
   
   public function F_d_template_args() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      _loc9_ = li32(_loc1_ + 44);
      _loc8_ = li32(_loc1_ + 12);
      _loc7_ = li8(_loc8_);
      _loc6_ = int(_loc8_ + 1);
      si32(_loc6_,_loc1_ + 12);
      _loc5_ = 0;
      if(_loc7_ == 73)
      {
         si32(0,_loc3_ - 4);
         _loc5_ = li8(_loc6_);
         _loc4_ = _loc3_ - 4;
         while(true)
         {
            _loc7_ = _loc5_ & 255;
            if(_loc7_ != 76)
            {
               _loc7_ = _loc5_ << 24;
               _loc7_ = _loc7_ >> 24;
               if(_loc7_ == 88)
               {
                  _loc7_ = int(_loc6_ + 1);
                  si32(_loc7_,_loc1_ + 12);
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc1_,_loc2_);
                  ESP = _loc2_;
                  F_d_expression();
                  _loc2_ = int(_loc2_ + 16);
                  _loc6_ = int(eax);
                  _loc8_ = li32(_loc1_ + 12);
                  _loc8_ = int(_loc8_ + 1);
                  si32(_loc8_,_loc1_ + 12);
                  if(li8(_loc8_) != 69)
                  {
                     _loc6_ = 0;
                  }
               }
               else
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc1_,_loc2_);
                  ESP = _loc2_;
                  F_d_type();
                  _loc2_ = int(_loc2_ + 16);
                  _loc6_ = int(eax);
               }
            }
            else
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F_d_expr_primary();
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = int(eax);
            }
            _loc5_ = 0;
            if(_loc6_ != 0)
            {
               _loc5_ = li32(_loc1_ + 20);
               if(_loc5_ < li32(_loc1_ + 24))
               {
                  _loc8_ = int(_loc5_ + 1);
                  si32(_loc8_,_loc1_ + 20);
                  _loc5_ = int(li32(_loc1_ + 16) + int(_loc5_ * 12));
                  if(_loc5_ != 0)
                  {
                     si32(39,_loc5_);
                     si32(_loc6_,_loc5_ + 4);
                     si32(0,_loc5_ + 8);
                     si32(_loc5_,_loc4_);
                     _loc4_ = _loc5_ + 8;
                     _loc6_ = li32(_loc1_ + 12);
                     _loc5_ = li8(_loc6_);
                     if(_loc5_ == 69)
                     {
                        _loc7_ = int(_loc6_ + 1);
                        si32(_loc7_,_loc1_ + 12);
                        si32(_loc9_,_loc1_ + 44);
                        _loc5_ = li32(_loc3_ - 4);
                        break;
                     }
                     continue;
                  }
               }
               _loc5_ = 0;
               si32(_loc5_,_loc4_);
               break;
            }
            break;
         }
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
