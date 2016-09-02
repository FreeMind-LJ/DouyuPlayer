package sample.xx
{
   public const conditionClass:Class = function():Class
   {
      var flashconcNS:* = undefined;
      flashconcNS = new Namespace("flash.concurrent");
      return flashconcNS::["Condition"];
   }();
}
