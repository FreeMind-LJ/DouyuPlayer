package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_dtoa_gmisc_2E_o_3A_C01A1421_2D_4B03_2D_4E27_2D_989A_2D_B4A6934E85D5.*;
   
   public function F___trailz_D2A() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:int = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      _loc8_ = li32(_loc1_ + 16);
      _loc7_ = 0;
      _loc6_ = _loc7_;
      while(_loc6_ < _loc8_)
      {
         var _loc5_:int = _loc1_ + (_loc6_ << 2);
         _loc4_ = li32(_loc5_ + 20);
         if(_loc4_ != 0)
         {
            si32(_loc4_,_loc3_ - 4);
            _loc2_ = int(_loc2_ - 16);
            _loc5_ = _loc3_ - 4;
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F___lo0bits_D2A();
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = eax;
            _loc7_ = _loc5_ + _loc7_;
            break;
         }
         _loc7_ = _loc7_ + 32;
         _loc6_ = int(_loc6_ + 1);
      }
      eax = _loc7_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
