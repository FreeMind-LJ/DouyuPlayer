package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323.*;
   
   public function F___sys_mmap() : void
   {
      var _loc2_:* = 0;
      var _loc23_:* = 0;
      var _loc24_:* = 0;
      var _loc25_:* = 0;
      var _loc9_:* = 0;
      var _loc14_:int = 0;
      var _loc15_:int = 0;
      var _loc11_:* = 0;
      var _loc8_:int = 0;
      var _loc7_:int = 0;
      var _loc18_:* = 0;
      var _loc16_:* = 0;
      var _loc17_:* = 0;
      var _loc10_:* = 0;
      var _loc13_:* = 0;
      var _loc5_:* = 0;
      var _loc3_:* = 0;
      var _loc6_:int = 0;
      var _loc12_:* = 0;
      var _loc4_:* = 0;
      var _loc19_:* = 0;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      _loc9_ = li32(_loc2_ + 16);
      _loc25_ = li32(_loc2_ + 12);
      _loc24_ = li32(_loc2_ + 8);
      _loc23_ = li32(_loc2_ + 4);
      if(_loc9_ >= 0)
      {
         var _loc20_:* = li32(_loc2_);
         _loc1_ = int(_loc1_ - 32);
         si32(li32(_loc2_ + 20),_loc1_ + 20);
         si32(_loc9_,_loc1_ + 16);
         si32(_loc25_,_loc1_ + 12);
         si32(_loc24_,_loc1_ + 8);
         si32(_loc23_,_loc1_ + 4);
         si32(_loc20_,_loc1_);
         si32(li32(_loc2_ + 24),_loc1_ + 24);
         ESP = _loc1_;
         F_mmap_file();
         _loc1_ = int(_loc1_ + 32);
         _loc19_ = int(eax);
      }
      else
      {
         if(_loc25_ != 0)
         {
            var _loc21_:* = _loc25_ & 4096;
            if(_loc21_ == 0)
            {
               ESP = _loc1_;
               F___error();
               si32(22,int(eax));
               _loc19_ = -1;
            }
         }
         _loc21_ = _loc24_ & 4;
         if(_loc21_ != 0)
         {
            ESP = _loc1_;
            F___error();
            si32(22,int(eax));
            _loc19_ = -1;
         }
         else
         {
            _loc18_ = li32(_avm2_haveWorkers_2E_4273);
            if(_loc18_ == -1)
            {
               _loc18_ = int(Boolean(workerClass));
               si32(_loc18_,_avm2_haveWorkers_2E_4273);
            }
            if(_loc18_ != 0)
            {
               _loc1_ = int(_loc1_ - 16);
               _loc21_ = int(int(threadId) + 8);
               si32(_loc21_,_loc1_ + 4);
               si32(_smmapMtx,_loc1_);
               ESP = _loc1_;
               F_avm2_lock_id();
               _loc1_ = int(_loc1_ + 16);
            }
            _loc21_ = int(_loc23_ + 4095);
            _loc6_ = _loc21_ >>> 12;
            _loc14_ = 0 - _loc6_;
            loop0:
            while(true)
            {
               _loc15_ = ram.length;
               if(_loc15_ <= -1)
               {
                  ESP = _loc1_ & -16;
                  _loc16_ = int((ram.length + 4095) / 4096);
               }
               else
               {
                  _loc21_ = int(_loc15_ + 4095);
                  _loc20_ = _loc21_ >> 31;
                  _loc21_ = int(_loc21_ + (int(_loc20_ >>> 20)));
                  _loc16_ = _loc21_ >> 12;
               }
               _loc17_ = li32(_mmapBlockCount);
               if(_loc16_ > _loc17_)
               {
                  do
                  {
                     _loc21_ = _loc17_ & 31;
                     _loc21_ = 1 << _loc21_;
                     _loc20_ = _loc17_ & -32;
                     _loc20_ = int(_loc20_ >>> 3);
                     _loc20_ = int(_mmapBlockAllocBitSet + _loc20_);
                     var _loc22_:* = li32(_loc20_);
                     _loc21_ = _loc21_ | _loc22_;
                     si32(_loc21_,_loc20_);
                     _loc17_ = int(_loc17_ + 1);
                  }
                  while(_loc16_ != _loc17_);
                  
               }
               si32(_loc16_,_mmapBlockCount);
               _loc10_ = _loc16_;
               loop2:
               while(true)
               {
                  _loc11_ = _loc10_;
                  if(_loc11_ >= _loc6_)
                  {
                     _loc10_ = int(_loc14_ + _loc11_);
                     _loc12_ = int(_loc11_ - _loc6_);
                     while(true)
                     {
                        if(_loc10_ >= _loc11_)
                        {
                           if(_loc12_ >= 0)
                           {
                              _loc13_ = _loc14_;
                              if(_loc6_ != 0)
                              {
                                 do
                                 {
                                    _loc20_ = int(_loc11_ + _loc13_);
                                    _loc21_ = _loc20_ & 31;
                                    _loc21_ = 1 << _loc21_;
                                    _loc20_ = _loc20_ & -32;
                                    _loc20_ = int(_loc20_ >>> 3);
                                    _loc20_ = int(_mmapBlockAllocBitSet + _loc20_);
                                    _loc22_ = li32(_loc20_);
                                    _loc21_ = _loc21_ | _loc22_;
                                    si32(_loc21_,_loc20_);
                                    _loc13_ = int(_loc13_ + 1);
                                 }
                                 while(_loc13_ != 0);
                                 
                              }
                           }
                           if(_loc12_ <= -1)
                           {
                              break loop2;
                           }
                           addr634:
                           _loc4_ = li32(_avm2_haveWorkers_2E_4273);
                           if(_loc4_ == -1)
                           {
                              _loc4_ = int(Boolean(workerClass));
                              si32(_loc4_,_avm2_haveWorkers_2E_4273);
                           }
                           if(_loc4_ != 0)
                           {
                              _loc1_ = int(_loc1_ - 16);
                              si32(_smmapMtx,_loc1_);
                              ESP = _loc1_;
                              F_avm2_unlock();
                              _loc1_ = int(_loc1_ + 16);
                           }
                           _loc19_ = _loc12_ << 12;
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc23_,_loc1_ + 8);
                           si32(0,_loc1_ + 4);
                           si32(_loc19_,_loc1_);
                           ESP = _loc1_;
                           Fmemset();
                           _loc1_ = int(_loc1_ + 16);
                           break loop0;
                        }
                        _loc20_ = _loc10_ & -32;
                        _loc20_ = int(_mmapBlockAllocBitSet + (int(_loc20_ >>> 3)));
                        _loc20_ = li32(_loc20_);
                        _loc21_ = _loc20_ & 1 << (_loc10_ & 31);
                        if(_loc21_ == 0)
                        {
                           _loc10_ = int(_loc10_ + 1);
                           continue;
                        }
                        break;
                     }
                     continue;
                  }
                  break;
               }
               _loc1_ = int(_loc1_ - 16);
               si32(_loc15_,_loc1_);
               _loc8_ = _loc16_ + _loc6_;
               _loc21_ = _loc8_ << 12;
               si32(_loc21_,_loc1_ + 4);
               ESP = _loc1_;
               F_avm2_casRamLength();
               _loc1_ = int(_loc1_ + 16);
               _loc7_ = eax;
               if(_loc7_ == -1)
               {
                  _loc5_ = li32(_avm2_haveWorkers_2E_4273);
                  if(_loc5_ == -1)
                  {
                     _loc5_ = int(Boolean(workerClass));
                     si32(_loc5_,_avm2_haveWorkers_2E_4273);
                  }
                  if(_loc5_ != 0)
                  {
                     _loc1_ = int(_loc1_ - 16);
                     si32(_smmapMtx,_loc1_);
                     ESP = _loc1_;
                     F_avm2_unlock();
                     _loc1_ = int(_loc1_ + 16);
                  }
                  ESP = _loc1_;
                  F___error();
                  _loc21_ = int(eax);
                  si32(12,_loc21_);
                  _loc19_ = -1;
                  break;
               }
               if(_loc7_ == _loc15_)
               {
                  if(_loc6_ != 0)
                  {
                     _loc3_ = li32(_mmapBlockCount);
                     do
                     {
                        _loc21_ = _loc3_ & 31;
                        _loc21_ = 1 << _loc21_;
                        _loc20_ = _loc3_ & -32;
                        _loc20_ = int(_loc20_ >>> 3);
                        _loc20_ = int(_mmapBlockAllocBitSet + _loc20_);
                        _loc22_ = li32(_loc20_);
                        _loc21_ = _loc21_ | _loc22_;
                        si32(_loc21_,_loc20_);
                        _loc3_ = int(_loc3_ + 1);
                        _loc6_ = _loc6_ + -1;
                     }
                     while(_loc6_ != 0);
                     
                  }
                  si32(_loc8_,_mmapBlockCount);
                  _loc12_ = _loc16_;
                  §§goto(addr634);
               }
               else
               {
                  continue;
               }
            }
         }
      }
      eax = _loc19_;
      _loc1_ = _loc2_;
      ESP = _loc1_;
   }
}
