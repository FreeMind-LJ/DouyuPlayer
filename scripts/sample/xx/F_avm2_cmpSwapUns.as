package sample.xx
{
   import sample.xx_hrStubs_2E_o_3A_4F893C77_2D_5C33_2D_4E01_2D_9567_2D_4F52CEEB5331.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.casi32;
   import avm2.intrinsics.memory.si32;
   
   public function F_avm2_cmpSwapUns() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      ESP = _loc2_;
      F_avm2_haveWorkers();
      _loc1_ = li32(_loc3_ + 8);
      _loc7_ = li32(_loc3_ + 4);
      _loc6_ = li32(_loc3_);
      var _loc5_:int = eax;
      if(_loc5_ != 0)
      {
         _loc4_ = int(casi32(_loc6_,_loc7_,_loc1_));
      }
      else
      {
         _loc4_ = li32(_loc6_);
         if(_loc4_ == _loc7_)
         {
            si32(_loc1_,_loc6_);
         }
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
