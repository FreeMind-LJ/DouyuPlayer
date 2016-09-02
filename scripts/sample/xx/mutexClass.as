package sample.xx
{
   public const mutexClass:Class = function():Class
   {
      var flashconcNS:* = undefined;
      var mc:* = undefined;
      var m:* = undefined;
      flashconcNS = new Namespace("flash.concurrent");
      mc = flashconcNS::["Mutex"];
      m = new mc();
      m.lock();
      m.unlock();
      return mc;
   }();
}
