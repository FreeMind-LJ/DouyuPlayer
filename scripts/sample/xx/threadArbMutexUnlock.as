package sample.xx
{
   public function threadArbMutexUnlock() : void
   {
      if(!--threadArbLockDepth)
      {
         threadArbMutex.unlock();
      }
   }
}
