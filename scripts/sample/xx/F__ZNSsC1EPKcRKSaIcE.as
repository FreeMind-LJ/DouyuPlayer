package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZNSsC1EPKcRKSaIcE() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:int = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      _loc8_ = li32(_loc3_ + 4);
      _loc7_ = li32(_loc3_);
      if(_loc8_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F_strlen();
         _loc2_ = int(_loc2_ + 16);
         _loc5_ = _loc8_ + int(eax);
      }
      else
      {
         _loc5_ = _loc8_ + -1;
      }
      _loc2_ = int(_loc2_ - 16);
      si32(_loc4_,_loc2_ + 12);
      si32(_loc1_,_loc2_ + 8);
      si32(_loc5_,_loc2_ + 4);
      si32(_loc8_,_loc2_);
      ESP = _loc2_;
      F__ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag();
      _loc2_ = int(_loc2_ + 16);
      var _loc6_:int = eax;
      _loc2_ = int(_loc2_ - 16);
      si32(_loc1_,_loc2_ + 8);
      si32(_loc6_,_loc2_ + 4);
      si32(_loc7_,_loc2_);
      ESP = _loc2_;
      F__ZNSs12_Alloc_hiderC1EPcRKSaIcE();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
