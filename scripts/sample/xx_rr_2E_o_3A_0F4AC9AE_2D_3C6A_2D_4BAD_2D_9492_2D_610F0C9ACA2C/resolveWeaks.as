package sample.xx_rr_2E_o_3A_0F4AC9AE_2D_3C6A_2D_4BAD_2D_9492_2D_610F0C9ACA2C
{
   import sample.xx.__err;
   import sample.xx.F__err;
   import sample.xx.__warn;
   import sample.xx.F__warn;
   
   public function resolveWeaks() : Boolean
   {
      var _loc2_:Object = {
         1:1,
         "_err":__err,
         "F_err":F__err,
         "_warn":__warn,
         "F_warn":F__warn
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
