package sample.xx
{
   public function threadArbCondWait(param1:Number) : Boolean
   {
      var _loc2_:Boolean = false;
      _loc2_ = threadArbConds[threadId & 31].wait(param1);
      return _loc2_;
   }
}
