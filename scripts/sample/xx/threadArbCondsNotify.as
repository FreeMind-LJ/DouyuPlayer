package sample.xx
{
   public function threadArbCondsNotify(param1:int) : void
   {
      var _loc2_:int = 0;
      while(param1 && _loc2_ < 32)
      {
         if(param1 & 1)
         {
            threadArbConds[_loc2_].notifyAll();
         }
         param1 = param1 >> 1;
         _loc2_++;
      }
   }
}
