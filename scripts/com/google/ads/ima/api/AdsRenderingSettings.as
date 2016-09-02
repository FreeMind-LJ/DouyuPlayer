package com.google.ads.ima.api
{
   public class AdsRenderingSettings
   {
       
      
      public var showContentThumbnail:Boolean = true;
      
      public var autoAlign:Boolean = true;
      
      public var useStyledNonLinearAds:Boolean = false;
      
      public var baseYouTubeUrl:String;
      
      public var allowUnrelatedCompanion:Boolean;
      
      public var allowCompanionBeforeMaster:Boolean;
      
      public var mimeTypes:Array;
      
      public var bitrate:int = -1;
      
      public var surveyCreativeData:String = "";
      
      public var delivery:String;
      
      public var youTubeAdNamespace:uint = 0;
      
      public var linearAdPreferred:Boolean = true;
      
      public var mediaTimeout:int = 0;
      
      public function AdsRenderingSettings()
      {
         mimeTypes = VideoMimeTypes.DEFAULT_MIMETYPES.concat(AudioMimeTypes.DEFAULT_MIMETYPES);
         delivery = VideoDeliveryTypes.DEFAULT;
         super();
      }
   }
}
