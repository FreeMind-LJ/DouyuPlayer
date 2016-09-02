package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_hrStubs_2E_o_3A_4F893C77_2D_5C33_2D_4E01_2D_9567_2D_4F52CEEB5331.*;
   
   public function F_pthread_key_create() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_sFirstFree);
      _loc8_ = li32(_loc3_ + 4);
      _loc7_ = li32(_loc3_);
      if(_loc1_ <= -1)
      {
         _loc1_ = li32(_sEntryCount);
         var _loc5_:* = li32(_sEntries);
         si32(int(_loc1_ + 1),_sEntryCount);
         _loc2_ = int(_loc2_ - 16);
         var _loc6_:* = int(_loc1_ + 1) << 3;
         si32(_loc6_,_loc2_ + 4);
         si32(_loc5_,_loc2_);
         ESP = _loc2_;
         F_realloc();
         _loc2_ = int(_loc2_ + 16);
         _loc4_ = int(eax);
         si32(_loc4_,_sEntries);
      }
      else
      {
         _loc4_ = li32(_sEntries);
         _loc5_ = int(_loc4_ + (_loc1_ << 3));
         _loc5_ = li32(_loc5_ + 4);
         si32(_loc5_,_sFirstFree);
      }
      _loc5_ = _loc1_ << 3;
      _loc5_ = int(_loc4_ + _loc5_);
      si32(0,_loc5_);
      si32(_loc8_,_loc5_ + 4);
      si32(_loc1_,_loc7_);
      eax = 0;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
