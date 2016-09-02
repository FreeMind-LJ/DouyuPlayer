package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_uts_2E_o_3A_C87CDCD5_2D_62F8_2D_4A92_2D_94CB_2D_A8AFF7F176FA.*;
   
   public function F_puts() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:int = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_strlen();
      _loc2_ = int(_loc2_ + 16);
      _loc7_ = int(eax);
      si32(_loc1_,_loc3_ - 32);
      _loc1_ = int(_loc3_ - 32);
      _loc6_ = _loc1_ | 4;
      si32(_loc7_,_loc6_);
      si32(L__2E_str,_loc3_ - 24);
      si32(1,_loc3_ - 20);
      _loc7_ = int(_loc7_ + 1);
      si32(_loc7_,_loc3_ - 8);
      si32(_loc1_,_loc3_ - 16);
      _loc5_ = _loc3_ - 16;
      _loc7_ = _loc5_ | 4;
      si32(2,_loc7_);
      _loc7_ = li32(___isthreaded);
      if(_loc7_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(li32(___stdoutp),_loc2_);
         ESP = _loc2_;
         F__flockfile();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc4_ = li32(___stdoutp);
      _loc7_ = li32(_loc4_ + 100);
      if(_loc7_ == 0)
      {
         si32(-1,_loc4_ + 100);
         _loc4_ = li32(___stdoutp);
      }
      _loc2_ = int(_loc2_ - 16);
      si32(_loc5_,_loc2_ + 4);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F___sfvwrite();
      _loc4_ = 10;
      _loc2_ = int(_loc2_ + 16);
      _loc7_ = int(eax);
      if(_loc7_ != 0)
      {
         _loc4_ = -1;
      }
      _loc7_ = li32(___isthreaded);
      if(_loc7_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(li32(___stdoutp),_loc2_);
         ESP = _loc2_;
         F__funlockfile();
         _loc2_ = int(_loc2_ + 16);
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
