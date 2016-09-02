package sample.xx
{
   import sample.xx_h_catch_2E_o_3A_10AD40DF_2D_77B4_2D_4E8F_2D_8C4E_2D_E570C00524BE.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___cxa_end_catch() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc8_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      ESP = _loc2_;
      F___cxa_get_globals_fast();
      _loc1_ = eax;
      _loc8_ = li32(_loc1_);
      if(_loc8_ != 0)
      {
         var _loc7_:* = li32(_loc8_ + 52);
         var _loc6_:* = li32(_loc8_ + 48);
         _loc6_ = _loc6_ ^ 1126902528;
         _loc7_ = _loc6_ | _loc7_ ^ 1196315971;
         if(_loc7_ != 0)
         {
            si32(0,_loc1_);
            _loc2_ = int(_loc2_ - 16);
            _loc7_ = int(_loc8_ + 48);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F__Unwind_DeleteException();
            _loc2_ = int(_loc2_ + 16);
         }
         else
         {
            _loc5_ = li32(_loc8_ + 20);
            if(_loc5_ <= -1)
            {
               _loc4_ = _loc5_ + 1;
               if(_loc4_ == 0)
               {
                  _loc7_ = li32(_loc8_ + 16);
                  si32(_loc7_,_loc1_);
                  _loc4_ = 0;
               }
            }
            else
            {
               _loc4_ = _loc5_ + -1;
               if(_loc4_ == 0)
               {
                  _loc7_ = li32(_loc8_ + 16);
                  si32(_loc7_,_loc1_);
                  _loc2_ = int(_loc2_ - 16);
                  _loc7_ = int(_loc8_ + 48);
                  si32(_loc7_,_loc2_);
                  ESP = _loc2_;
                  F__Unwind_DeleteException();
                  _loc2_ = int(_loc2_ + 16);
               }
               else if(_loc4_ <= -1)
               {
                  ESP = _loc2_;
                  F__ZSt9terminatev();
               }
            }
            si32(_loc4_,_loc8_ + 20);
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
