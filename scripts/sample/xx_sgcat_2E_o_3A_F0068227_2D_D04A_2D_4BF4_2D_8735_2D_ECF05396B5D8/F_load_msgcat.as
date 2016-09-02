package sample.xx_sgcat_2E_o_3A_F0068227_2D_D04A_2D_4BF4_2D_8735_2D_ECF05396B5D8
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   
   public function F_load_msgcat() : void
   {
      var _loc3_:* = 0;
      var _loc5_:int = 0;
      var _loc4_:int = 0;
      var _loc1_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 96);
      _loc2_ = int(_loc2_ - 16);
      si32(0,_loc2_ + 4);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__open();
      _loc6_ = -1;
      _loc2_ = int(_loc2_ + 16);
      _loc5_ = eax;
      if(_loc5_ != -1)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(int(_loc3_ - 96),_loc2_ + 4);
         si32(_loc5_,_loc2_);
         ESP = _loc2_;
         F__fstat();
         _loc2_ = int(_loc2_ + 16);
         if(int(eax) != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F__close();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = -1;
         }
         else
         {
            _loc2_ = int(_loc2_ - 32);
            si32(0,_loc2_ + 24);
            si32(0,_loc2_ + 20);
            si32(_loc5_,_loc2_ + 16);
            si32(1,_loc2_ + 12);
            si32(1,_loc2_ + 8);
            si32(li32(_loc3_ - 48),_loc2_ + 4);
            si32(0,_loc2_);
            ESP = _loc2_;
            F_mmap();
            _loc2_ = int(_loc2_ + 32);
            _loc4_ = eax;
            _loc2_ = int(_loc2_ - 16);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F__close();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = -1;
            if(_loc4_ != -1)
            {
               if(li32(_loc4_) != -1979741953)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(li32(_loc3_ - 48),_loc2_ + 4);
                  si32(_loc4_,_loc2_);
                  ESP = _loc2_;
                  F_munmap();
                  _loc2_ = int(_loc2_ + 16);
                  ESP = _loc2_;
                  F___error();
                  si32(22,int(eax));
                  _loc6_ = -1;
               }
               else
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(8,_loc2_);
                  ESP = _loc2_;
                  F_malloc();
                  _loc2_ = int(_loc2_ + 16);
                  _loc6_ = eax;
                  if(_loc6_ == 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(li32(_loc3_ - 48),_loc2_ + 4);
                     si32(_loc4_,_loc2_);
                     ESP = _loc2_;
                     F_munmap();
                     _loc2_ = int(_loc2_ + 16);
                     _loc6_ = -1;
                  }
                  else
                  {
                     si32(_loc4_,_loc6_);
                     si32(li32(_loc3_ - 48),_loc6_ + 4);
                  }
               }
            }
         }
      }
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
