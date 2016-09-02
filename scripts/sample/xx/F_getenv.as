package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import sample.xx_etenv_2E_o_3A_A3451165_2D_2A9D_2D_441A_2D_BCA8_2D_D41B459D3F48.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_getenv() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:int = 0;
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      _loc10_ = li32(_loc3_);
      if(_loc10_ != 0)
      {
         while(true)
         {
            var _loc9_:* = int(_loc10_ - _loc1_);
            _loc8_ = li8(_loc9_);
            if(_loc8_ != 61)
            {
               if(_loc8_ == 0)
               {
                  if(_loc1_ == 0)
                  {
                     break;
                  }
                  addr411:
                  _loc7_ = 0;
                  _loc6_ = li32(_environ);
                  if(_loc6_ != 0)
                  {
                     _loc5_ = li32(_loc6_);
                     _loc7_ = 0;
                     if(_loc5_ != 0)
                     {
                        _loc8_ = int(0 - _loc1_);
                        _loc4_ = li32(_envVars);
                        if(_loc4_ != 0)
                        {
                           if(_loc6_ == li32(_intEnviron))
                           {
                              _loc9_ = li32(_envVarsTotal);
                              _loc5_ = int(_loc9_ + -1);
                              while(true)
                              {
                                 _loc7_ = 0;
                                 if(_loc5_ > -1)
                                 {
                                    _loc6_ = int(_loc5_ * 5);
                                    _loc7_ = int(_loc4_ + int(_loc5_ * 20));
                                    _loc9_ = li8(_loc7_ + 17);
                                    if(_loc9_ != 0)
                                    {
                                       _loc6_ = int(_loc4_ + (_loc6_ << 2));
                                       _loc7_ = li32(_loc6_ + 8);
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(_loc8_,_loc2_ + 8);
                                       si32(_loc10_,_loc2_ + 4);
                                       si32(_loc7_,_loc2_);
                                       ESP = _loc2_;
                                       F_strncmp();
                                       _loc2_ = int(_loc2_ + 16);
                                       _loc9_ = int(eax);
                                       if(_loc9_ == 0)
                                       {
                                          _loc9_ = int(_loc7_ - _loc1_);
                                          _loc9_ = li8(_loc9_);
                                          if(_loc9_ == 61)
                                          {
                                             _loc9_ = li32(_loc6_ + 8);
                                             _loc9_ = int(_loc9_ - _loc1_);
                                             _loc7_ = int(_loc9_ + 1);
                                             break;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       _loc9_ = li8(_loc7_ + 16);
                                       if(_loc9_ != 0)
                                       {
                                          _loc9_ = int(_loc4_ + (_loc6_ << 2));
                                          _loc9_ = int(0 - li32(_loc9_));
                                          if(_loc9_ == _loc1_)
                                          {
                                             _loc7_ = int(_loc4_ + (_loc6_ << 2));
                                             _loc6_ = li32(_loc7_ + 8);
                                             _loc2_ = int(_loc2_ - 16);
                                             si32(_loc8_,_loc2_ + 8);
                                             si32(_loc10_,_loc2_ + 4);
                                             si32(_loc6_,_loc2_);
                                             ESP = _loc2_;
                                             F_strncmp();
                                             _loc2_ = int(_loc2_ + 16);
                                             _loc9_ = int(eax);
                                             if(_loc9_ == 0)
                                             {
                                                _loc9_ = int(_loc6_ - _loc1_);
                                                _loc9_ = li8(_loc9_);
                                                if(_loc9_ == 61)
                                                {
                                                   _loc7_ = li32(_loc7_ + 12);
                                                   break;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    _loc5_ = int(_loc5_ + -1);
                                    continue;
                                 }
                                 break;
                              }
                           }
                        }
                        _loc4_ = int(_loc6_ + 4);
                        while(true)
                        {
                           _loc7_ = 0;
                           if(_loc5_ != 0)
                           {
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc8_,_loc2_ + 8);
                              si32(_loc10_,_loc2_ + 4);
                              si32(_loc5_,_loc2_);
                              ESP = _loc2_;
                              F_strncmp();
                              _loc2_ = int(_loc2_ + 16);
                              _loc9_ = int(eax);
                              if(_loc9_ == 0)
                              {
                                 _loc5_ = int(_loc5_ - _loc1_);
                                 _loc9_ = li8(_loc5_);
                                 if(_loc9_ == 61)
                                 {
                                    _loc7_ = int(_loc5_ + 1);
                                 }
                              }
                              _loc9_ = int(_loc4_ + 4);
                              _loc5_ = li32(_loc4_);
                              _loc4_ = _loc9_;
                              continue;
                           }
                        }
                     }
                  }
                  eax = _loc7_;
                  _loc2_ = _loc3_;
                  ESP = _loc2_;
                  return;
               }
               _loc1_ = _loc1_ + -1;
               continue;
            }
            break;
         }
      }
      ESP = _loc2_;
      F___error();
      _loc9_ = int(eax);
      si32(22,_loc9_);
      _loc7_ = 0;
      §§goto(addr411);
   }
}
