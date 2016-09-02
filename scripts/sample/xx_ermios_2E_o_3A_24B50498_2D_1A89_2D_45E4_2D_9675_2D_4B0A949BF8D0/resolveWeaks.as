package sample.xx_ermios_2E_o_3A_24B50498_2D_1A89_2D_45E4_2D_9675_2D_4B0A949BF8D0
{
   import sample.xx.___tcdrain;
   import sample.xx.F___tcdrain;
   
   public function resolveWeaks() : Boolean
   {
      var _loc2_:Object = {
         1:1,
         "_tcdrain":___tcdrain,
         "F_tcdrain":F___tcdrain,
         "__tcdrain":___tcdrain,
         "F__tcdrain":F___tcdrain
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
