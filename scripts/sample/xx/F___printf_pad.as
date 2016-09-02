package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx_printf_2E_o_3A_6EDE186A_2D_A78D_2D_4139_2D_B1C2_2D_0C5D348116BA.*;
   
   public function F___printf_pad() : void
   {
      var _loc4_:* = 0;
      var _loc10_:* = 0;
      var _loc13_:int = 0;
      var _loc6_:int = 0;
      var _loc3_:int = 0;
      var _loc1_:int = 0;
      var _loc9_:int = 0;
      var _loc7_:* = 0;
      var _loc11_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = _blanks;
      _loc13_ = 0;
      var _loc12_:* = li32(_loc4_ + 8);
      if(_loc12_ != _loc13_)
      {
         _loc3_ = _zeroes;
      }
      _loc11_ = li32(_loc4_ + 4);
      if(_loc11_ >= 1)
      {
         _loc10_ = li32(_loc4_);
         _loc12_ = li32(_loc10_);
         _loc12_ = li8(_loc12_ + 12);
         _loc12_ = _loc12_ & 64;
         _loc9_ = _loc12_ >>> 6;
         _loc8_ = 0;
         _loc7_ = _loc8_;
         if(_loc11_ >= 17)
         {
            _loc6_ = _loc10_ + 16;
            _loc13_ = _loc10_ + 4;
            _loc7_ = 0;
            do
            {
               _loc1_ = 0;
               if(_loc9_ == 0)
               {
                  si32(_loc3_,li32(_loc10_ + 80));
                  _loc1_ = 16;
                  si32(_loc1_,li32(_loc10_ + 80) + 4);
                  _loc12_ = li32(_loc10_ + 12);
                  _loc12_ = int(_loc12_ + 16);
                  si32(_loc12_,_loc10_ + 12);
                  _loc12_ = li32(_loc10_ + 80);
                  _loc12_ = int(_loc12_ + 8);
                  si32(_loc12_,_loc10_ + 80);
                  _loc12_ = li32(_loc10_ + 8);
                  _loc12_ = int(_loc12_ + 1);
                  si32(_loc12_,_loc10_ + 8);
                  if(_loc12_ >= 8)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc13_,_loc2_ + 4);
                     si32(li32(_loc10_),_loc2_);
                     ESP = _loc2_;
                     F___sfvwrite();
                     _loc2_ = int(_loc2_ + 16);
                     si32(_loc6_,_loc10_ + 80);
                     si32(_loc6_,_loc10_ + 4);
                     si32(0,_loc10_ + 12);
                     si32(0,_loc10_ + 8);
                     _loc1_ = 16;
                  }
               }
               _loc7_ = int(_loc1_ + _loc7_);
               _loc11_ = int(_loc11_ + -16);
               _loc12_ = li32(_loc10_);
               _loc12_ = li8(_loc12_ + 12);
               _loc12_ = _loc12_ & 64;
               _loc9_ = _loc12_ >>> 6;
            }
            while(_loc11_ > 16);
            
         }
         if(_loc9_ == 0)
         {
            if(_loc11_ != 0)
            {
               si32(_loc3_,li32(_loc10_ + 80));
               si32(_loc11_,li32(_loc10_ + 80) + 4);
               _loc12_ = li32(_loc10_ + 12);
               _loc12_ = int(_loc12_ + _loc11_);
               si32(_loc12_,_loc10_ + 12);
               _loc12_ = li32(_loc10_ + 80);
               _loc12_ = int(_loc12_ + 8);
               si32(_loc12_,_loc10_ + 80);
               _loc12_ = li32(_loc10_ + 8);
               _loc12_ = int(_loc12_ + 1);
               si32(_loc12_,_loc10_ + 8);
               _loc8_ = _loc11_;
               if(_loc12_ >= 8)
               {
                  _loc2_ = int(_loc2_ - 16);
                  _loc12_ = int(_loc10_ + 4);
                  si32(_loc12_,_loc2_ + 4);
                  si32(li32(_loc10_),_loc2_);
                  ESP = _loc2_;
                  F___sfvwrite();
                  _loc2_ = int(_loc2_ + 16);
                  _loc12_ = int(_loc10_ + 16);
                  si32(_loc12_,_loc10_ + 80);
                  si32(_loc12_,_loc10_ + 4);
                  si32(0,_loc10_ + 12);
                  si32(0,_loc10_ + 8);
                  _loc8_ = _loc11_;
               }
            }
         }
         _loc13_ = _loc8_ + _loc7_;
      }
      eax = _loc13_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
