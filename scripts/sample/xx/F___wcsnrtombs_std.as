package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_csnrtombs_2E_o_3A_47293EC0_2D_9D60_2D_4E41_2D_B0E2_2D_60D15E5E5257.*;
   import avm2.intrinsics.memory.si32;
   
   public function F___wcsnrtombs_std() : void
   {
      var _loc7_:* = 0;
      var _loc19_:* = 0;
      var _loc43_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc12_:* = 0;
      var _loc42_:* = 0;
      var _loc44_:* = 0;
      var _loc38_:* = 0;
      var _loc40_:* = 0;
      var _loc34_:* = 0;
      var _loc36_:* = 0;
      var _loc30_:* = 0;
      var _loc32_:* = 0;
      var _loc26_:* = 0;
      var _loc28_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc11_:* = 0;
      var _loc9_:* = 0;
      var _loc14_:* = 0;
      var _loc13_:* = 0;
      var _loc15_:* = 0;
      var _loc17_:* = 0;
      var _loc18_:* = 0;
      var _loc23_:* = 0;
      var _loc22_:* = 0;
      var _loc21_:* = 0;
      var _loc20_:* = 0;
      var _loc29_:* = 0;
      var _loc27_:* = 0;
      var _loc25_:* = 0;
      var _loc45_:* = 0;
      var _loc41_:* = 0;
      var _loc35_:* = 0;
      var _loc39_:* = 0;
      var _loc37_:int = 0;
      var _loc24_:int = 0;
      var _loc33_:* = 0;
      var _loc3_:* = int(ESP);
      _loc7_ = _loc3_;
      _loc3_ = int(_loc3_ - 16);
      _loc19_ = li32(_loc7_ + 4);
      _loc45_ = li32(_loc19_);
      _loc43_ = li32(_loc7_ + 16);
      _loc41_ = li32(_loc7_ + 8);
      _loc39_ = li32(_loc7_);
      if(_loc39_ == 0)
      {
         _loc37_ = 0;
         while(true)
         {
            _loc33_ = _loc37_;
            if(_loc41_ != 0)
            {
               var _loc16_:* = li32(___wcrtomb);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc43_,_loc3_ + 8);
               si32(li32(_loc45_),_loc3_ + 4);
               var _loc31_:* = int(_loc7_ - 6);
               si32(_loc31_,_loc3_);
               ESP = _loc3_;
               ptr2fun[_loc16_]();
               _loc33_ = -1;
               _loc3_ = int(_loc3_ + 16);
               _loc24_ = eax;
               if(_loc24_ != -1)
               {
                  _loc16_ = li32(_loc45_);
                  if(_loc16_ == 0)
                  {
                     _loc16_ = int(_loc37_ + _loc24_);
                     _loc33_ = int(_loc16_ + -1);
                     break;
                  }
                  _loc37_ = _loc24_ + _loc37_;
                  _loc45_ = int(_loc45_ + 4);
                  _loc41_ = int(_loc41_ + -1);
                  continue;
               }
               break;
            }
            break;
         }
      }
      else
      {
         _loc35_ = li32(_loc7_ + 12);
         _loc33_ = 0;
         while(_loc35_ != 0)
         {
            if(_loc41_ != 0)
            {
               _loc16_ = li32(___mb_cur_max);
               if(uint(_loc16_) < uint(_loc35_))
               {
                  _loc16_ = li32(___wcrtomb);
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc43_,_loc3_ + 8);
                  si32(li32(_loc45_),_loc3_ + 4);
                  si32(_loc39_,_loc3_);
                  ESP = _loc3_;
                  ptr2fun[_loc16_]();
                  _loc3_ = int(_loc3_ + 16);
                  _loc24_ = eax;
                  if(_loc24_ == -1)
                  {
                     si32(_loc45_,_loc19_);
                     _loc33_ = -1;
                  }
               }
               else
               {
                  _loc25_ = li32(_loc43_ + 124);
                  _loc27_ = li32(_loc43_ + 120);
                  _loc29_ = li32(_loc43_ + 116);
                  _loc20_ = li32(_loc43_ + 112);
                  _loc21_ = li32(_loc43_ + 108);
                  _loc22_ = li32(_loc43_ + 104);
                  _loc23_ = li32(_loc43_ + 100);
                  _loc18_ = li32(_loc43_ + 96);
                  _loc17_ = li32(_loc43_ + 92);
                  _loc15_ = li32(_loc43_ + 88);
                  _loc13_ = li32(_loc43_ + 84);
                  _loc14_ = li32(_loc43_ + 80);
                  _loc9_ = li32(_loc43_ + 76);
                  _loc11_ = li32(_loc43_ + 72);
                  _loc5_ = li32(_loc43_ + 68);
                  _loc6_ = li32(_loc43_ + 64);
                  _loc2_ = li32(_loc43_ + 60);
                  _loc4_ = li32(_loc43_ + 56);
                  _loc1_ = li32(_loc43_ + 52);
                  _loc28_ = li32(_loc43_ + 48);
                  _loc26_ = li32(_loc43_ + 44);
                  _loc32_ = li32(_loc43_ + 40);
                  _loc30_ = li32(_loc43_ + 36);
                  _loc36_ = li32(_loc43_ + 32);
                  _loc34_ = li32(_loc43_ + 28);
                  _loc40_ = li32(_loc43_ + 24);
                  _loc38_ = li32(_loc43_ + 20);
                  _loc44_ = li32(_loc43_ + 16);
                  _loc42_ = li32(_loc43_ + 12);
                  _loc12_ = li32(_loc43_ + 8);
                  _loc10_ = li32(_loc43_ + 4);
                  _loc8_ = li32(_loc43_);
                  _loc31_ = li32(___wcrtomb);
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc43_,_loc3_ + 8);
                  si32(li32(_loc45_),_loc3_ + 4);
                  _loc37_ = _loc7_ - 6;
                  si32(_loc37_,_loc3_);
                  ESP = _loc3_;
                  ptr2fun[_loc31_]();
                  _loc3_ = int(_loc3_ + 16);
                  _loc24_ = eax;
                  if(_loc24_ == -1)
                  {
                     si32(_loc45_,_loc19_);
                     _loc33_ = -1;
                  }
                  else
                  {
                     if(uint(_loc24_) > uint(_loc35_))
                     {
                        si32(_loc8_,_loc43_);
                        si32(_loc10_,_loc43_ + 4);
                        si32(_loc38_,_loc43_ + 20);
                        si32(_loc44_,_loc43_ + 16);
                        si32(_loc42_,_loc43_ + 12);
                        si32(_loc12_,_loc43_ + 8);
                        si32(_loc40_,_loc43_ + 24);
                        si32(_loc34_,_loc43_ + 28);
                        si32(_loc36_,_loc43_ + 32);
                        si32(_loc30_,_loc43_ + 36);
                        si32(_loc32_,_loc43_ + 40);
                        si32(_loc26_,_loc43_ + 44);
                        si32(_loc28_,_loc43_ + 48);
                        si32(_loc1_,_loc43_ + 52);
                        si32(_loc4_,_loc43_ + 56);
                        si32(_loc2_,_loc43_ + 60);
                        si32(_loc6_,_loc43_ + 64);
                        si32(_loc5_,_loc43_ + 68);
                        si32(_loc11_,_loc43_ + 72);
                        si32(_loc9_,_loc43_ + 76);
                        si32(_loc14_,_loc43_ + 80);
                        si32(_loc13_,_loc43_ + 84);
                        si32(_loc15_,_loc43_ + 88);
                        si32(_loc17_,_loc43_ + 92);
                        si32(_loc18_,_loc43_ + 96);
                        si32(_loc23_,_loc43_ + 100);
                        si32(_loc22_,_loc43_ + 104);
                        si32(_loc21_,_loc43_ + 108);
                        si32(_loc20_,_loc43_ + 112);
                        si32(_loc29_,_loc43_ + 116);
                        si32(_loc27_,_loc43_ + 120);
                        si32(_loc25_,_loc43_ + 124);
                        break;
                     }
                     _loc3_ = int(_loc3_ - 16);
                     si32(_loc24_,_loc3_ + 8);
                     si32(_loc37_,_loc3_ + 4);
                     si32(_loc39_,_loc3_);
                     ESP = _loc3_;
                     Fmemcpy();
                     _loc3_ = int(_loc3_ + 16);
                  }
               }
               _loc16_ = li32(_loc45_);
               if(_loc16_ == 0)
               {
                  si32(0,_loc19_);
                  _loc16_ = int(_loc33_ + _loc24_);
                  _loc33_ = int(_loc16_ + -1);
               }
               else
               {
                  _loc33_ = int(_loc24_ + _loc33_);
                  _loc35_ = int(_loc35_ - _loc24_);
                  _loc39_ = int(_loc39_ + _loc24_);
                  _loc45_ = int(_loc45_ + 4);
                  _loc41_ = int(_loc41_ + -1);
                  continue;
               }
            }
            break;
         }
         si32(_loc45_,_loc19_);
      }
      eax = _loc33_;
      _loc3_ = _loc7_;
      ESP = _loc3_;
   }
}
