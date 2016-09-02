package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_write_2E_o_3A_64A4F173_2D_34BD_2D_41D4_2D_904B_2D_1111D48AA7B2.*;
   
   public function F_fwrite() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc8_:int = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      _loc1_ = li32(_loc3_ + 4);
      _loc9_ = li32(_loc3_ + 8);
      _loc8_ = _loc9_ * _loc1_;
      _loc7_ = 0;
      if(_loc8_ != 0)
      {
         _loc6_ = li32(_loc3_ + 12);
         var _loc5_:* = li32(_loc3_);
         si32(_loc5_,_loc3_ - 24);
         _loc5_ = int(_loc3_ - 24);
         si32(_loc8_,_loc5_ | 4);
         si32(_loc8_,_loc3_ - 8);
         si32(_loc5_,_loc3_ - 16);
         _loc7_ = int(_loc3_ - 16);
         si32(1,_loc7_ | 4);
         _loc5_ = li32(___isthreaded);
         if(_loc5_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc6_,_loc2_);
            ESP = _loc2_;
            F__flockfile();
            _loc2_ = int(_loc2_ + 16);
         }
         _loc5_ = li32(_loc6_ + 100);
         if(_loc5_ == 0)
         {
            si32(-1,_loc6_ + 100);
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_loc7_,_loc2_ + 4);
         si32(_loc6_,_loc2_);
         ESP = _loc2_;
         F___sfvwrite();
         _loc2_ = int(_loc2_ + 16);
         _loc5_ = int(eax);
         if(_loc5_ != 0)
         {
            _loc5_ = int(_loc8_ - li32(_loc3_ - 8));
            _loc9_ = int(uint(_loc5_) / uint(_loc1_));
         }
         _loc5_ = li32(___isthreaded);
         _loc7_ = _loc9_;
         if(_loc5_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc6_,_loc2_);
            ESP = _loc2_;
            F__funlockfile();
            _loc2_ = int(_loc2_ + 16);
            _loc7_ = _loc9_;
         }
      }
      eax = _loc7_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
