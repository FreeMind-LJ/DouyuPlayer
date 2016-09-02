package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccKnm9WT_2E_o_3A_6f558b12_2D_225e_2D_40cb_2D_b872_2D_cf937dd6e456.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZNK9CListData7GetDataEPPhPi() : void
   {
      var _loc13_:* = 0;
      var _loc2_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc3_:int = 0;
      var _loc6_:int = 0;
      var _loc4_:* = 0;
      var _loc10_:* = 0;
      var _loc12_:int = 0;
      var _loc11_:int = 0;
      var _loc1_:* = int(ESP);
      _loc13_ = _loc1_;
      _loc2_ = li32(_loc13_);
      _loc3_ = _loc2_ + 4;
      _loc4_ = li32(_loc2_ + 4);
      _loc6_ = 0;
      _loc7_ = li32(_loc13_ + 8);
      _loc8_ = li32(_loc13_ + 4);
      if(_loc4_ == _loc3_)
      {
         si32(0,_loc7_);
      }
      else
      {
         do
         {
            _loc4_ = li32(_loc4_);
            _loc6_ = _loc6_ + 1;
         }
         while(_loc4_ != _loc3_);
         
         si32(_loc6_,_loc7_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc6_,_loc1_);
         ESP = _loc1_;
         F__Znaj();
         _loc1_ = int(_loc1_ + 16);
         var _loc9_:* = int(eax);
         si32(_loc9_,_loc8_);
         _loc10_ = li32(_loc2_ + 4);
         _loc11_ = 305833592;
         _loc12_ = 0;
         if(_loc10_ != _loc3_)
         {
            do
            {
               _loc1_ = int(_loc1_ - 16);
               si32(_loc11_,_loc1_);
               ESP = _loc1_;
               F__ZN11CCommonFunc6RSHashEj();
               _loc1_ = int(_loc1_ + 16);
               _loc11_ = eax;
               _loc9_ = li8(_loc10_ + 8);
               _loc9_ = _loc9_ ^ _loc11_;
               var _loc5_:* = li32(_loc8_);
               _loc5_ = int(_loc5_ + _loc12_);
               si8(_loc9_,_loc5_);
               _loc12_ = _loc12_ + 1;
               _loc10_ = li32(_loc10_);
            }
            while(_loc10_ != _loc3_);
            
         }
      }
      _loc1_ = _loc13_;
      ESP = _loc1_;
   }
}
