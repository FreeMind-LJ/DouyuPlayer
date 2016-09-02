package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_etpagesizes_2E_o_3A_94557115_2D_6028_2D_4C7A_2D_A482_2D_8F0E37EB546E.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_getpagesizes() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_ + 4);
      if(_loc1_ >= 0)
      {
         _loc7_ = li32(_loc3_);
         if(_loc1_ >= 1)
         {
            if(_loc7_ == 0)
            {
            }
            addr230:
            eax = _loc5_;
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
         }
         _loc4_ = li32(_nops_2E_1562);
         if(_loc4_ == 0)
         {
            si32(8,_loc3_ - 4);
            _loc2_ = int(_loc2_ - 32);
            si32(0,_loc2_ + 16);
            si32(0,_loc2_ + 12);
            var _loc6_:* = int(_loc3_ - 4);
            si32(_loc6_,_loc2_ + 8);
            si32(_ps_2E_1561,_loc2_ + 4);
            si32(L__2E_str,_loc2_);
            ESP = _loc2_;
            F_sysctlbyname();
            _loc5_ = -1;
            _loc2_ = int(_loc2_ + 32);
            _loc6_ = int(eax);
            if(_loc6_ != -1)
            {
               _loc6_ = li32(_loc3_ - 4);
               _loc5_ = int(_loc6_ >>> 2);
               while(true)
               {
                  _loc4_ = _loc5_;
                  if(_loc4_ >= 1)
                  {
                     _loc6_ = int(_ps_2E_1561 + (_loc4_ << 2));
                     _loc5_ = int(_loc4_ + -1);
                     if(li32(_loc6_ - 4) != 0)
                     {
                        break;
                     }
                     continue;
                  }
                  break;
               }
               si32(_loc4_,_nops_2E_1562);
            }
            §§goto(addr230);
         }
         _loc5_ = _loc4_;
         if(_loc7_ != 0)
         {
            _loc5_ = _loc4_;
            if(_loc4_ >= _loc1_)
            {
               _loc5_ = _loc1_;
            }
            if(_loc5_ >= 1)
            {
               _loc1_ = _loc1_ ^ -1;
               _loc4_ = _loc4_ ^ -1;
               if(_loc4_ <= _loc1_)
               {
                  _loc4_ = _loc1_;
               }
               _loc4_ = _loc4_ ^ -1;
               _loc1_ = int(_ps_2E_1561);
               do
               {
                  _loc6_ = li32(_loc1_);
                  si32(_loc6_,_loc7_);
                  _loc1_ = int(_loc1_ + 4);
                  _loc7_ = int(_loc7_ + 4);
                  _loc4_ = int(_loc4_ + -1);
               }
               while(_loc4_ != 0);
               
            }
         }
         §§goto(addr230);
      }
      ESP = _loc2_;
      F___error();
      _loc6_ = int(eax);
      si32(22,_loc6_);
      _loc5_ = -1;
      §§goto(addr230);
   }
}
