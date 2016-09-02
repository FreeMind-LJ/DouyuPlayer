package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   import sample.xx_ollate_2E_o_3A_3327D5DA_2D_F857_2D_46DE_2D_A662_2D_F85F52217D45.*;
   
   public function F___collate_lookup() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      si32(1,_loc1_);
      _loc10_ = li32(_loc3_ + 12);
      si32(0,_loc10_);
      _loc9_ = li32(_loc3_ + 8);
      si32(0,_loc9_);
      _loc8_ = li32(_loc3_);
      _loc7_ = li32(___collate_chain_pri_table);
      while(true)
      {
         _loc5_ = li8(_loc7_);
         if(_loc5_ == 0)
         {
            var _loc6_:* = li8(_loc8_);
            var _loc4_:* = li32(___collate_char_pri_table_ptr);
            _loc6_ = int(_loc4_ + (_loc6_ << 3));
            _loc6_ = li32(_loc6_);
            si32(_loc6_,_loc9_);
            _loc6_ = li8(_loc8_);
            _loc4_ = li32(___collate_char_pri_table_ptr);
            _loc6_ = int(_loc4_ + (_loc6_ << 3));
            _loc7_ = int(_loc6_ + 4);
            break;
         }
         _loc6_ = li8(_loc8_);
         if(_loc6_ == _loc5_)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F_strlen();
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = int(eax);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc5_,_loc2_ + 8);
            si32(_loc7_,_loc2_ + 4);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F_strncmp();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = int(eax);
            if(_loc6_ == 0)
            {
               si32(_loc5_,_loc1_);
               _loc6_ = li32(_loc7_ + 12);
               si32(_loc6_,_loc9_);
               _loc7_ = int(_loc7_ + 16);
               break;
            }
         }
         _loc7_ = int(_loc7_ + 20);
      }
      _loc6_ = li32(_loc7_);
      si32(_loc6_,_loc10_);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
