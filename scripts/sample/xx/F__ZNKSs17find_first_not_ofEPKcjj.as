package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sxi8;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZNKSs17find_first_not_ofEPKcjj() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 12);
      _loc8_ = li32(_loc3_ + 8);
      _loc7_ = li32(_loc3_ + 4);
      _loc6_ = li32(_loc3_);
      while(true)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc6_,_loc2_);
         ESP = _loc2_;
         F__ZNKSs4sizeEv();
         _loc4_ = -1;
         _loc2_ = int(_loc2_ + 16);
         var _loc5_:int = eax;
         if(uint(_loc5_) > uint(_loc8_))
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc6_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs7_M_dataEv();
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = eax;
            _loc5_ = _loc5_ + _loc8_;
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_ + 8);
            si32(si8(li8(_loc5_)),_loc2_ + 4);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F_memchr();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = _loc8_;
            if(int(eax) != 0)
            {
               _loc8_ = int(_loc8_ + 1);
               continue;
            }
            break;
         }
         break;
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
