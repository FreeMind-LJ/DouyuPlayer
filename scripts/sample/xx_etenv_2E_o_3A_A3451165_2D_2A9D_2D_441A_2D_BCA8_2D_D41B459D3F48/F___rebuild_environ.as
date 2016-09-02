package sample.xx_etenv_2E_o_3A_A3451165_2D_2A9D_2D_441A_2D_BCA8_2D_D41B459D3F48
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.li8;
   
   public function F___rebuild_environ() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:int = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc7_:* = li32(_environSize);
      if(_loc7_ < _loc1_)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(li32(_intEnviron),_loc2_);
         _loc7_ = _loc1_ << 3;
         _loc7_ = _loc7_ | 4;
         si32(_loc7_,_loc2_ + 4);
         ESP = _loc2_;
         F_realloc();
         _loc6_ = -1;
         _loc2_ = int(_loc2_ + 16);
         _loc5_ = eax;
         if(_loc5_ != 0)
         {
            _loc7_ = _loc1_ << 1;
            si32(_loc7_,_environSize);
            si32(_loc5_,_intEnviron);
         }
         addr171:
         eax = _loc6_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      si32(_loc1_,_envActive);
      _loc5_ = 0;
      _loc6_ = li32(_envVarsTotal);
      loop0:
      while(true)
      {
         _loc1_ = li32(_envVars);
         while(_loc6_ > 0)
         {
            _loc7_ = int(_loc1_ + int(_loc6_ * 20));
            _loc6_ = int(_loc6_ + -1);
            if(li8(_loc7_ - 4) != 0)
            {
               _loc7_ = li32(_intEnviron);
               var _loc4_:* = int(_loc6_ * 5);
               _loc4_ = int(_loc1_ + (_loc4_ << 2));
               _loc4_ = li32(_loc4_ + 8);
               si32(_loc4_,int(_loc7_ + _loc5_));
               _loc5_ = _loc5_ + 4;
               continue loop0;
            }
         }
         _loc7_ = li32(_intEnviron);
         _loc6_ = 0;
         si32(_loc6_,int(_loc7_ + _loc5_));
         _loc7_ = li32(_intEnviron);
         si32(_loc7_,_environ);
         §§goto(addr171);
      }
   }
}
