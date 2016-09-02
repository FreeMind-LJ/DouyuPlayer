package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZNSs4_Rep10_M_disposeERKSaIcE() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      ESP = _loc2_;
      F__ZNSs4_Rep12_S_empty_repEv();
      _loc1_ = li32(_loc3_);
      var _loc4_:int = eax;
      if(_loc4_ != _loc1_)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(-1,_loc2_ + 4);
         _loc4_ = _loc1_ + 8;
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         F__ZN9__gnu_cxx18__exchange_and_addEPVii();
         _loc2_ = int(_loc2_ + 16);
         _loc4_ = eax;
         if(_loc4_ <= 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(li32(_loc3_ + 4),_loc2_ + 4);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F__ZNSs4_Rep10_M_destroyERKSaIcE();
            _loc2_ = int(_loc2_ + 16);
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
