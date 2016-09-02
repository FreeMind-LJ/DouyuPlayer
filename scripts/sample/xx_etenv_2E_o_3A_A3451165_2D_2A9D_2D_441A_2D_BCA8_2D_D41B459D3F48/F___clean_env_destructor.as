package sample.xx_etenv_2E_o_3A_A3451165_2D_2A9D_2D_441A_2D_BCA8_2D_D41B459D3F48
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.si32;
   
   public function F___clean_env_destructor() : void
   {
      var _loc2_:* = 0;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      _loc1_ = int(_loc1_ - 16);
      si32(1,_loc1_);
      ESP = _loc1_;
      F___clean_env();
      _loc1_ = int(_loc1_ + 16);
      _loc1_ = _loc2_;
      ESP = _loc1_;
   }
}
