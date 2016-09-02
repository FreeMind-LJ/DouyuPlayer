package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_p_2D_demangle_2E_o_3A_4EAE8D64_2D_DBB8_2D_467F_2D_83C7_2D_85C6725F4EAC.*;
   
   public function F___cxa_demangle() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_ + 12);
      _loc8_ = li32(_loc3_);
      if(_loc8_ == 0)
      {
         _loc8_ = 0;
         if(_loc1_ != 0)
         {
            si32(-3,_loc1_);
            _loc8_ = 0;
         }
      }
      else
      {
         _loc7_ = li32(_loc3_ + 8);
         _loc6_ = li32(_loc3_ + 4);
         if(_loc6_ != 0)
         {
            if(_loc7_ == 0)
            {
               _loc8_ = 0;
               if(_loc1_ != 0)
               {
                  si32(-3,_loc1_);
                  _loc8_ = 0;
               }
            }
         }
         _loc2_ = int(_loc2_ - 16);
         var _loc5_:* = int(_loc3_ - 4);
         si32(_loc5_,_loc2_ + 4);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F_d_demangle();
         _loc2_ = int(_loc2_ + 16);
         _loc8_ = int(eax);
         if(_loc8_ == 0)
         {
            _loc8_ = 0;
            if(_loc1_ != 0)
            {
               _loc5_ = li32(_loc3_ - 4);
               if(_loc5_ == 1)
               {
                  si32(-1,_loc1_);
                  _loc8_ = 0;
               }
               else
               {
                  si32(-2,_loc1_);
                  _loc8_ = 0;
               }
            }
         }
         else
         {
            if(_loc6_ == 0)
            {
               if(_loc7_ != 0)
               {
                  _loc5_ = li32(_loc3_ - 4);
                  si32(_loc5_,_loc7_);
               }
            }
            else
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc8_,_loc2_);
               ESP = _loc2_;
               F_strlen();
               _loc2_ = int(_loc2_ + 16);
               var _loc4_:* = li32(_loc7_);
               if(uint(int(eax)) < uint(_loc4_))
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc8_,_loc2_ + 4);
                  si32(_loc6_,_loc2_);
                  ESP = _loc2_;
                  F_strcpy();
                  _loc2_ = int(_loc2_ + 16);
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc8_,_loc2_);
                  ESP = _loc2_;
                  F_free();
                  _loc2_ = int(_loc2_ + 16);
                  _loc8_ = _loc6_;
               }
               else
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc6_,_loc2_);
                  ESP = _loc2_;
                  F_free();
                  _loc2_ = int(_loc2_ + 16);
                  _loc5_ = li32(_loc3_ - 4);
                  si32(_loc5_,_loc7_);
               }
            }
            if(_loc1_ != 0)
            {
               si32(0,_loc1_);
            }
         }
      }
      eax = _loc8_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
