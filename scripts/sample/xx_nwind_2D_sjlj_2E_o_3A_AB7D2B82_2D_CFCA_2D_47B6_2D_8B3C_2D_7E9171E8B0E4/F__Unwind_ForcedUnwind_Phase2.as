package sample.xx_nwind_2D_sjlj_2E_o_3A_AB7D2B82_2D_CFCA_2D_47B6_2D_8B3C_2D_7E9171E8B0E4
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.ptr2fun;
   import sample.xx.eax;
   import sample.xx.F__Unwind_SjLj_Unregister;
   
   public function F__Unwind_ForcedUnwind_Phase2() : void
   {
      var _loc4_:* = 0;
      var _loc13_:* = 0;
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc6_:int = 0;
      var _loc14_:* = 0;
      var _loc8_:int = 0;
      var _loc9_:* = 0;
      var _loc10_:int = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_ + 4);
      _loc14_ = li32(_loc3_);
      _loc13_ = li32(_loc4_);
      _loc12_ = li32(_loc13_ + 16);
      _loc11_ = li32(_loc13_ + 12);
      while(true)
      {
         _loc10_ = 26;
         _loc9_ = 0;
         _loc8_ = 5;
         if(_loc14_ != 0)
         {
            _loc9_ = li32(_loc14_ + 24);
            _loc8_ = 0;
            _loc10_ = 10;
         }
         var _loc7_:* = li32(_loc13_);
         var _loc1_:* = li32(_loc13_ + 4);
         _loc2_ = int(_loc2_ - 32);
         si32(_loc12_,_loc2_ + 24);
         si32(_loc3_,_loc2_ + 20);
         si32(_loc13_,_loc2_ + 16);
         si32(_loc1_,_loc2_ + 12);
         si32(_loc7_,_loc2_ + 8);
         si32(_loc10_,_loc2_ + 4);
         si32(1,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc11_]();
         _loc5_ = 2;
         _loc2_ = int(_loc2_ + 32);
         _loc1_ = int(eax);
         if(_loc1_ == 0)
         {
            _loc5_ = 5;
            if(_loc8_ != 5)
            {
               if(_loc9_ != 0)
               {
                  _loc2_ = int(_loc2_ - 32);
                  si32(_loc3_,_loc2_ + 20);
                  si32(_loc13_,_loc2_ + 16);
                  si32(li32(_loc13_ + 4),_loc2_ + 12);
                  si32(li32(_loc13_),_loc2_ + 8);
                  si32(10,_loc2_ + 4);
                  si32(1,_loc2_);
                  ESP = _loc2_;
                  ptr2fun[_loc9_]();
                  _loc5_ = 7;
                  _loc2_ = int(_loc2_ + 32);
                  _loc6_ = eax;
                  if(_loc6_ != 7)
                  {
                     _loc5_ = 2;
                     if(_loc6_ != 8)
                     {
                        break;
                     }
                  }
               }
               _loc1_ = li32(_loc3_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Unregister();
               _loc2_ = int(_loc2_ + 16);
               _loc1_ = li32(_loc3_);
               _loc14_ = li32(_loc1_);
               si32(_loc14_,_loc3_);
               continue;
            }
            break;
         }
         break;
      }
      eax = _loc5_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
