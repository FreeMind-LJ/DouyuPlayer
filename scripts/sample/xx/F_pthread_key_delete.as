package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_hrStubs_2E_o_3A_4F893C77_2D_5C33_2D_4E01_2D_9567_2D_4F52CEEB5331._sEntryCount;
   import sample.xx_hrStubs_2E_o_3A_4F893C77_2D_5C33_2D_4E01_2D_9567_2D_4F52CEEB5331._sEntries;
   import avm2.intrinsics.memory.si32;
   import sample.xx_hrStubs_2E_o_3A_4F893C77_2D_5C33_2D_4E01_2D_9567_2D_4F52CEEB5331._sFirstFree;
   
   public function F_pthread_key_delete() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = -1;
      _loc9_ = li32(_loc3_);
      if(_loc9_ >= 0)
      {
         var _loc8_:* = li32(_sEntryCount);
         if(_loc8_ > _loc9_)
         {
            _loc7_ = _loc9_ << 3;
            _loc6_ = li32(_sEntries) + _loc7_;
            _loc1_ = li32(_loc6_ + 4);
            if(_loc1_ != 0)
            {
               _loc5_ = li32(_loc6_);
               if(_loc5_ != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc5_,_loc2_);
                  ESP = _loc2_;
                  ptr2fun[_loc1_]();
                  _loc2_ = int(_loc2_ + 16);
               }
            }
            _loc1_ = 0;
            si32(_loc1_,_loc6_);
            _loc8_ = li32(_sEntries);
            _loc8_ = int(_loc8_ + _loc7_);
            var _loc4_:* = li32(_sFirstFree);
            si32(_loc4_,_loc8_ + 4);
            si32(_loc9_,_sFirstFree);
         }
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
