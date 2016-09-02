package sample.xx_h_globals_2E_o_3A_BE3703DC_2D_DDE4_2D_433D_2D_A974_2D_4A1C4EA1F40C
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   
   public function F__ZL15eh_globals_dtorPv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      if(_loc1_ != 0)
      {
         _loc6_ = li32(_loc1_);
         if(_loc6_ != 0)
         {
            do
            {
               var _loc5_:* = li32(_loc6_ + 16);
               _loc2_ = int(_loc2_ - 16);
               var _loc4_:int = _loc6_ + 48;
               si32(_loc4_,_loc2_);
               ESP = _loc2_;
               F__Unwind_DeleteException();
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = _loc5_;
            }
            while(_loc5_ != 0);
            
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F_free();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
