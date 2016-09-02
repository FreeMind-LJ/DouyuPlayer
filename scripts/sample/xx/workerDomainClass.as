package sample.xx
{
   public const workerDomainClass:Class = function():Class
   {
      var flashsystemNS:* = undefined;
      flashsystemNS = new Namespace("flash.system");
      return flashsystemNS::["WorkerDomain"];
   }();
}
