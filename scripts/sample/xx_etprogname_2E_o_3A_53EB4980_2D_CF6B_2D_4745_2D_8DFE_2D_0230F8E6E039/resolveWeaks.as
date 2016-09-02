package sample.xx_etprogname_2E_o_3A_53EB4980_2D_CF6B_2D_4745_2D_8DFE_2D_0230F8E6E039
{
   import sample.xx.__getprogname;
   import sample.xx.F__getprogname;
   
   public function resolveWeaks() : Boolean
   {
      var _loc2_:Object = {
         1:1,
         "_getprogname":__getprogname,
         "F_getprogname":F__getprogname
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
