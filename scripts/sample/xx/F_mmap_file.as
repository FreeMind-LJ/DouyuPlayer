package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_gl_2E_o_3A_0E02E7F6_2D_96BC_2D_4BCB_2D_8473_2D_E51F396EDDBD.*;
   
   public function F_mmap_file() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      var _loc8_:* = li32(_loc3_ + 16);
      if(_loc8_ == 0)
      {
         var _loc5_:* = li32(_loc3_ + 8);
         var _loc4_:* = li32(_loc3_ + 4);
         _loc8_ = li32(_loc3_);
         _loc2_ = int(_loc2_ - 32);
         si32(li32(_loc3_ + 20),_loc2_ + 20);
         si32(-1,_loc2_ + 16);
         si32(4096,_loc2_ + 12);
         si32(_loc5_,_loc2_ + 8);
         si32(_loc4_,_loc2_ + 4);
         si32(_loc8_,_loc2_);
         si32(li32(_loc3_ + 24),_loc2_ + 24);
         ESP = _loc2_;
         F___sys_mmap();
         _loc2_ = int(_loc2_ + 32);
         _loc1_ = eax;
         if(_loc1_ != 0)
         {
            si32(_loc1_,___avm2_stdin_mapping);
            _loc4_ = li32(___avm2_vgl_fb_w);
            _loc8_ = int(_loc4_ * li32(___avm2_vgl_fb_h));
            _loc2_ = int(_loc2_ - 16);
            si32(_loc8_ << 2,_loc2_);
            ESP = _loc2_;
            F_malloc();
            _loc2_ = int(_loc2_ + 16);
            _loc8_ = int(eax);
            si32(_loc8_,___avm2_vgl_argb_buffer);
         }
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
