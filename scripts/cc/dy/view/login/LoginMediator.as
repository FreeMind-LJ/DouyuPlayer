package cc.dy.view.login
{
   import org.puremvc.as3.patterns.mediator.Mediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import flash.utils.Timer;
   import flash.net.SharedObject;
   import util.Util;
   import util.$;
   import flash.events.TimerEvent;
   import common.event.ObjectEvent;
   import flash.utils.setTimeout;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import common.event.EventCenter;
   
   public class LoginMediator extends Mediator implements IMediator
   {
      
      public static var NAME:String = "LoginMediator";
       
      
      private var isLoginFail:Boolean = false;
      
      private var hasClick:Boolean = false;
      
      private var cutTimer:Timer;
      
      public function LoginMediator(param1:Object)
      {
         super(NAME,param1);
         EventCenter.addEventListener("login",this.__loginResponse);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [Order.Room_Check_Request,Order.On_Resize];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case Order.Room_Check_Request:
               this.checkRoomPassword();
               break;
            case Order.On_Resize:
               this.onResize();
         }
      }
      
      private function checkRoomPassword() : void
      {
         var mySo:SharedObject = null;
         var cacheObj:Array = null;
         var passStr:String = null;
         if(Param.HAS_PASS == 1 && (Param.IS_HOSTLIVE == 0 && Param.usergroupid != "5"))
         {
            mySo = SharedObject.getLocal("password","/");
            cacheObj = mySo.data.cacheObj as Array;
            if(cacheObj == null)
            {
               cacheObj = [];
               mySo.data.cacheObj = cacheObj;
            }
            passStr = Util.hasRoomPass(Param.RoomId,cacheObj);
            if(passStr != null && passStr != "" && !this.isLoginFail)
            {
               Param.PASS_VERIFY = passStr;
               $.asTojs("room_bus_login");
            }
            else
            {
               GlobalData.LOGINLAYER.addChild(this.loginView);
               this.loginView.initPasspanel(function(param1:String):void
               {
                  if(!hasClick)
                  {
                     hasClick = true;
                     Param.PASS_VERIFY = param1;
                     $.asTojs("room_bus_login");
                  }
               });
               this.loginView.resize();
               if(this.cutTimer == null)
               {
                  this.cutTimer = new Timer(1000);
                  this.cutTimer.addEventListener(TimerEvent.TIMER,function():void
                  {
                     sendNotification(Order.Video_Reset_Request,null);
                  });
                  this.cutTimer.start();
               }
               else
               {
                  this.cutTimer.reset();
                  this.cutTimer.start();
               }
            }
         }
         else
         {
            $.asTojs("room_bus_login");
         }
      }
      
      private function __loginResponse(param1:ObjectEvent) : void
      {
         var mySo:SharedObject = null;
         var cacheObj:Array = null;
         var currentRoomObj:Object = null;
         var roomObj:Object = null;
         var roomSo:SharedObject = null;
         var cacheRoomsObj:Array = null;
         var errorRoomObj:Object = null;
         var currentTime:Number = NaN;
         var recordTime:Number = NaN;
         var currentCount:int = 0;
         var e:ObjectEvent = param1;
         this.hasClick = false;
         var code:int = e.data.code;
         if(code == 0 && (Param.PASS_VERIFY != null && Param.PASS_VERIFY != ""))
         {
            if(this.loginView.parent != null)
            {
               this.loginView.parent.removeChild(this.loginView);
            }
            if(this.cutTimer != null)
            {
               this.cutTimer.stop();
               this.cutTimer = null;
               sendNotification(Order.Enter_Video_Request,null);
            }
            mySo = SharedObject.getLocal("password","/");
            cacheObj = mySo.data.cacheObj as Array;
            currentRoomObj = Util.hasRoom(Param.RoomId,cacheObj);
            if(currentRoomObj != null)
            {
               currentRoomObj.pass = Param.PASS_VERIFY;
            }
            else
            {
               roomObj = new Object();
               roomObj.id = Param.RoomId;
               roomObj.pass = Param.PASS_VERIFY;
               cacheObj.push(roomObj);
            }
            this.isLoginFail = false;
         }
         else if(code == 1 && (Param.PASS_VERIFY != null && Param.PASS_VERIFY != ""))
         {
            if(this.loginView != null && this.loginView.parent != null)
            {
               roomSo = SharedObject.getLocal("password","/");
               cacheRoomsObj = roomSo.data.cacheObj as Array;
               errorRoomObj = Util.hasRoom(Param.RoomId,cacheRoomsObj);
               currentTime = new Date().time;
               if(errorRoomObj != null)
               {
                  recordTime = errorRoomObj.time;
                  if(currentTime - recordTime > 5 * 60 * 1000)
                  {
                     errorRoomObj.count = 1;
                     errorRoomObj.time = currentTime;
                     this.loginView.validatError("密码错误！还可以输2次");
                  }
                  else
                  {
                     currentCount = errorRoomObj.count;
                     errorRoomObj.time = currentTime;
                     if(currentCount >= 2)
                     {
                        this.loginView.validatError("密码输入错误，请5分钟后再输入");
                        setTimeout(function():void
                        {
                           navigateToURL(new URLRequest(GlobalData.prefix + Param.DomainName),"_self");
                        },3000);
                     }
                     else
                     {
                        this.loginView.validatError("密码错误！还可以输1次");
                        currentCount++;
                        errorRoomObj.count = currentCount;
                        errorRoomObj.time = currentTime;
                     }
                  }
               }
               else
               {
                  errorRoomObj = new Object();
                  errorRoomObj.id = Param.RoomId;
                  errorRoomObj.count = 1;
                  errorRoomObj.time = currentTime;
                  cacheRoomsObj.push(errorRoomObj);
                  this.loginView.validatError("密码错误！还可以输2次");
               }
            }
            else if(Param.PASS_VERIFY != null && Param.PASS_VERIFY != "")
            {
               GlobalData.LOGINLAYER.addChild(this.loginView);
               this.loginView.initPasspanel(function(param1:String):void
               {
                  Param.PASS_VERIFY = param1;
                  $.asTojs("room_bus_login");
               });
               this.loginView.resize();
               if(this.cutTimer == null)
               {
                  this.cutTimer = new Timer(1000);
                  this.cutTimer.addEventListener(TimerEvent.TIMER,function():void
                  {
                     sendNotification(Order.Video_Reset_Request,null);
                  });
                  this.cutTimer.start();
               }
               else
               {
                  this.cutTimer.reset();
                  this.cutTimer.start();
               }
            }
            this.isLoginFail = true;
            sendNotification(Order.Room_Login_Request,null);
         }
         else if(code == 1 && (Param.PASS_VERIFY == null || Param.PASS_VERIFY == ""))
         {
            this.isLoginFail = true;
            sendNotification(Order.Room_Login_Request,null);
         }
      }
      
      public function onResize() : void
      {
         this.loginView.resize();
      }
      
      public function get loginView() : LoginView
      {
         return viewComponent as LoginView;
      }
   }
}
