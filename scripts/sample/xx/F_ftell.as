package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_tell_2E_o_3A_D1C059F9_2D_AD21_2D_4FC7_2D_BE52_2D_9407C8C30F65.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_ftell() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:int = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      var _loc7_:* = li32(___isthreaded);
      if(_loc7_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F__flockfile();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc2_ = int(_loc2_ - 16);
      _loc6_ = _loc3_ - 8;
      si32(_loc6_,_loc2_ + 4);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ftello();
      _loc2_ = int(_loc2_ + 16);
      _loc5_ = int(eax);
      _loc7_ = li32(___isthreaded);
      if(_loc7_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F__funlockfile();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc1_ = -1;
      if(_loc5_ == 0)
      {
         _loc7_ = _loc6_ | 4;
         _loc5_ = li32(_loc7_);
         if(_loc5_ <= -1)
         {
            ESP = _loc2_;
            F___error();
            si32(29,int(eax));
            _loc1_ = -1;
         }
         else
         {
            _loc1_ = li32(_loc3_ - 8);
            _loc6_ = 1;
            _loc4_ = _loc6_;
            if(_loc1_ <= -1)
            {
               _loc4_ = 0;
            }
            if(_loc5_ >= 0)
            {
               _loc6_ = 0;
            }
            if(_loc5_ != 0)
            {
               _loc4_ = _loc6_;
            }
            if(_loc4_ == 0)
            {
               ESP = _loc2_;
               F___error();
               si32(84,int(eax));
               _loc1_ = -1;
            }
         }
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
