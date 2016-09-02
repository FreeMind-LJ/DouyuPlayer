package sample.xx_ig5_2E_o_3A_C5321009_2D_5A46_2D_4DFC_2D_8180_2D_6D517E9FA7D3
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import sample.xx.eax;
   
   public function F__BIG5_mbsinit() : void
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
