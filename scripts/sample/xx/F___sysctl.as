package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323.*;
   
   public function F___sysctl() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc8_ = li32(_loc1_);
      _loc7_ = li32(_loc3_ + 12);
      _loc6_ = li32(_loc3_ + 8);
      if(_loc8_ != 6)
      {
         _loc5_ = -1;
         if(_loc8_ == 1)
         {
            _loc1_ = li32(_loc1_ + 4);
            _loc5_ = -1;
            if(_loc1_ <= 9)
            {
               if(_loc1_ != 1)
               {
                  if(_loc1_ != 2)
                  {
                     if(_loc1_ == 4)
                     {
                        si32(20,_loc7_);
                        _loc2_ = int(_loc2_ - 16);
                        si32(___avm2_version,_loc2_ + 4);
                        si32(_loc6_,_loc2_);
                        ESP = _loc2_;
                        F_strcpy();
                        _loc2_ = int(_loc2_ + 16);
                        _loc5_ = 0;
                     }
                  }
                  else
                  {
                     si32(12,_loc7_);
                     _loc2_ = int(_loc2_ - 16);
                     si32(___avm2_osrelease,_loc2_ + 4);
                     si32(_loc6_,_loc2_);
                     ESP = _loc2_;
                     F_strcpy();
                     _loc2_ = int(_loc2_ + 16);
                     _loc5_ = 0;
                  }
               }
               else
               {
                  si32(8,_loc7_);
                  _loc2_ = int(_loc2_ - 16);
                  si32(___avm2_ostype,_loc2_ + 4);
                  si32(_loc6_,_loc2_);
                  ESP = _loc2_;
                  F_strcpy();
                  _loc2_ = int(_loc2_ + 16);
                  _loc5_ = 0;
               }
            }
            else if(_loc1_ != 10)
            {
               if(_loc1_ != 24)
               {
                  if(_loc1_ == 33)
                  {
                     si32(4,_loc7_);
                     var _loc4_:int = ESP_init;
                     si32(_loc4_,_loc6_);
                     _loc5_ = 0;
                  }
               }
               else
               {
                  si32(4,_loc7_);
                  si32(800028,_loc6_);
                  _loc5_ = 0;
               }
            }
            else
            {
               si32(19,_loc7_);
               _loc2_ = int(_loc2_ - 16);
               si32(___avm2_hostname,_loc2_ + 4);
               si32(_loc6_,_loc2_);
               ESP = _loc2_;
               F_strcpy();
               _loc2_ = int(_loc2_ + 16);
               _loc5_ = 0;
            }
         }
      }
      else
      {
         _loc1_ = li32(_loc1_ + 4);
         if(_loc1_ != 7)
         {
            if(_loc1_ != 3)
            {
               _loc5_ = -1;
               if(_loc1_ == 1)
               {
                  si32(5,_loc7_);
                  _loc2_ = int(_loc2_ - 16);
                  si32(___avm2_machine,_loc2_ + 4);
                  si32(_loc6_,_loc2_);
                  ESP = _loc2_;
                  F_strcpy();
                  _loc2_ = int(_loc2_ + 16);
                  _loc5_ = 0;
               }
            }
            else
            {
               si32(4,_loc7_);
               si32(8,_loc6_);
               _loc5_ = 0;
            }
         }
         else
         {
            si32(4,_loc7_);
            _loc4_ = pageSize;
            si32(_loc4_,_loc6_);
            _loc5_ = 0;
         }
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
