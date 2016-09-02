package sample.xx_trcmp_2E_o_3A_9A956F8D_2D_7ACF_2D_4C84_2D_A0E3_2D_7FC4909F73C2
{
   public function resolveWeaks() : Boolean
   {
      var _loc2_:Object = {1:1};
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
