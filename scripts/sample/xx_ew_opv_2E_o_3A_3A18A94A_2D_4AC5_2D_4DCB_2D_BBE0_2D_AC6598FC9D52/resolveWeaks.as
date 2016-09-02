package sample.xx_ew_opv_2E_o_3A_3A18A94A_2D_4AC5_2D_4DCB_2D_BBE0_2D_AC6598FC9D52
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
