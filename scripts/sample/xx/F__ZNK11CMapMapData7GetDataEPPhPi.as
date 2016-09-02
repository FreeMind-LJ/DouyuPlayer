package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccKgiH7b_2E_o_3A_ec56f713_2D_06a1_2D_4be7_2D_88a0_2D_e6cc830d9279.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZNK11CMapMapData7GetDataEPPhPi() : void
   {
      var _loc21_:* = 0;
      var _loc2_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc3_:* = 0;
      var _loc13_:int = 0;
      var _loc11_:int = 0;
      var _loc10_:* = 0;
      var _loc18_:* = 0;
      var _loc20_:* = 0;
      var _loc8_:int = 0;
      var _loc4_:* = 0;
      var _loc6_:* = 0;
      var _loc12_:* = 0;
      var _loc14_:int = 0;
      var _loc17_:int = 0;
      var _loc19_:* = 0;
      var _loc15_:int = 0;
      var _loc1_:* = int(ESP);
      _loc21_ = _loc1_;
      _loc2_ = li32(_loc21_);
      _loc3_ = li32(_loc2_ + 24);
      _loc5_ = li32(_loc21_ + 8);
      if(_loc3_ == 0)
      {
         si32(0,_loc5_);
      }
      else
      {
         _loc7_ = li32(_loc21_ + 4);
         si32(_loc3_,_loc5_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc3_,_loc1_);
         ESP = _loc1_;
         F__Znaj();
         _loc1_ = int(_loc1_ + 16);
         var _loc9_:* = int(eax);
         si32(_loc9_,_loc7_);
         _loc11_ = _loc2_ + 8;
         _loc13_ = _loc2_ + 12;
         _loc15_ = 0;
         _loc17_ = 285163813;
         _loc19_ = _loc17_;
         loop0:
         while(true)
         {
            _loc9_ = li32(_loc5_);
            if(_loc9_ <= _loc15_)
            {
               break;
            }
            _loc1_ = int(_loc1_ - 16);
            si32(_loc17_,_loc1_);
            ESP = _loc1_;
            F__ZN11CCommonFunc6AphashEj();
            _loc1_ = int(_loc1_ + 16);
            _loc17_ = eax;
            _loc1_ = int(_loc1_ - 16);
            si32(_loc19_,_loc1_);
            ESP = _loc1_;
            F__ZN11CCommonFunc8BKDRHashEj();
            _loc1_ = int(_loc1_ + 16);
            _loc19_ = int(eax);
            _loc6_ = _loc13_;
            _loc4_ = _loc11_;
            loop1:
            while(true)
            {
               while(true)
               {
                  _loc10_ = li32(_loc6_);
                  if(_loc10_ == 0)
                  {
                     break;
                  }
                  _loc9_ = li32(_loc10_ + 16);
                  if(_loc9_ >= _loc19_)
                  {
                     _loc6_ = int(_loc10_ + 8);
                     _loc4_ = _loc10_;
                     continue loop1;
                  }
                  _loc6_ = int(_loc10_ + 12);
               }
               if(_loc4_ != _loc11_)
               {
                  if(_loc19_ >= li32(_loc4_ + 16))
                  {
                     if(_loc4_ != _loc11_)
                     {
                        _loc8_ = _loc4_ + 24;
                        _loc14_ = _loc4_ + 28;
                        _loc12_ = _loc8_;
                        loop3:
                        while(true)
                        {
                           while(true)
                           {
                              _loc18_ = li32(_loc14_);
                              if(_loc18_ == 0)
                              {
                                 break;
                              }
                              _loc9_ = li32(_loc18_ + 16);
                              if(_loc9_ >= _loc17_)
                              {
                                 _loc14_ = _loc18_ + 8;
                                 _loc12_ = _loc18_;
                                 continue loop3;
                              }
                              _loc14_ = _loc18_ + 12;
                           }
                           if(_loc12_ != _loc8_)
                           {
                              if(_loc17_ >= li32(_loc12_ + 16))
                              {
                                 if(_loc12_ != _loc8_)
                                 {
                                    _loc9_ = li8(_loc12_ + 20);
                                    var _loc16_:* = li32(_loc7_);
                                    si8(_loc9_ ^ _loc17_,int(_loc16_ + _loc15_));
                                    _loc15_ = _loc15_ + 1;
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               _loc20_ = li32(_loc7_);
               if(_loc20_ != 0)
               {
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc20_,_loc1_);
                  ESP = _loc1_;
                  F__ZdaPv();
                  _loc1_ = int(_loc1_ + 16);
               }
               si32(0,_loc5_);
               break loop0;
            }
         }
      }
      _loc1_ = _loc21_;
      ESP = _loc1_;
   }
}
