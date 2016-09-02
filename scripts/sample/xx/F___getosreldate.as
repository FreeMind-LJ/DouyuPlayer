package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__getosreldate_2E_o_3A_C77DE964_2D_754E_2D_4B4A_2D_9BE7_2D_A831D1CD3AFB.*;
   
   public function F___getosreldate() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_osreldate_2E_1512);
      if(_loc1_ == 0)
      {
         si32(1,_loc3_ - 12);
         si32(24,_loc3_ - 8);
         si32(0,_loc3_ - 16);
         si32(4,_loc3_ - 4);
         _loc2_ = int(_loc2_ - 32);
         si32(0,_loc2_ + 20);
         si32(0,_loc2_ + 16);
         var _loc4_:* = int(_loc3_ - 4);
         si32(_loc4_,_loc2_ + 12);
         _loc4_ = int(_loc3_ - 16);
         si32(_loc4_,_loc2_ + 8);
         si32(2,_loc2_ + 4);
         _loc4_ = int(_loc3_ - 12);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         F_sysctl();
         _loc2_ = int(_loc2_ + 32);
         _loc4_ = int(eax);
         if(_loc4_ == 0)
         {
            _loc1_ = li32(_loc3_ - 16);
            if(_loc1_ >= 1)
            {
               _loc4_ = li32(_loc3_ - 4);
               if(_loc4_ == 4)
               {
                  si32(_loc1_,_osreldate_2E_1512);
               }
            }
         }
         _loc1_ = li32(_osreldate_2E_1512);
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
