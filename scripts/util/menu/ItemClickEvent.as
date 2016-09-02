package util.menu
{
   import flash.events.Event;
   
   public class ItemClickEvent extends Event
   {
      
      public static const LEFT:String = "moveLeft";
      
      public static const RIGHT:String = "moveRight";
      
      public static const ITEM_CLICK:String = "itemClick";
      
      public static const CATE_REFRESH:String = "cateRefresh";
      
      public static const BUY_ITEM:String = "buyItem";
       
      
      private var index:int;
      
      private var actionString:String;
      
      public function ItemClickEvent(param1:String, param2:int, param3:String = "")
      {
         super(param1);
         this.index = param2;
         this.actionString = param3;
      }
      
      public function getIndex() : int
      {
         return this.index;
      }
      
      public function getActionString() : String
      {
         return this.actionString;
      }
   }
}
