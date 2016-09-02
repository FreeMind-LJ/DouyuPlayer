package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx_and_2E_o_3A_CFA8DB8D_2D_A811_2D_4846_2D_8FF9_2D_9ED717802C2E.*;
   
   public function F_sranddev() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc2_ = int(_loc2_ - 16);
      si32(0,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      si32(L__2E_str,_loc2_);
      ESP = _loc2_;
      F__open();
      _loc2_ = int(_loc2_ + 16);
      _loc1_ = eax;
      if(_loc1_ >= 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(4,_loc2_ + 8);
         si32(_next,_loc2_ + 4);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F__read();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F__close();
         _loc2_ = int(_loc2_ + 16);
         if(int(eax) != 4)
         {
         }
         addr142:
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc2_ = int(_loc2_ - 16);
      si32(0,_loc2_ + 4);
      var _loc4_:int = _loc3_ - 8;
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F_gettimeofday();
      _loc2_ = int(_loc2_ + 16);
      ESP = _loc2_;
      F_getpid();
      §§goto(addr142);
   }
}
