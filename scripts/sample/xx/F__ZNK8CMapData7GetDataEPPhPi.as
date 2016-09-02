package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccYMNXlx_2E_o_3A_daea3333_2D_433f_2D_4c6d_2D_889e_2D_3e27e733977d.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZNK8CMapData7GetDataEPPhPi() : void
   {
      var _loc16_:* = 0;
      var _loc2_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc3_:* = 0;
      var _loc12_:int = 0;
      var _loc11_:int = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc13_:int = 0;
      var _loc15_:* = 0;
      var _loc10_:* = 0;
      var _loc14_:int = 0;
      var _loc1_:* = int(ESP);
      _loc16_ = _loc1_;
      _loc2_ = li32(_loc16_);
      _loc3_ = li32(_loc2_ + 24);
      _loc5_ = li32(_loc16_ + 8);
      if(_loc3_ == 0)
      {
         si32(0,_loc5_);
      }
      else
      {
         _loc7_ = li32(_loc16_ + 4);
         si32(_loc3_,_loc5_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc3_,_loc1_);
         ESP = _loc1_;
         F__Znaj();
         _loc1_ = int(_loc1_ + 16);
         var _loc9_:* = int(eax);
         si32(_loc9_,_loc7_);
         _loc11_ = _loc2_ + 8;
         _loc12_ = _loc2_ + 12;
         _loc13_ = 0;
         _loc14_ = 305419896;
         loop0:
         while(true)
         {
            _loc9_ = li32(_loc5_);
            if(_loc9_ > _loc13_)
            {
               _loc1_ = int(_loc1_ - 16);
               si32(_loc14_,_loc1_);
               ESP = _loc1_;
               F__ZN11CCommonFunc6AphashEj();
               _loc1_ = int(_loc1_ + 16);
               _loc14_ = eax;
               _loc15_ = _loc12_;
               _loc6_ = _loc11_;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     _loc4_ = li32(_loc15_);
                     if(_loc4_ == 0)
                     {
                        break;
                     }
                     _loc9_ = li32(_loc4_ + 16);
                     if(_loc9_ >= _loc14_)
                     {
                        _loc15_ = int(_loc4_ + 8);
                        _loc6_ = _loc4_;
                        continue loop1;
                     }
                     _loc15_ = int(_loc4_ + 12);
                  }
                  if(_loc6_ != _loc11_)
                  {
                     if(_loc14_ >= li32(_loc6_ + 16))
                     {
                        _loc10_ = li32(_loc7_);
                        if(_loc6_ != _loc11_)
                        {
                           var _loc8_:* = li8(_loc6_ + 20);
                           _loc8_ = _loc8_ ^ _loc14_;
                           si8(_loc8_,int(_loc10_ + _loc13_));
                           _loc13_ = _loc13_ + 1;
                           continue loop0;
                        }
                     }
                     addr212:
                     if(_loc10_ != 0)
                     {
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc10_,_loc1_);
                        ESP = _loc1_;
                        F__ZdaPv();
                        _loc1_ = int(_loc1_ + 16);
                     }
                     si32(0,_loc5_);
                     break loop0;
                  }
                  _loc10_ = li32(_loc7_);
                  §§goto(addr212);
               }
            }
            break;
         }
      }
      _loc1_ = _loc16_;
      ESP = _loc1_;
   }
}
