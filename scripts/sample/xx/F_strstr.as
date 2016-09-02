package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx_trstr_2E_o_3A_981E83B1_2D_F185_2D_49D1_2D_BEFC_2D_82BD53A17C43.*;
   
   public function F_strstr() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:int = 0;
      var _loc7_:int = 0;
      var _loc5_:int = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc10_ = li8(_loc1_);
      _loc9_ = li32(_loc3_);
      if(_loc10_ != 0)
      {
         _loc8_ = _loc1_ + 1;
         _loc2_ = int(_loc2_ - 16);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F_strlen();
         _loc2_ = int(_loc2_ + 16);
         _loc7_ = eax;
         _loc1_ = _loc9_;
         while(true)
         {
            _loc6_ = li8(_loc1_);
            _loc9_ = 0;
            if(_loc6_ != 0)
            {
               _loc5_ = _loc1_ + 1;
               if(_loc6_ == _loc10_)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc7_,_loc2_ + 8);
                  si32(_loc8_,_loc2_ + 4);
                  si32(_loc5_,_loc2_);
                  ESP = _loc2_;
                  F_strncmp();
                  _loc2_ = int(_loc2_ + 16);
                  _loc9_ = _loc1_;
                  if(int(eax) == 0)
                  {
                     break;
                  }
               }
               _loc1_ = _loc5_;
               continue;
            }
            break;
         }
      }
      eax = _loc9_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
