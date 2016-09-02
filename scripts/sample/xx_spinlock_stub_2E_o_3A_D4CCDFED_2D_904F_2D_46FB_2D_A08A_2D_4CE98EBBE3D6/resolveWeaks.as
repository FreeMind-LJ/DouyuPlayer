package sample.xx_spinlock_stub_2E_o_3A_D4CCDFED_2D_904F_2D_46FB_2D_A08A_2D_4CE98EBBE3D6
{
   import sample.xx.__atomic_lock_stub;
   import sample.xx.F__atomic_lock_stub;
   import sample.xx.__spinlock_stub;
   import sample.xx.F__spinlock_stub;
   import sample.xx.__spinunlock_stub;
   import sample.xx.F__spinunlock_stub;
   import sample.xx.__spinlock_debug_stub;
   import sample.xx.F__spinlock_debug_stub;
   
   public function resolveWeaks() : Boolean
   {
      var _loc2_:Object = {
         1:1,
         "__atomic_lock":__atomic_lock_stub,
         "F__atomic_lock":F__atomic_lock_stub,
         "__spinlock":__spinlock_stub,
         "F__spinlock":F__spinlock_stub,
         "__spinunlock":__spinunlock_stub,
         "F__spinunlock":F__spinunlock_stub,
         "__spinlock_debug":__spinlock_debug_stub,
         "F__spinlock_debug":F__spinlock_debug_stub
      };
      var _loc4_:int = 0;
      var _loc3_:* = _loc2_;
      while(§§hasnext(_loc2_,_loc4_))
      {
         if(!(§§nextvalue(_loc4_,_loc3_)))
         {
            return false;
         }
      }
      modWeaks = _loc2_;
      return true;
   }
}
