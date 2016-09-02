package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_ollate_2E_o_3A_3327D5DA_2D_F857_2D_46DE_2D_A662_2D_F85F52217D45.*;
   import avm2.intrinsics.memory.li8;
   
   public function F___collate_substitute() : void
   {
      var _loc3_:* = 0;
      var _loc8_:int = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc11_:int = 0;
      var _loc4_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_strlen();
      _loc2_ = int(_loc2_ + 16);
      _loc11_ = eax;
      if(_loc1_ != 0)
      {
         _loc10_ = li8(_loc1_);
         if(_loc10_ == 0)
         {
         }
         addr113:
         var _loc9_:* = _loc11_ >> 31;
         _loc9_ = int(_loc9_ >>> 29);
         _loc9_ = int(_loc11_ + _loc9_);
         _loc9_ = _loc9_ >> 3;
         _loc8_ = _loc9_ + _loc11_;
         _loc2_ = int(_loc2_ - 16);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F_malloc();
         _loc2_ = int(_loc2_ + 16);
         _loc11_ = eax;
         if(_loc11_ != 0)
         {
            _loc1_ = int(_loc1_ + 1);
            _loc7_ = 0;
            _loc6_ = _loc8_;
            addr368:
            do
            {
               _loc5_ = _loc10_ & 255;
            }
            while(_loc5_ != 0);
            
            eax = _loc11_;
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
         }
         _loc2_ = int(_loc2_ - 16);
         si32(___func___2E_3039,_loc2_ + 4);
         si32(71,_loc2_);
         ESP = _loc2_;
         F___collate_err();
         _loc2_ = int(_loc2_ + 16);
         while(true)
         {
            _loc9_ = int(_loc5_ * 10);
            _loc4_ = li32(___collate_substitute_table_ptr);
            _loc9_ = int(_loc4_ + _loc9_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F_strlen();
            _loc2_ = int(_loc2_ + 16);
            _loc9_ = int(eax);
            _loc5_ = int(_loc9_ + _loc7_);
            if(_loc6_ <= _loc5_)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc11_,_loc2_);
               _loc6_ = int(_loc5_ + _loc8_);
               si32(_loc6_,_loc2_ + 4);
               ESP = _loc2_;
               F_reallocf();
               _loc2_ = int(_loc2_ + 16);
               _loc11_ = eax;
               if(_loc11_ != 0)
               {
                  _loc10_ = li8(_loc1_ - 1);
                  _loc4_ = li32(___collate_substitute_table_ptr);
               }
               else
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(___func___2E_3039,_loc2_ + 4);
                  si32(71,_loc2_);
                  ESP = _loc2_;
                  F___collate_err();
                  _loc2_ = int(_loc2_ + 16);
               }
            }
            _loc9_ = int(_loc11_ + _loc7_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc9_,_loc2_);
            _loc9_ = _loc10_ & 255;
            _loc9_ = int(_loc9_ * 10);
            _loc9_ = int(_loc4_ + _loc9_);
            si32(_loc9_,_loc2_ + 4);
            ESP = _loc2_;
            F_strcpy();
            _loc2_ = int(_loc2_ + 16);
            _loc9_ = int(_loc1_ + 1);
            _loc10_ = li8(_loc1_);
            _loc1_ = _loc9_;
            _loc7_ = _loc5_;
            §§goto(addr368);
         }
      }
      _loc2_ = int(_loc2_ - 16);
      si32(L__2E_str2,_loc2_);
      ESP = _loc2_;
      F_strdup();
      _loc2_ = int(_loc2_ + 16);
      _loc11_ = eax;
      if(_loc11_ == 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(___func___2E_3112,_loc2_ + 4);
         si32(71,_loc2_);
         ESP = _loc2_;
         F___collate_err();
         _loc2_ = int(_loc2_ + 16);
         §§goto(addr113);
      }
      §§goto(addr376);
   }
}
