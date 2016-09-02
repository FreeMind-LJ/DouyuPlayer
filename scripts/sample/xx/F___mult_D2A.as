package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_dtoa_misc_2E_o_3A_CAC42ED2_2D_032E_2D_4175_2D_B9DB_2D_C2338140AFF7.*;
   
   public function F___mult_D2A() : void
   {
      var _loc10_:* = 0;
      var _loc20_:* = 0;
      var _loc21_:* = 0;
      var _loc6_:* = 0;
      var _loc22_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:int = 0;
      var _loc8_:int = 0;
      var _loc9_:int = 0;
      var _loc3_:int = 0;
      var _loc23_:* = 0;
      var _loc24_:* = 0;
      var _loc1_:int = 0;
      var _loc16_:int = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc14_:int = 0;
      var _loc15_:int = 0;
      var _loc17_:* = 0;
      var _loc13_:* = 0;
      var _loc2_:* = 0;
      var _loc5_:* = int(ESP);
      _loc10_ = _loc5_;
      _loc6_ = li32(_loc10_ + 4);
      _loc24_ = li32(_loc6_ + 16);
      _loc23_ = li32(_loc10_);
      _loc22_ = li32(_loc23_ + 16);
      _loc21_ = _loc6_;
      if(_loc22_ >= _loc24_)
      {
         _loc21_ = _loc23_;
      }
      _loc20_ = li32(_loc21_ + 16);
      if(_loc22_ >= _loc24_)
      {
         _loc23_ = _loc6_;
      }
      _loc6_ = li32(_loc23_ + 16);
      _loc22_ = int(_loc6_ + _loc20_);
      var _loc19_:* = li32(_loc21_ + 8);
      _loc24_ = 1;
      if(_loc19_ >= _loc22_)
      {
         _loc24_ = 0;
      }
      var _loc18_:* = _loc24_ & 1;
      _loc19_ = li32(_loc21_ + 4);
      _loc19_ = int(_loc18_ + _loc19_);
      _loc5_ = int(_loc5_ - 16);
      si32(_loc19_,_loc5_);
      ESP = _loc5_;
      F___Balloc_D2A();
      _loc5_ = int(_loc5_ + 16);
      _loc24_ = int(eax);
      if(_loc22_ >= 1)
      {
         _loc19_ = int(_loc24_ + (_loc22_ << 2));
         _loc16_ = _loc19_ + 20;
         _loc1_ = _loc24_ + 20;
         do
         {
            si32(0,_loc1_);
            _loc1_ = _loc1_ + 4;
         }
         while(uint(_loc1_) < uint(_loc16_));
         
      }
      if(_loc6_ >= 1)
      {
         _loc19_ = int(_loc23_ + (_loc6_ << 2));
         _loc6_ = int(_loc19_ + 20);
         _loc19_ = int(_loc21_ + (_loc20_ << 2));
         _loc20_ = int(_loc19_ + 20);
         _loc23_ = int(_loc23_ + 20);
         _loc16_ = _loc24_ + 20;
         _loc1_ = _loc21_ + 20;
         do
         {
            _loc21_ = li32(_loc23_);
            if(_loc21_ != 0)
            {
               _loc11_ = _loc16_;
               _loc12_ = _loc1_;
               _loc14_ = 0;
               _loc15_ = 0;
               do
               {
                  _loc5_ = int(_loc5_ - 16);
                  si32(_loc21_,_loc5_ + 8);
                  si32(0,_loc5_ + 4);
                  si32(0,_loc5_ + 12);
                  _loc19_ = li32(_loc12_);
                  si32(_loc19_,_loc5_);
                  _loc4_ = li32(_loc11_);
                  _loc7_ = _loc4_ + _loc14_;
                  ESP = _loc5_;
                  F___muldi3();
                  _loc5_ = int(_loc5_ + 16);
                  _loc8_ = eax;
                  _loc9_ = edx;
                  _loc3_ = _loc7_ + _loc8_;
                  si32(_loc3_,_loc11_);
                  _loc2_ = 1;
                  _loc17_ = _loc2_;
                  if(uint(_loc3_) >= uint(_loc7_))
                  {
                     _loc17_ = 0;
                  }
                  _loc13_ = _loc2_;
                  if(uint(_loc3_) >= uint(_loc8_))
                  {
                     _loc13_ = _loc17_;
                  }
                  _loc17_ = _loc2_;
                  if(uint(_loc7_) >= uint(_loc4_))
                  {
                     _loc17_ = 0;
                  }
                  if(uint(_loc7_) >= uint(_loc14_))
                  {
                     _loc2_ = _loc17_;
                  }
                  _loc19_ = int(_loc15_ + _loc2_);
                  _loc19_ = int(_loc19_ + _loc9_);
                  _loc14_ = _loc19_ + _loc13_;
                  _loc11_ = int(_loc11_ + 4);
                  _loc12_ = int(_loc12_ + 4);
                  _loc15_ = 0;
               }
               while(uint(_loc12_) < uint(_loc20_));
               
               si32(_loc14_,_loc11_);
            }
            _loc23_ = int(_loc23_ + 4);
            _loc16_ = _loc16_ + 4;
         }
         while(uint(_loc23_) < uint(_loc6_));
         
      }
      while(_loc22_ >= 1)
      {
         _loc19_ = int(_loc24_ + (_loc22_ << 2));
         _loc19_ = li32(_loc19_ + 16);
         if(_loc19_ != 0)
         {
            break;
         }
         _loc22_ = int(_loc22_ + -1);
      }
      si32(_loc22_,_loc24_ + 16);
      eax = _loc24_;
      _loc5_ = _loc10_;
      ESP = _loc5_;
   }
}
