package sample.xx
{
   import sample.xx_h_catch_2E_o_3A_10AD40DF_2D_77B4_2D_4E8F_2D_8C4E_2D_E570C00524BE.*;
   import avm2.intrinsics.memory.li32;
   
   public function F__ZSt18uncaught_exceptionv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      ESP = _loc2_;
      F___cxa_get_globals();
      _loc1_ = int(eax);
      _loc1_ = li32(_loc1_ + 4);
      _loc4_ = 1;
      if(_loc1_ == 0)
      {
         _loc4_ = 0;
      }
      _loc1_ = _loc4_ & 1;
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
