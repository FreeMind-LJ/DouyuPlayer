package com.ws.stat
{
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.net.URLRequestMethod;
   import flash.net.URLLoader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class NetUtil
   {
      
      protected static var m_loaderMap:Object = new Object();
       
      
      public function NetUtil()
      {
         super();
      }
      
      public static function sendData(param1:String, param2:String = "", param3:Function = null, param4:Function = null, param5:Boolean = false) : void
      {
         var urlKey:String = null;
         var urlArgs:URLVariables = null;
         var url:String = param1;
         var strVariables:String = param2;
         var resultCallback:Function = param3;
         var errorCallback:Function = param4;
         var usePost:Boolean = param5;
         url = StringUtil.trim(url);
         var request:URLRequest = new URLRequest(url);
         request.method = !!usePost?URLRequestMethod.POST:URLRequestMethod.GET;
         if(strVariables != "")
         {
            if(url.indexOf("?") > -1)
            {
               urlKey = url + "&" + strVariables;
            }
            else
            {
               urlKey = url + "?" + strVariables;
            }
            url = urlKey;
            request.data = strVariables;
         }
         else
         {
            urlKey = url;
            if(url.indexOf("?") > -1)
            {
               request = new URLRequest(url);
            }
            else
            {
               urlArgs = new URLVariables();
               request.data = urlArgs;
            }
         }
         if(m_loaderMap[urlKey] == undefined)
         {
            m_loaderMap[urlKey] = new URLLoader();
         }
         else
         {
            try
            {
               m_loaderMap[urlKey].close();
            }
            catch(e:Error)
            {
               trace("NetUtils::getData/m_loaderMap[urlKey].close()->",e.message);
            }
         }
         if(resultCallback != null)
         {
            m_loaderMap[urlKey].addEventListener(Event.COMPLETE,resultCallback,false,0,true);
         }
         if(errorCallback != null)
         {
            m_loaderMap[urlKey].addEventListener(IOErrorEvent.IO_ERROR,errorCallback,false,0,true);
            m_loaderMap[urlKey].addEventListener(SecurityErrorEvent.SECURITY_ERROR,errorCallback,false,0,true);
         }
         try
         {
            m_loaderMap[urlKey].load(request);
            return;
         }
         catch(e:Error)
         {
            trace(e.message);
            return;
         }
      }
      
      public static function getData(param1:String, param2:URLVariables = null, param3:Function = null, param4:Function = null, param5:Boolean = false) : void
      {
         var urlKey:String = null;
         var urlArgs:URLVariables = null;
         var url:String = param1;
         var args:URLVariables = param2;
         var resultCallback:Function = param3;
         var errorCallback:Function = param4;
         var usePost:Boolean = param5;
         url = StringUtil.trim(url);
         var request:URLRequest = new URLRequest(url);
         request.method = !!usePost?URLRequestMethod.POST:URLRequestMethod.GET;
         if(args != null)
         {
            if(url.indexOf("?") > -1)
            {
               urlKey = url + "&" + args.toString();
               if(usePost)
               {
                  request.data = args;
               }
               else
               {
                  url = urlKey;
                  request = new URLRequest(url);
               }
            }
            else
            {
               urlKey = url + "?" + args.toString();
               request.data = args;
            }
         }
         else
         {
            urlKey = url;
            if(url.indexOf("?") > -1)
            {
               request = new URLRequest(url);
            }
            else
            {
               urlArgs = new URLVariables();
               request.data = urlArgs;
            }
         }
         if(m_loaderMap[urlKey] == undefined)
         {
            m_loaderMap[urlKey] = new URLLoader();
         }
         else
         {
            try
            {
               m_loaderMap[urlKey].close();
            }
            catch(e:Error)
            {
               trace("NetUtils::getData/m_loaderMap[urlKey].close()->",e.message);
            }
         }
         if(resultCallback != null)
         {
            m_loaderMap[urlKey].addEventListener(Event.COMPLETE,resultCallback,false,0,true);
         }
         if(errorCallback != null)
         {
            m_loaderMap[urlKey].addEventListener(IOErrorEvent.IO_ERROR,errorCallback,false,0,true);
            m_loaderMap[urlKey].addEventListener(SecurityErrorEvent.SECURITY_ERROR,errorCallback,false,0,true);
         }
         try
         {
            m_loaderMap[urlKey].load(request);
            return;
         }
         catch(e:Error)
         {
            trace(e.message);
            return;
         }
      }
      
      public static function createTimeStamp(param1:URLVariables) : void
      {
         param1.timestamp = new Date().getTime();
      }
   }
}
