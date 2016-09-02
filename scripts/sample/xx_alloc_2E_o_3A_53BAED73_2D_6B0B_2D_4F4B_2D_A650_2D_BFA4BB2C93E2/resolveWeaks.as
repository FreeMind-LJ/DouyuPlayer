package sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2
{
   import sample.xx.__pthread_mutex_init_calloc_cb_stub;
   import sample.xx.F__pthread_mutex_init_calloc_cb_stub;
   
   public function resolveWeaks() : Boolean
   {
      var _loc2_:Object = {
         1:1,
         "__pthread_mutex_init_calloc_cb":__pthread_mutex_init_calloc_cb_stub,
         "F__pthread_mutex_init_calloc_cb":F__pthread_mutex_init_calloc_cb_stub
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
