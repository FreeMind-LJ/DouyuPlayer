package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccf8iwcn_2E_o_3A_97b2014d_2D_8ddb_2D_4d42_2D_b61d_2D_986fcc55eb9e.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN12CDataProcess9GetAllKeyEPiS0_() : void
   {
      var _loc14_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = 0;
      var _loc3_:int = 0;
      var _loc8_:int = 0;
      var _loc4_:int = 0;
      var _loc6_:* = 0;
      var _loc13_:* = 0;
      var _loc9_:int = 0;
      var _loc1_:* = int(ESP);
      _loc14_ = _loc1_;
      _loc1_ = int(_loc1_ - 16);
      _loc2_ = li32(_loc14_ + 8);
      si32(0,_loc2_);
      _loc1_ = int(_loc1_ - 16);
      si32(197,_loc1_);
      ESP = _loc1_;
      F_malloc();
      _loc1_ = int(_loc1_ + 16);
      _loc3_ = eax;
      _loc1_ = int(_loc1_ - 16);
      si32(197,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      si32(_loc3_,_loc1_);
      ESP = _loc1_;
      Fmemset();
      _loc1_ = int(_loc1_ + 16);
      _loc5_ = li32(_loc14_ + 4);
      _loc7_ = li32(_loc14_);
      _loc8_ = 0;
      _loc9_ = 0;
      do
      {
         si32(0,_loc14_ - 4);
         si32(0,_loc14_ - 8);
         var _loc10_:* = _loc8_ << 2;
         var _loc11_:* = li32(_loc7_ + 4);
         _loc10_ = int(_loc11_ + _loc10_);
         _loc10_ = li32(_loc10_);
         _loc11_ = li32(_loc10_);
         var _loc12_:* = li32(_loc11_ + 16);
         _loc1_ = int(_loc1_ - 16);
         _loc11_ = int(_loc14_ - 8);
         si32(_loc11_,_loc1_ + 8);
         _loc11_ = int(_loc14_ - 4);
         si32(_loc11_,_loc1_ + 4);
         si32(_loc10_,_loc1_);
         ESP = _loc1_;
         ptr2fun[_loc12_]();
         _loc1_ = int(_loc1_ + 16);
         _loc13_ = li32(_loc14_ - 8);
         if(_loc13_ != 0)
         {
            _loc6_ = li32(_loc14_ - 4);
            if(_loc6_ != 0)
            {
               if(_loc13_ >= 1)
               {
                  _loc4_ = _loc3_ + _loc9_;
                  do
                  {
                     _loc10_ = li8(_loc6_);
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc10_,_loc1_ + 8);
                     si32(L__2E_str,_loc1_ + 4);
                     si32(_loc4_,_loc1_);
                     ESP = _loc1_;
                     F_sprintf();
                     _loc1_ = int(_loc1_ + 16);
                     _loc6_ = int(_loc6_ + 1);
                     _loc13_ = int(_loc13_ + -1);
                     _loc4_ = _loc4_ + 2;
                  }
                  while(_loc13_ != 0);
                  
                  _loc13_ = li32(_loc14_ - 8);
               }
               _loc10_ = _loc13_ << 1;
               _loc9_ = _loc10_ + _loc9_;
            }
         }
         _loc10_ = int(_loc3_ + _loc9_);
         si8(42,_loc10_);
         _loc8_ = _loc8_ + 1;
         _loc9_ = _loc9_ + 1;
      }
      while(_loc8_ != 4);
      
      si32(_loc3_,_loc5_);
      _loc1_ = int(_loc1_ - 16);
      si32(_loc3_,_loc1_);
      ESP = _loc1_;
      F_strlen();
      _loc1_ = int(_loc1_ + 16);
      _loc10_ = int(eax);
      si32(_loc10_,_loc2_);
      _loc1_ = _loc14_;
      ESP = _loc1_;
   }
}
