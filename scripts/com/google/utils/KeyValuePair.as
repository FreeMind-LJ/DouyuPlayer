package com.google.utils
{
   public class KeyValuePair
   {
       
      
      public var value:Object;
      
      public var key:Object;
      
      public function KeyValuePair(param1:Object, param2:Object)
      {
         super();
         this.key = param1;
         this.value = param2;
      }
      
      public function toString() : String
      {
         return "{" + key + ": " + value + "}";
      }
   }
}
