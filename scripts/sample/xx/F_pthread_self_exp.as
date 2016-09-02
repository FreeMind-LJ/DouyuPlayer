package sample.xx
{
   import avm2.intrinsics.memory.li32;
   
   public function F_pthread_self_exp() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(___thr_jtable + 424);
      ESP = _loc2_;
      ptr2fun[_loc1_]();
      _loc1_ = int(eax);
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
