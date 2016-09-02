package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_printf_2E_o_3A_6EDE186A_2D_A78D_2D_4139_2D_B1C2_2D_0C5D348116BA.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   
   public function F_register_printf_render_std() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      while(true)
      {
         _loc5_ = li8(_loc1_);
         _loc6_ = 0;
         if(_loc5_ != 0)
         {
            _loc6_ = -1;
            if(_loc5_ <= 80)
            {
               if(_loc5_ != 72)
               {
                  if(_loc5_ != 77)
                  {
                     break;
                  }
                  var _loc4_:int = _printf_tbl + int(_loc5_ * 12);
                  si32(___printf_render_errno,_loc4_ + 8);
                  si32(___printf_arginfo_errno,_loc4_);
                  si32(1,___use_xprintf);
               }
               else
               {
                  _loc4_ = _printf_tbl + int(_loc5_ * 12);
                  si32(___printf_render_hexdump,_loc4_ + 8);
                  si32(___printf_arginfo_hexdump,_loc4_);
                  si32(1,___use_xprintf);
               }
            }
            else if(_loc5_ != 81)
            {
               if(_loc5_ != 84)
               {
                  if(_loc5_ != 86)
                  {
                     break;
                  }
                  _loc4_ = _printf_tbl + int(_loc5_ * 12);
                  si32(___printf_render_vis,_loc4_ + 8);
                  si32(___printf_arginfo_vis,_loc4_);
                  si32(1,___use_xprintf);
               }
               else
               {
                  _loc4_ = _printf_tbl + int(_loc5_ * 12);
                  si32(___printf_render_time,_loc4_ + 8);
                  si32(___printf_arginfo_time,_loc4_);
                  si32(1,___use_xprintf);
               }
            }
            else
            {
               _loc4_ = _printf_tbl + int(_loc5_ * 12);
               si32(___printf_render_quote,_loc4_ + 8);
               si32(___printf_arginfo_quote,_loc4_);
               si32(1,___use_xprintf);
            }
            _loc1_ = int(_loc1_ + 1);
            continue;
         }
         break;
      }
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
