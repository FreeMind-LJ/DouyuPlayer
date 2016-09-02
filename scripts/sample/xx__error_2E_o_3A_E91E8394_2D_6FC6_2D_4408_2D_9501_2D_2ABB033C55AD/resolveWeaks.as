package sample.xx__error_2E_o_3A_E91E8394_2D_6FC6_2D_4408_2D_9501_2D_2ABB033C55AD
{
   import sample.xx.___error_unthreaded;
   import sample.xx.F___error_unthreaded;
   
   public function resolveWeaks() : Boolean
   {
      var _loc2_:Object = {
         1:1,
         "___error":___error_unthreaded,
         "F___error":F___error_unthreaded
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
