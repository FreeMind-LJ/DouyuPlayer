package sample.xx_aise_2E_o_3A_4C102DBF_2D_2CC7_2D_45B7_2D_AFA8_2D_529FC1953E6B
{
   import sample.xx.___raise;
   import sample.xx.F___raise;
   
   public function resolveWeaks() : Boolean
   {
      var _loc2_:Object = {
         1:1,
         "_raise":___raise,
         "F_raise":F___raise,
         "__raise":___raise,
         "F__raise":F___raise
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
