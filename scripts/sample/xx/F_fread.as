package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_read_2E_o_3A_1519D3D2_2D_9697_2D_4470_2D_852A_2D_3A489F93D46E.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_fread() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:int = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 12);
      var _loc11_:* = li32(___isthreaded);
      if(_loc11_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F__flockfile();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc10_ = li32(_loc3_ + 8);
      _loc9_ = li32(_loc3_ + 4);
      _loc8_ = _loc10_ * _loc9_;
      _loc7_ = 0;
      if(_loc8_ != 0)
      {
         _loc11_ = li32(_loc1_ + 100);
         if(_loc11_ == 0)
         {
            si32(-1,_loc1_ + 100);
         }
         _loc6_ = li32(_loc1_ + 4);
         if(_loc6_ <= -1)
         {
            _loc6_ = 0;
            si32(_loc6_,_loc1_ + 4);
         }
         _loc5_ = li32(_loc3_);
         _loc4_ = _loc8_;
         while(true)
         {
            _loc7_ = li32(_loc1_);
            if(uint(_loc6_) >= uint(_loc4_))
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc7_,_loc2_ + 4);
               si32(_loc5_,_loc2_);
               si32(_loc4_,_loc2_ + 8);
               ESP = _loc2_;
               Fmemcpy();
               _loc2_ = int(_loc2_ + 16);
               _loc11_ = li32(_loc1_ + 4);
               _loc11_ = int(_loc11_ - _loc4_);
               si32(_loc11_,_loc1_ + 4);
               _loc11_ = li32(_loc1_);
               _loc11_ = int(_loc11_ + _loc4_);
               si32(_loc11_,_loc1_);
               _loc7_ = _loc10_;
               break;
            }
            _loc2_ = int(_loc2_ - 16);
            si32(_loc7_,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            si32(_loc6_,_loc2_ + 8);
            ESP = _loc2_;
            Fmemcpy();
            _loc2_ = int(_loc2_ + 16);
            _loc11_ = li32(_loc1_);
            _loc11_ = int(_loc11_ + _loc6_);
            si32(_loc11_,_loc1_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            _loc4_ = int(_loc4_ - _loc6_);
            ESP = _loc2_;
            F___srefill();
            _loc2_ = int(_loc2_ + 16);
            _loc11_ = int(eax);
            if(_loc11_ == 0)
            {
               _loc5_ = int(_loc5_ + _loc6_);
               _loc6_ = li32(_loc1_ + 4);
               continue;
            }
            _loc11_ = int(_loc8_ - _loc4_);
            _loc7_ = int(uint(_loc11_) / uint(_loc9_));
            break;
         }
      }
      _loc11_ = li32(___isthreaded);
      if(_loc11_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F__funlockfile();
         _loc2_ = int(_loc2_ + 16);
      }
      eax = _loc7_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
