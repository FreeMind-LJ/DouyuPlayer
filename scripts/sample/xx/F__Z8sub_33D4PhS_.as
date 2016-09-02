package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccO1BbeL_2E_o_3A_0ae1a2e1_2D_2183_2D_40f3_2D_9c9a_2D_112fae7f1e86.__ZL2Si;
   
   public function F__Z8sub_33D4PhS_() : void
   {
      var _loc13_:* = 0;
      var _loc8_:int = 0;
      var _loc12_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = 0;
      var _loc9_:int = 0;
      var _loc10_:int = 0;
      var _loc11_:int = 0;
      var _loc3_:* = 0;
      var _loc1_:* = int(ESP);
      _loc13_ = _loc1_;
      si32(32,_block_len);
      _loc2_ = 0;
      _loc3_ = li32(_loc13_);
      _loc4_ = _msgbox;
      do
      {
         var _loc6_:* = int(_loc4_ - _loc2_);
         var _loc7_:* = int(_loc3_ - _loc2_);
         _loc7_ = li8(_loc7_);
         si8(_loc7_,_loc6_);
         _loc2_ = int(_loc2_ + -1);
      }
      while(_loc2_ != -32);
      
      ESP = _loc1_;
      F__Z8sub_34DEv();
      ESP = _loc1_;
      F__Z8sub_34DCv();
      _loc6_ = li8(_msgbox + 16);
      si8(_loc6_,_msgbox);
      si8(li8(_msgbox),_msgbox + 16);
      _loc7_ = li8(_msgbox + 24);
      si8(_loc7_,_msgbox + 8);
      si8(li8(_msgbox + 8),_msgbox + 24);
      _loc7_ = li8(_msgbox + 17);
      si8(_loc7_,_msgbox + 1);
      si8(li8(_msgbox + 1),_msgbox + 17);
      _loc7_ = li8(_msgbox + 25);
      si8(_loc7_,_msgbox + 9);
      si8(li8(_msgbox + 9),_msgbox + 25);
      _loc7_ = li8(_msgbox + 18);
      si8(_loc7_,_msgbox + 2);
      si8(li8(_msgbox + 2),_msgbox + 18);
      _loc7_ = li8(_msgbox + 26);
      si8(_loc7_,_msgbox + 10);
      si8(li8(_msgbox + 10),_msgbox + 26);
      _loc7_ = li8(_msgbox + 19);
      si8(_loc7_,_msgbox + 3);
      si8(li8(_msgbox + 3),_msgbox + 19);
      _loc7_ = li8(_msgbox + 27);
      si8(_loc7_,_msgbox + 11);
      si8(li8(_msgbox + 11),_msgbox + 27);
      _loc7_ = li8(_msgbox + 20);
      si8(_loc7_,_msgbox + 4);
      si8(li8(_msgbox + 4),_msgbox + 20);
      _loc7_ = li8(_msgbox + 28);
      si8(_loc7_,_msgbox + 12);
      si8(li8(_msgbox + 12),_msgbox + 28);
      _loc7_ = li8(_msgbox + 21);
      si8(_loc7_,_msgbox + 5);
      si8(li8(_msgbox + 5),_msgbox + 21);
      _loc7_ = li8(_msgbox + 29);
      si8(_loc7_,_msgbox + 13);
      si8(li8(_msgbox + 13),_msgbox + 29);
      _loc7_ = li8(_msgbox + 22);
      si8(_loc7_,_msgbox + 6);
      si8(li8(_msgbox + 6),_msgbox + 22);
      _loc7_ = li8(_msgbox + 30);
      si8(_loc7_,_msgbox + 14);
      si8(li8(_msgbox + 14),_msgbox + 30);
      _loc7_ = li8(_msgbox + 23);
      si8(_loc7_,_msgbox + 7);
      si8(li8(_msgbox + 7),_msgbox + 23);
      _loc6_ = li8(_msgbox + 31);
      si8(_loc6_,_msgbox + 15);
      si8(li8(_msgbox + 15),_msgbox + 31);
      _loc2_ = li32(_block_len);
      if(_loc2_ >= 1)
      {
         _loc8_ = _keybox + _loc2_;
         _loc9_ = _loc2_ + -3;
         _loc10_ = 2;
         _loc11_ = _msgbox;
         while(true)
         {
            _loc12_ = _loc9_;
            _loc6_ = int(_loc11_ + _loc10_);
            _loc7_ = li8(_loc6_ - 2);
            var _loc5_:* = int(_loc8_ - _loc10_);
            _loc5_ = li8(_loc5_ + 1);
            _loc7_ = _loc5_ ^ _loc7_;
            si8(_loc7_,_loc6_ - 2);
            if(_loc10_ < _loc2_)
            {
               _loc9_ = _loc12_ + -2;
               _loc10_ = _loc10_ + 2;
               if(_loc12_ <= -1)
               {
                  break;
               }
               continue;
            }
            break;
         }
         _loc9_ = 1;
         if(_loc2_ >= 2)
         {
            do
            {
               _loc11_ = _msgbox;
               _loc6_ = int(_loc11_ + _loc9_);
               _loc7_ = li8(_loc6_);
               _loc5_ = int(_keybox + _loc9_);
               _loc5_ = li8(_loc5_);
               _loc7_ = _loc5_ ^ _loc7_;
               si8(_loc7_,_loc6_);
               _loc9_ = _loc9_ + 2;
            }
            while(_loc9_ < _loc2_);
            
         }
         do
         {
            _loc6_ = li8(_loc11_);
            _loc6_ = int(__ZL2Si + _loc6_);
            _loc6_ = li8(_loc6_);
            si8(_loc6_,_loc11_);
            _loc11_ = _loc11_ + 1;
            _loc2_ = int(_loc2_ + -1);
         }
         while(_loc2_ != 0);
         
      }
      _loc1_ = int(_loc1_ - 16);
      si32(_loc4_,_loc1_);
      ESP = _loc1_;
      F__Z8sub_34D7Ph();
      _loc1_ = int(_loc1_ + 16);
      _loc2_ = li32(_block_len);
      if(_loc2_ != 0)
      {
         do
         {
            _loc6_ = li8(_loc4_);
            si8(_loc6_,_loc3_);
            _loc3_ = int(_loc3_ + 1);
            _loc4_ = _loc4_ + 1;
            _loc2_ = int(_loc2_ + -1);
         }
         while(_loc2_ != 0);
         
      }
      eax = 1;
      _loc1_ = _loc13_;
      ESP = _loc1_;
   }
}
