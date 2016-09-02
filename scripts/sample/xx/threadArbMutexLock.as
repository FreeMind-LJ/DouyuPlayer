package sample.xx
{
   public function threadArbMutexLock() : void
   {
      if(!threadArbLockDepth++)
      {
         threadArbMutex.lock();
      }
   }
}
