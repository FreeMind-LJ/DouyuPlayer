package sample.xx
{
   import sample.xx_indfp_2E_o_3A_98F2A02C_2D_FDD7_2D_4924_2D_9D30_2D_44B96552CC01.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_f_prealloc() : void
   {
      var _loc3_:* = 0;
      var _loc5_:int = 0;
      var _loc4_:* = 0;
      var _loc7_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      ESP = _loc2_;
      F_getdtablesize();
      _loc1_ = int(___sglue);
      _loc7_ = eax;
      while(true)
      {
         var _loc6_:* = li32(_loc1_ + 4);
         _loc7_ = _loc7_ - _loc6_;
         if(_loc7_ >= 1)
         {
            _loc1_ = li32(_loc1_);
            if(_loc1_ == 0)
            {
               if(_loc7_ >= 1)
               {
                  _loc2_ = int(_loc2_ - 16);
                  _loc1_ = int(_loc7_ * 232);
                  _loc6_ = int(_loc1_ + 15);
                  si32(_loc6_,_loc2_);
                  ESP = _loc2_;
                  F_malloc();
                  _loc2_ = int(_loc2_ + 16);
                  _loc5_ = eax;
                  if(_loc5_ != 0)
                  {
                     si32(0,_loc5_);
                     si32(_loc7_,_loc5_ + 4);
                     _loc6_ = int(_loc5_ + 15);
                     _loc4_ = _loc6_ & -4;
                     si32(_loc4_,_loc5_ + 8);
                     if(_loc7_ >= 1)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc1_,_loc2_ + 8);
                        si32(0,_loc2_ + 4);
                        si32(_loc4_,_loc2_);
                        ESP = _loc2_;
                        Fmemset();
                        _loc2_ = int(_loc2_ + 16);
                     }
                     _loc6_ = li32(___isthreaded);
                     if(_loc6_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_thread_lock,_loc2_);
                        ESP = _loc2_;
                        F__spinlock();
                        _loc2_ = int(_loc2_ + 16);
                     }
                     _loc6_ = li32(_lastglue);
                     si32(_loc5_,_loc6_);
                     si32(_loc5_,_lastglue);
                     _loc6_ = li32(___isthreaded);
                     if(_loc6_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_thread_lock,_loc2_);
                        ESP = _loc2_;
                        F__spinunlock();
                        _loc2_ = int(_loc2_ + 16);
                        break;
                     }
                     break;
                  }
                  break;
               }
               break;
            }
            continue;
         }
         break;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
