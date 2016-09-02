package sample.xx_sinf_2E_o_3A_B573B27A_2D_329D_2D_4FE7_2D_A887_2D_BE86EA421094
{
   import sample.xx.___isinf;
   import sample.xx.F___isinf;
   
   public function resolveWeaks() : Boolean
   {
      var _loc2_:Object = {
         1:1,
         "_isinf":___isinf,
         "F_isinf":F___isinf
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
