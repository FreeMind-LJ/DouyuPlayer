package sample.xx
{
   import sample.xx_ls_2E_o_3A_01458B9F_2D_2A2B_2D_4FF7_2D_8FFE_2D_2EDF72BF4080.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__init_tls() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc8_:int = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_environ);
      _loc9_ = int(_loc1_ + 4);
      while(true)
      {
         _loc8_ = _loc9_ + 4;
         _loc1_ = li32(_loc9_ - 4);
         _loc7_ = 0;
         _loc9_ = _loc8_;
         _loc6_ = _loc7_;
         _loc5_ = _loc7_;
         if(_loc1_ != 0)
         {
            continue;
         }
         break;
      }
      while(true)
      {
         _loc9_ = li32(_loc8_ - 4);
         if(_loc9_ <= 3)
         {
            if(_loc9_ != 0)
            {
               if(_loc9_ == 3)
               {
                  _loc5_ = li32(_loc8_);
               }
            }
            else
            {
               break;
            }
         }
         else if(_loc9_ != 4)
         {
            if(_loc9_ == 5)
            {
               _loc7_ = li32(_loc8_);
            }
         }
         else
         {
            _loc6_ = li32(_loc8_);
         }
         _loc8_ = _loc8_ + 8;
      }
      if(_loc6_ == 32)
      {
         if(_loc5_ != 0)
         {
            if(_loc7_ != 0)
            {
               if(_loc7_ != 0)
               {
                  _loc6_ = int(_loc5_ + 16);
                  do
                  {
                     _loc1_ = li32(_loc6_ - 16);
                     if(_loc1_ == 7)
                     {
                        _loc1_ = li32(_loc6_ + 12);
                        var _loc4_:* = li32(_loc6_ + 4);
                        _loc4_ = int(_loc4_ + _loc1_);
                        si32(int(_loc4_ + -1) & int(0 - _loc1_),_tls_static_space);
                        si32(li32(_loc6_),_tls_init_size);
                        si32(li32(_loc6_ - 8),_tls_init);
                     }
                     _loc6_ = int(_loc6_ + 32);
                     _loc7_ = int(_loc7_ + -1);
                  }
                  while(_loc7_ != 0);
                  
               }
               _loc2_ = int(_loc2_ - 16);
               si32(4,_loc2_ + 8);
               si32(12,_loc2_ + 4);
               si32(0,_loc2_);
               ESP = _loc2_;
               F__rtld_allocate_tls();
               _loc2_ = int(_loc2_ + 16);
               _loc1_ = int(eax);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F__set_tp();
               _loc2_ = int(_loc2_ + 16);
            }
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
