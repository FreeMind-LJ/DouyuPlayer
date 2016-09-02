package sample.xx
{
   public const domainClass:Class = function():Class
   {
      var flashsystemNS:* = undefined;
      flashsystemNS = new Namespace("flash.system");
      return flashsystemNS::["ApplicationDomain"];
   }();
}
