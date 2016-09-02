package sample.xx_eallocf_2E_o_3A_D93ABCC6_2D_01B9_2D_4872_2D_8B96_2D_319838CED5BB
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
