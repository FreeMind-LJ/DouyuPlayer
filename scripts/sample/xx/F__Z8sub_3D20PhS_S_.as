package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccvjjli2_2E_o_3A_1045e9bd_2D_05f2_2D_4768_2D_82e1_2D_fa723c4aab1a.*;
   
   public function F__Z8sub_3D20PhS_S_() : void
   {
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:int = 0;
      var _loc6_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc3_ = li32(_loc1_);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      F_strlen();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = eax;
      var _loc5_:int = _loc4_ + 15;
      if(uint(_loc5_) >= 16)
      {
         _loc6_ = li32(_loc1_ + 8);
         _loc7_ = li32(_loc1_ + 4);
         _loc5_ = _loc4_ + 15;
         _loc4_ = _loc5_ >>> 4;
         do
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc7_,_loc2_ + 4);
            si32(_loc3_,_loc2_);
            si32(_loc6_,_loc2_ + 8);
            ESP = _loc2_;
            F__Z8sub_3D94PhS_S_();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = _loc4_ + -1;
            _loc6_ = int(_loc6_ + 16);
            _loc3_ = int(_loc3_ + 16);
         }
         while(_loc4_ != 0);
         
      }
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
