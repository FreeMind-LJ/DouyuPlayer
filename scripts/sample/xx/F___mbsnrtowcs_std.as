package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_bsnrtowcs_2E_o_3A_855CED67_2D_087F_2D_4990_2D_B5EF_2D_29A82F5F3FDD.*;
   import avm2.intrinsics.memory.si32;
   
   public function F___mbsnrtowcs_std() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc4_:int = 0;
      var _loc12_:* = 0;
      var _loc11_:int = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_ + 4);
      _loc12_ = li32(_loc1_);
      _loc11_ = 0;
      _loc10_ = li32(_loc3_ + 16);
      _loc9_ = li32(_loc3_ + 12);
      _loc8_ = li32(_loc3_ + 8);
      _loc7_ = li32(_loc3_);
      if(_loc7_ == 0)
      {
         while(true)
         {
            var _loc6_:* = li32(___mbrtowc);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc10_,_loc2_ + 12);
            si32(_loc8_,_loc2_ + 8);
            si32(_loc12_,_loc2_ + 4);
            var _loc5_:int = _loc3_ - 4;
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc6_]();
            _loc7_ = -1;
            _loc2_ = int(_loc2_ + 16);
            _loc1_ = int(eax);
            if(_loc1_ != -1)
            {
               _loc7_ = _loc11_;
               if(_loc1_ != -2)
               {
                  _loc7_ = _loc11_;
                  if(_loc1_ != 0)
                  {
                     _loc8_ = int(_loc8_ - _loc1_);
                     _loc12_ = int(_loc12_ + _loc1_);
                     _loc11_ = _loc11_ + 1;
                     continue;
                  }
               }
            }
         }
      }
      else
      {
         while(true)
         {
            if(_loc9_ == _loc11_)
            {
               si32(_loc12_,_loc1_);
               _loc7_ = _loc11_;
               break;
            }
            _loc6_ = li32(___mbrtowc);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc10_,_loc2_ + 12);
            si32(_loc8_,_loc2_ + 8);
            si32(_loc12_,_loc2_ + 4);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc6_]();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = eax;
            if(_loc4_ != -2)
            {
               if(_loc4_ != 0)
               {
                  if(_loc4_ == -1)
                  {
                     si32(_loc12_,_loc1_);
                     _loc7_ = -1;
                     break;
                  }
                  _loc8_ = int(_loc8_ - _loc4_);
                  _loc12_ = int(_loc12_ + _loc4_);
                  _loc7_ = int(_loc7_ + 4);
                  _loc11_ = _loc11_ + 1;
                  continue;
               }
               si32(0,_loc1_);
               _loc7_ = _loc11_;
               break;
            }
            _loc6_ = int(_loc12_ + _loc8_);
            si32(_loc6_,_loc1_);
            _loc7_ = _loc11_;
            break;
         }
      }
      eax = _loc7_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
