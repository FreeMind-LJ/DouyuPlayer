package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccYMNXlx_2E_o_3A_daea3333_2D_433f_2D_4c6d_2D_889e_2D_3e27e733977d.*;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN8CMapData10UpdateDataEhi() : void
   {
      var _loc13_:* = 0;
      var _loc2_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:int = 0;
      var _loc10_:int = 0;
      var _loc5_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:int = 0;
      var _loc3_:* = 0;
      var _loc9_:int = 0;
      var _loc8_:int = 0;
      var _loc1_:* = int(ESP);
      _loc13_ = _loc1_;
      _loc2_ = li32(_loc13_);
      _loc3_ = li32(_loc2_ + 24);
      if(_loc3_ != 0)
      {
         _loc6_ = li32(_loc13_ + 4);
         _loc7_ = li32(_loc13_ + 8) + 1;
         _loc8_ = 0;
         _loc9_ = 305419896;
         loop0:
         while(uint(_loc8_) < uint(_loc3_))
         {
            _loc1_ = int(_loc1_ - 16);
            si32(_loc9_,_loc1_);
            ESP = _loc1_;
            F__ZN11CCommonFunc6AphashEj();
            _loc8_ = _loc8_ + 1;
            _loc1_ = int(_loc1_ + 16);
            _loc9_ = eax;
            if(_loc7_ == _loc8_)
            {
               _loc10_ = _loc2_ + 8;
               _loc11_ = _loc2_ + 12;
               _loc12_ = _loc10_;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     _loc5_ = li32(_loc11_);
                     if(_loc5_ == 0)
                     {
                        break;
                     }
                     var _loc4_:* = li32(_loc5_ + 16);
                     if(_loc4_ >= _loc9_)
                     {
                        _loc11_ = _loc5_ + 8;
                        _loc12_ = _loc5_;
                        continue loop1;
                     }
                     _loc11_ = _loc5_ + 12;
                  }
                  if(_loc12_ != _loc10_)
                  {
                     if(_loc9_ >= li32(_loc12_ + 16))
                     {
                        if(_loc12_ != _loc10_)
                        {
                           _loc4_ = _loc9_ ^ _loc6_;
                           si8(_loc4_,_loc12_ + 20);
                           break loop0;
                        }
                        break loop0;
                     }
                     break loop0;
                  }
                  break loop0;
               }
            }
            else
            {
               _loc3_ = li32(_loc2_ + 24);
               continue;
            }
         }
      }
      _loc1_ = _loc13_;
      ESP = _loc1_;
   }
}
