package sample.xx_flock_stub_2E_o_3A_0962121A_2D_C7C3_2D_4AEA_2D_9B6D_2D_F499985230BD
{
   import sample.xx.__flockfile;
   import sample.xx.F__flockfile;
   import sample.xx.__ftrylockfile;
   import sample.xx.F__ftrylockfile;
   import sample.xx.__funlockfile;
   import sample.xx.F__funlockfile;
   
   public function resolveWeaks() : Boolean
   {
      var _loc2_:Object = {
         1:1,
         "_flockfile":__flockfile,
         "F_flockfile":F__flockfile,
         "_ftrylockfile":__ftrylockfile,
         "F_ftrylockfile":F__ftrylockfile,
         "_funlockfile":__funlockfile,
         "F_funlockfile":F__funlockfile
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
