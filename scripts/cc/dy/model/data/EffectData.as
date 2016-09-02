package cc.dy.model.data
{
   public class EffectData
   {
       
      
      public var type:int;
      
      public var nickname:String;
      
      public var num:int;
      
      public var time:Number;
      
      public function EffectData(param1:int, param2:String, param3:int, param4:Number)
      {
         super();
         this.type = param1;
         this.nickname = param2;
         this.num = param3;
         this.time = param4;
      }
   }
}
