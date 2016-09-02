package sample.xx
{
   import sample.xx_flock_stub_2E_o_3A_0962121A_2D_C7C3_2D_4AEA_2D_9B6D_2D_F499985230BD.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ftrylockfile() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:int = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      ESP = _loc2_;
      F__pthread_self();
      _loc1_ = eax;
      _loc6_ = li32(_loc3_);
      var _loc5_:* = li32(_loc6_ + 92);
      if(_loc5_ == _loc1_)
      {
         _loc5_ = li32(_loc6_ + 96);
         _loc5_ = int(_loc5_ + 1);
         si32(_loc5_,_loc6_ + 96);
         _loc4_ = 0;
      }
      else
      {
         _loc2_ = int(_loc2_ - 16);
         _loc5_ = int(_loc6_ + 88);
         si32(_loc5_,_loc2_);
         ESP = _loc2_;
         F__pthread_mutex_trylock();
         _loc4_ = -1;
         _loc2_ = int(_loc2_ + 16);
         _loc5_ = int(eax);
         if(_loc5_ == 0)
         {
            si32(_loc1_,_loc6_ + 92);
            si32(1,_loc6_ + 96);
            _loc4_ = 0;
         }
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
