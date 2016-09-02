package sample.xx_tf8_2E_o_3A_71874781_2D_5724_2D_4B16_2D_9C7F_2D_C30AC3EB270F
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sxi8;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   
   public function F__UTF8_mbsnrtowcs() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc11_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:* = 0;
      var _loc12_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_ + 4);
      _loc12_ = li32(_loc1_);
      _loc11_ = li32(_loc3_ + 16);
      _loc10_ = li32(_loc3_ + 8);
      _loc9_ = li32(_loc3_);
      if(_loc9_ == 0)
      {
         _loc9_ = 0;
         _loc8_ = _loc9_;
         if(_loc10_ != 0)
         {
            _loc9_ = 0;
            _loc8_ = _loc10_;
            if(li32(_loc11_ + 4) >= 1)
            {
               _loc9_ = 0;
               _loc8_ = _loc10_;
               if(si8(li8(_loc12_)) >= 1)
               {
                  ESP = _loc2_;
                  F___error();
                  si32(86,int(eax));
                  _loc6_ = -1;
               }
            }
         }
         while(true)
         {
            if(_loc8_ != 0)
            {
               _loc10_ = 1;
               if(si8(li8(_loc12_)) <= 0)
               {
               }
               addr174:
               _loc8_ = int(_loc8_ - _loc10_);
               _loc12_ = int(_loc12_ + _loc10_);
               _loc9_ = int(_loc9_ + 1);
               continue;
            }
            _loc2_ = int(_loc2_ - 16);
            si32(_loc11_,_loc2_ + 12);
            si32(_loc8_,_loc2_ + 8);
            si32(_loc12_,_loc2_ + 4);
            var _loc7_:int = _loc3_ - 4;
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F__UTF8_mbrtowc();
            _loc6_ = -1;
            _loc2_ = int(_loc2_ + 16);
            _loc10_ = int(eax);
            if(_loc10_ != -1)
            {
               _loc6_ = _loc9_;
               if(_loc10_ != -2)
               {
                  _loc6_ = _loc9_;
                  if(_loc10_ != 0)
                  {
                     §§goto(addr174);
                  }
               }
            }
         }
      }
      else
      {
         _loc5_ = 1;
         _loc8_ = 0;
         if(_loc10_ != _loc8_)
         {
            _loc5_ = _loc8_;
         }
         _loc4_ = li32(_loc3_ + 12);
         _loc6_ = _loc8_;
         if(_loc4_ != 0)
         {
            _loc6_ = _loc8_;
            if(_loc5_ == 0)
            {
               _loc8_ = 0;
               _loc6_ = _loc8_;
               if(li32(_loc11_ + 4) >= 1)
               {
                  _loc8_ = 0;
                  _loc6_ = _loc8_;
                  if(si8(li8(_loc12_)) >= 1)
                  {
                     ESP = _loc2_;
                     F___error();
                     si32(86,int(eax));
                     _loc6_ = -1;
                  }
               }
            }
         }
         while(true)
         {
            if(_loc4_ == _loc6_)
            {
               si32(_loc12_,_loc1_);
               break;
            }
            if(_loc10_ != 0)
            {
               _loc5_ = si8(li8(_loc12_));
               if(_loc5_ >= 1)
               {
                  si32(_loc5_,int(_loc9_ + (_loc6_ << 2)));
                  _loc5_ = 1;
               }
               addr356:
               _loc10_ = int(_loc10_ - _loc5_);
               _loc12_ = int(_loc12_ + _loc5_);
               _loc8_ = int(_loc8_ + 4);
               _loc6_ = int(_loc6_ + 1);
               continue;
            }
            _loc7_ = _loc9_ + _loc8_;
            _loc2_ = int(_loc2_ - 16);
            si32(_loc11_,_loc2_ + 12);
            si32(_loc10_,_loc2_ + 8);
            si32(_loc12_,_loc2_ + 4);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F__UTF8_mbrtowc();
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = int(eax);
            if(_loc5_ != -2)
            {
               if(_loc5_ != 0)
               {
                  if(_loc5_ == -1)
                  {
                     si32(_loc12_,_loc1_);
                     _loc6_ = -1;
                     break;
                  }
                  §§goto(addr356);
               }
               else
               {
                  si32(0,_loc1_);
                  break;
               }
            }
            else
            {
               _loc7_ = _loc12_ + _loc10_;
               si32(_loc7_,_loc1_);
               break;
            }
         }
      }
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
