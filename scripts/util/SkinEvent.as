package util
{
   import flash.events.Event;
   
   public class SkinEvent extends Event
   {
      
      public static const SKIN_PLAY:String = "play";
      
      public static const SKIN_PAUSE:String = "pause";
      
      public static const SKIN_VOLUME_CHANGE:String = "volume";
      
      public static const SKIN_SILENT:String = "silent";
      
      public static const SKIN_SILENT_CANCEL:String = "silentCancel";
      
      public static const SKIN_COMMENT_SHOW:String = "showComment";
      
      public static const SKIN_COMMENT_HIDE:String = "hideComment";
      
      public static const SKIN_FULLSCREEN:String = "fullscreen";
      
      public static const SKIN_SYSTEM_FULLSCREEN:String = "systemFullscreen";
      
      public static const SKIN_NORMALSCREEN:String = "normalscreen";
      
      public static const SKIN_SENDCOMMENT:String = "sendComment";
      
      public static const SKIN_RELOAD:String = "reload";
      
      public static const SKIN_PAGEFULLSCREEN:String = "pageFullScreen";
      
      public static const SKIN_QUITPAGEFULLSCREEN:String = "quitPageFullScreen";
      
      public static const SKIN_FEEDBACK:String = "feedBack";
       
      
      public var data;
      
      public function SkinEvent(param1:String, param2:* = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
   }
}
