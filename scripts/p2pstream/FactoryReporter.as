package p2pstream
{
   import flash.net.Socket;
   import flash.utils.ByteArray;
   import flash.system.Security;
   import flash.utils.getTimer;
   import flash.system.Capabilities;
   import flash.events.Event;
   import conf.SwcConfig;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.ProgressEvent;
   
   public class FactoryReporter
   {
      
      public static const CODE_DOWNLOAD_ERROR:String = "101";
      
      public static const CODE_FLASH_VERSION_OVERDUE:String = "111";
      
      public static const CODE_IMPORT_CLASS:String = "importClass";
      
      public static const CODE_PLANT_VERSION_NOT_SATISFIED:String = "113";
      
      public static const CODE_DOWNLOAD_TIMEOUT:String = "102";
      
      public static const CODE_DOWNLOAD_SUCCESS:String = "100";
      
      public static const CODE_FLASH_VERSION_DEBUGER:String = "112";
       
      
      public function FactoryReporter()
      {
         super();
      }
      
      public static function sendReport(param1:String, param2:Object) : void
      {
         var objectBytes:ByteArray = null;
         var o:Object = null;
         var socket:Socket = null;
         var onConnect:Function = null;
         var onError:Function = null;
         var onData:Function = null;
         var ifirst:Boolean = false;
         var io:Object = null;
         var code:String = param1;
         var info:Object = param2;
         Security.allowDomain("*");
         var reportObject:Object = new Object();
         reportObject.id = "swc";
         reportObject.c = XNetStreamFactory.PARTNERID + "--";
         reportObject.t = getTimer();
         reportObject.fv = Capabilities.version;
         reportObject.code = code;
         reportObject.i = info;
         objectBytes = new ByteArray();
         objectBytes.writeUTFBytes("{");
         var first:Boolean = false;
         for(o in reportObject)
         {
            if(first)
            {
               objectBytes.writeUTFBytes(",");
            }
            if(o != "i")
            {
               objectBytes.writeUTFBytes("\"" + o + "\":\"" + reportObject[o] + "\"");
            }
            else
            {
               objectBytes.writeUTFBytes("\"i\":{");
               ifirst = false;
               for(io in reportObject[o])
               {
                  if(ifirst)
                  {
                     objectBytes.writeUTFBytes(",");
                  }
                  objectBytes.writeUTFBytes("\"" + io + "\":\"" + reportObject[o][io] + "\"");
                  ifirst = true;
               }
               objectBytes.writeUTFBytes("}");
            }
            first = true;
         }
         objectBytes.writeUTFBytes("}");
         socket = new Socket();
         onConnect = function(param1:Event):void
         {
            var _loc2_:ByteArray = new ByteArray();
            _loc2_.writeUTFBytes("POST " + SwcConfig.REPORTER_URI + " HTTP/1.1\r\n" + "User-Agent: flash\r\n" + "Content-Length: " + objectBytes.length + "\r\n" + "Content-Type: application/binary\r\n" + "Host: " + SwcConfig.REPORTER_HOST + ":" + SwcConfig.REPORTER_PORT + "\r\n\r\n");
            _loc2_.writeBytes(objectBytes);
            socket.writeBytes(_loc2_);
            socket.flush();
         };
         onError = function(param1:Event):void
         {
            if(socket.connected)
            {
               socket.close();
            }
         };
         onData = function(param1:Event):void
         {
            var _loc2_:ByteArray = new ByteArray();
            socket.readBytes(_loc2_);
            if(socket.connected)
            {
               socket.close();
            }
         };
         socket.addEventListener(IOErrorEvent.IO_ERROR,onError);
         socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onError);
         socket.addEventListener(Event.CONNECT,onConnect);
         socket.addEventListener(ProgressEvent.SOCKET_DATA,onData);
         socket.connect(SwcConfig.REPORTER_HOST,int(SwcConfig.REPORTER_PORT));
      }
   }
}
