package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccJ9Dgwu_2E_o_3A_c5d379ab_2D_8109_2D_4bc8_2D_aa7c_2D_892d83bcba3b.*;
   import avm2.intrinsics.memory.si8;
   
   public function F_GetItemAsMallocString() : void
   {
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:int = 0;
      var _loc9_:int = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(_loc1_);
      if(_loc3_ != 0)
      {
         var _loc4_:* = li8(_loc3_);
         if(_loc4_ != 0)
         {
            _loc5_ = li32(_loc1_ + 4);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc5_,_loc2_ + 4);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F_strstr();
            _loc2_ = int(_loc2_ + 16);
            _loc3_ = int(eax);
            if(_loc3_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(47,_loc2_ + 4);
               si32(_loc3_,_loc2_);
               ESP = _loc2_;
               F_strchr();
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = eax;
               if(_loc6_ != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc5_,_loc2_);
                  ESP = _loc2_;
                  F_strlen();
                  _loc2_ = int(_loc2_ + 16);
                  _loc6_ = int(_loc6_ - _loc3_) - int(eax);
                  _loc2_ = int(_loc2_ - 16);
                  si32(int(_loc6_ + 1),_loc2_);
                  ESP = _loc2_;
                  F_malloc();
                  _loc2_ = int(_loc2_ + 16);
                  _loc9_ = eax;
                  si32(_loc9_,li32(_loc1_ + 8));
                  if(_loc9_ != 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc5_,_loc2_);
                     ESP = _loc2_;
                     F_strlen();
                     _loc2_ = int(_loc2_ + 16);
                     _loc2_ = int(_loc2_ - 16);
                     si32(int(_loc3_ + int(eax)),_loc2_ + 4);
                     si32(_loc9_,_loc2_);
                     si32(_loc6_,_loc2_ + 8);
                     ESP = _loc2_;
                     Fmemcpy();
                     _loc2_ = int(_loc2_ + 16);
                     si8(0,int(_loc9_ + _loc6_));
                  }
               }
            }
         }
      }
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
