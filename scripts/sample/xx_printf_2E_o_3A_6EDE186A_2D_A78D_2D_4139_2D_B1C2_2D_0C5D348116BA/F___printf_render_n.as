package sample.xx_printf_2E_o_3A_6EDE186A_2D_A78D_2D_4139_2D_B1C2_2D_0C5D348116BA
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import sample.xx.eax;
   
   public function F___printf_render_n() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc7_ = li32(_loc1_ + 16);
      _loc6_ = li32(_loc3_ + 8);
      if(_loc7_ != 0)
      {
         var _loc5_:* = li32(_loc6_);
         si8(li32(_loc1_ + 76),li32(_loc5_));
      }
      else
      {
         _loc7_ = li32(_loc1_ + 20);
         if(_loc7_ != 0)
         {
            _loc5_ = li32(_loc6_);
            si16(li32(_loc1_ + 76),li32(_loc5_));
         }
         else
         {
            _loc7_ = li32(_loc1_ + 24);
            if(_loc7_ != 0)
            {
               _loc5_ = li32(_loc6_);
               si32(li32(_loc1_ + 76),li32(_loc5_));
            }
            else
            {
               _loc7_ = li32(_loc1_ + 12);
               if(_loc7_ != 0)
               {
                  _loc7_ = li32(_loc6_);
                  var _loc4_:* = li32(_loc7_);
                  _loc5_ = li32(_loc1_ + 76);
                  _loc7_ = _loc5_ >> 31;
                  si32(_loc7_,_loc4_ + 4);
                  si32(_loc5_,_loc4_);
               }
               else
               {
                  _loc7_ = li32(_loc1_ + 64);
                  if(_loc7_ != 0)
                  {
                     _loc7_ = li32(_loc6_);
                     _loc4_ = li32(_loc7_);
                     _loc5_ = li32(_loc1_ + 76);
                     _loc7_ = _loc5_ >> 31;
                     si32(_loc7_,_loc4_ + 4);
                     si32(_loc5_,_loc4_);
                  }
                  else
                  {
                     _loc7_ = li32(_loc1_ + 68);
                     if(_loc7_ != 0)
                     {
                        _loc5_ = li32(_loc6_);
                        si32(li32(_loc1_ + 76),li32(_loc5_));
                     }
                     else
                     {
                        _loc6_ = li32(_loc6_);
                        _loc7_ = li32(_loc1_ + 60);
                        if(_loc7_ != 0)
                        {
                           _loc5_ = li32(_loc6_);
                           _loc4_ = li32(_loc1_ + 76);
                           _loc7_ = _loc4_ >> 31;
                           si32(_loc7_,_loc5_ + 4);
                           si32(_loc4_,_loc5_);
                        }
                        else
                        {
                           si32(li32(_loc1_ + 76),li32(_loc6_));
                        }
                     }
                  }
               }
            }
         }
      }
      eax = 0;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
