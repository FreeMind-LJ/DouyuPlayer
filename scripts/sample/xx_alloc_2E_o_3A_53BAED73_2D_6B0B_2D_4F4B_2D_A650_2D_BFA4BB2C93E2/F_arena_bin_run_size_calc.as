package sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.eax;
   
   public function F_arena_bin_run_size_calc() : void
   {
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc21_:* = 0;
      var _loc18_:* = 0;
      var _loc16_:int = 0;
      var _loc12_:* = 0;
      var _loc13_:int = 0;
      var _loc10_:int = 0;
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc19_:* = 0;
      var _loc11_:int = 0;
      var _loc20_:* = 0;
      var _loc1_:int = 0;
      var _loc14_:int = 0;
      var _loc17_:int = 0;
      var _loc2_:int = 0;
      var _loc4_:* = int(ESP);
      _loc9_ = _loc4_;
      _loc5_ = li32(_loc9_);
      _loc21_ = li32(_loc5_ + 20);
      _loc20_ = li32(_loc9_ + 4);
      _loc19_ = int(_loc20_ + -16);
      _loc18_ = int(uint(_loc19_) / uint(_loc21_));
      _loc19_ = _loc18_ ^ -1;
      _loc19_ = int(_loc21_ * _loc19_);
      _loc17_ = _loc20_ + _loc19_;
      do
      {
         _loc19_ = _loc18_ & 31;
         _loc16_ = 1;
         if(_loc19_ == 0)
         {
            _loc16_ = 0;
         }
         _loc19_ = _loc16_ & 1;
         var _loc15_:* = int(_loc18_ >>> 5);
         _loc14_ = _loc19_ + _loc15_;
         _loc19_ = _loc14_ << 2;
         _loc19_ = int(_loc19_ + 12);
         _loc17_ = _loc17_ + _loc21_;
         _loc18_ = int(_loc18_ + -1);
      }
      while(uint(_loc19_) > uint(_loc17_));
      
      _loc1_ = _loc18_ + 1;
      _loc10_ = 16 - _loc21_;
      _loc11_ = _loc20_ * 61;
      _loc16_ = _loc21_ * 488;
      _loc12_ = _loc21_ << 12;
      _loc13_ = 65536 - _loc12_;
      _loc18_ = li32(_arena_maxclass);
      while(true)
      {
         _loc3_ = _loc20_;
         _loc6_ = _loc1_;
         _loc7_ = _loc14_;
         _loc8_ = _loc17_;
         _loc19_ = int(_loc3_ + 4080);
         _loc1_ = uint(_loc19_) / uint(_loc21_);
         _loc19_ = int(uint(_loc19_) % uint(_loc21_));
         _loc17_ = _loc10_ + _loc19_;
         _loc19_ = _loc19_ << 12;
         _loc2_ = _loc13_ + _loc19_;
         _loc20_ = int(_loc3_ + 4096);
         do
         {
            _loc19_ = _loc1_ & 31;
            _loc14_ = 1;
            if(_loc19_ == 0)
            {
               _loc14_ = 0;
            }
            _loc15_ = _loc14_ & 1;
            _loc19_ = int(_loc1_ >>> 5);
            _loc14_ = _loc15_ + _loc19_;
            _loc19_ = _loc14_ << 2;
            _loc19_ = int(_loc19_ + 12);
            _loc17_ = _loc17_ + _loc21_;
            _loc2_ = _loc2_ + _loc12_;
            _loc1_ = _loc1_ + -1;
         }
         while(uint(_loc19_) > uint(_loc17_));
         
         if(uint(_loc20_) <= uint(_loc18_))
         {
            if(uint(_loc20_) <= 49152)
            {
               if(uint(_loc16_) >= 6145)
               {
                  _loc1_ = _loc1_ + 1;
                  _loc11_ = _loc11_ + 249856;
                  if(uint(_loc2_) <= uint(_loc11_))
                  {
                     break;
                  }
                  continue;
               }
               break;
            }
            break;
         }
         break;
      }
      si32(_loc3_,_loc5_ + 24);
      si32(_loc6_,_loc5_ + 28);
      si32(_loc7_,_loc5_ + 32);
      si32(_loc8_,_loc5_ + 36);
      eax = _loc3_;
      _loc4_ = _loc9_;
      ESP = _loc4_;
   }
}
