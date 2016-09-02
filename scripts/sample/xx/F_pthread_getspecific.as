package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_hrStubs_2E_o_3A_4F893C77_2D_5C33_2D_4E01_2D_9567_2D_4F52CEEB5331._sEntryCount;
   import sample.xx_hrStubs_2E_o_3A_4F893C77_2D_5C33_2D_4E01_2D_9567_2D_4F52CEEB5331._sEntries;
   
   public function F_pthread_getspecific() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      _loc6_ = li32(_loc3_);
      if(_loc6_ >= 0)
      {
         var _loc5_:* = li32(_sEntryCount);
         if(_loc5_ > _loc6_)
         {
            var _loc4_:* = li32(_sEntries);
            _loc5_ = int(_loc4_ + (_loc6_ << 3));
            _loc1_ = li32(_loc5_);
         }
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
