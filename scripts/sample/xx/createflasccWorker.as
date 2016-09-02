package sample.xx
{
   public function createflasccWorker() : *
   {
      if(!workerSWFBytes)
      {
         workerSWFBytes = retargetSWF();
      }
      return workerDomainClass["current"].createWorker(workerSWFBytes);
   }
}
