package com.google.ads.ima.api
{
   public class CompanionAdSelectionSettings
   {
      
      public static const VAST_RESOURCE_TYPE_HTML:String = "VASTResourceType_HTML";
      
      public static const COMPANION_SIZE_NEAR_FIT:String = "CompanionSize_NearFit";
      
      public static const VAST_CREATIVE_TYPE_FLASH:String = "VASTCreativeType_Flash";
      
      public static const VAST_RESOURCE_TYPE_IFRAME:String = "VASTResourceType_IFrame";
      
      public static const COMPANION_SIZE_EXACT_FIT:String = "CompanionSize_ExactFit";
      
      public static const VAST_CREATIVE_TYPE_IMAGE:String = "VASTCreativeType_Image";
      
      public static const VAST_RESOURCE_TYPE_STATIC:String = "VASTResourceType_Static";
      
      public static const VAST_CREATIVE_TYPE_ALL:String = "VASTCreativeType_All";
      
      public static const VAST_RESOURCE_TYPE_ALL:String = "VASTResourceType_All";
      
      public static const COMPANION_SIZE_IGNORE:String = "CompanionSize_Ignore";
       
      
      public var sizeCriteria:String = "CompanionSize_ExactFit";
      
      public var resourceType:String = "VASTResourceType_All";
      
      public var creativeType:String = "VASTCreativeType_All";
      
      public var nearFitPercent:Number = 90;
      
      public function CompanionAdSelectionSettings()
      {
         super();
      }
   }
}
