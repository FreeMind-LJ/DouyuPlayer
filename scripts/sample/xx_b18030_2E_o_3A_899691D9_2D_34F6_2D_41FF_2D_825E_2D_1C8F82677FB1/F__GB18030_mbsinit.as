package sample.xx_b18030_2E_o_3A_899691D9_2D_34F6_2D_41FF_2D_825E_2D_1C8F82677FB1
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import sample.xx.eax;
   
   public function F__GB18030_mbsinit() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 1;
      _loc5_ = li32(_loc3_);
      if(_loc5_ != 0)
      {
         _loc1_ = 1;
         if(li32(_loc5_) != 0)
         {
            _loc1_ = 0;
         }
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
