package sample.xx
{
   import sample.xx_hrStubs_2E_o_3A_4F893C77_2D_5C33_2D_4E01_2D_9567_2D_4F52CEEB5331.*;
   import avm2.intrinsics.memory.mfence;
   
   public function F_avm2_mfence() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      ESP = _loc2_;
      F_avm2_haveWorkers();
      _loc1_ = eax;
      if(_loc1_ != 0)
      {
         mfence();
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
