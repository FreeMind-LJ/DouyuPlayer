package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_hrStubs_2E_o_3A_4F893C77_2D_5C33_2D_4E01_2D_9567_2D_4F52CEEB5331._sEntryCount;
   import sample.xx_hrStubs_2E_o_3A_4F893C77_2D_5C33_2D_4E01_2D_9567_2D_4F52CEEB5331._sEntries;
   import avm2.intrinsics.memory.si32;
   
   public function F_pthread_setspecific() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = -1;
      _loc7_ = li32(_loc3_);
      if(_loc7_ >= 0)
      {
         var _loc6_:* = li32(_sEntryCount);
         if(_loc6_ > _loc7_)
         {
            var _loc4_:* = li32(_sEntries);
            si32(li32(_loc3_ + 4),int(_loc4_ + (_loc7_ << 3)));
            _loc1_ = 0;
         }
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
