package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZNKSs5rfindEPKcjj() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:int = 0;
      var _loc5_:int = 0;
      var _loc6_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc14_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc3_ = li32(_loc4_);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      F__ZNKSs4sizeEv();
      _loc14_ = -1;
      _loc13_ = li32(_loc4_ + 12);
      _loc2_ = int(_loc2_ + 16);
      _loc12_ = eax;
      if(uint(_loc12_) >= uint(_loc13_))
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc3_,_loc2_);
         var _loc10_:int = _loc13_ + -1;
         _loc9_ = int(_loc10_ - _loc12_);
         _loc8_ = li32(_loc4_ + 8) ^ -1;
         if(uint(_loc9_) <= uint(_loc8_))
         {
            _loc9_ = _loc8_;
         }
         _loc7_ = li32(_loc4_ + 4);
         _loc1_ = _loc9_ ^ -1;
         ESP = _loc2_;
         F__ZNKSs7_M_dataEv();
         _loc2_ = int(_loc2_ + 16);
         _loc5_ = eax;
         while(true)
         {
            _loc6_ = _loc1_;
            _loc2_ = int(_loc2_ - 16);
            si32(_loc13_,_loc2_ + 8);
            si32(_loc7_,_loc2_ + 4);
            _loc10_ = _loc5_ + _loc6_;
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F_memcmp();
            _loc2_ = int(_loc2_ + 16);
            _loc10_ = eax;
            _loc14_ = _loc6_;
            if(_loc10_ != 0)
            {
               _loc1_ = int(_loc6_ + -1);
               _loc14_ = -1;
               if(_loc6_ == 0)
               {
                  break;
               }
               continue;
            }
            break;
         }
      }
      eax = _loc14_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
