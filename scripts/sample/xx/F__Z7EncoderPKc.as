package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccJ9Dgwu_2E_o_3A_c5d379ab_2D_8109_2D_4bc8_2D_aa7c_2D_892d83bcba3b.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__Z7EncoderPKc() : void
   {
      var _loc1_:* = 0;
      var _loc7_:int = 0;
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:int = 0;
      var _loc8_:int = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = 0;
      _loc4_ = li32(_loc1_);
      if(_loc4_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         F_strlen();
         _loc2_ = int(_loc2_ + 16);
         _loc5_ = eax;
         _loc2_ = int(_loc2_ - 16);
         var _loc6_:* = _loc5_ << 1;
         _loc6_ = _loc6_ | 1;
         si32(_loc6_,_loc2_);
         ESP = _loc2_;
         F_malloc();
         _loc3_ = 0;
         _loc2_ = int(_loc2_ + 16);
         _loc7_ = eax;
         if(_loc7_ != 0)
         {
            _loc8_ = 0;
            if(_loc5_ >= 1)
            {
               do
               {
                  _loc3_ = li8(_loc4_);
                  if(_loc3_ != 64)
                  {
                     if(_loc3_ == 47)
                     {
                        si8(64,int(_loc7_ + _loc8_));
                        _loc8_ = _loc8_ + 1;
                        si8(83,int(_loc7_ + _loc8_));
                     }
                     else
                     {
                        si8(_loc3_,int(_loc7_ + _loc8_));
                     }
                  }
                  else
                  {
                     si8(64,int(_loc7_ + _loc8_));
                     _loc8_ = _loc8_ + 1;
                     si8(65,int(_loc7_ + _loc8_));
                  }
                  _loc4_ = int(_loc4_ + 1);
                  _loc5_ = _loc5_ + -1;
                  _loc8_ = _loc8_ + 1;
               }
               while(_loc5_ != 0);
               
            }
            _loc6_ = int(_loc7_ + _loc8_);
            si8(0,_loc6_);
            _loc3_ = _loc7_;
         }
      }
      eax = _loc3_;
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
