package sample.xx_dtoa_gmisc_2E_o_3A_C01A1421_2D_4B03_2D_4E27_2D_989A_2D_B4A6934E85D5
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
