package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.LCPI196_0;
   
   public function F_erff() : void
   {
      var _loc7_:* = 0;
      var _loc2_:* = NaN;
      var _loc6_:* = 0;
      var _loc23_:* = 0;
      var _loc9_:* = NaN;
      var _loc19_:* = NaN;
      var _loc1_:* = NaN;
      var _loc16_:int = 0;
      var _loc11_:* = NaN;
      var _loc8_:* = NaN;
      var _loc21_:* = NaN;
      var _loc5_:* = int(ESP);
      _loc7_ = _loc5_;
      _loc5_ = int(_loc5_ - 16);
      _loc2_ = lf32(_loc7_);
      sf32(_loc2_,_loc7_ - 4);
      _loc6_ = li32(_loc7_ - 4);
      _loc23_ = _loc6_ & 2147483647;
      if(uint(_loc23_) >= 2139095040)
      {
         var _loc4_:* = 1;
         var _loc10_:* = _loc4_;
         var _loc12_:* = Number(_loc10_ / _loc2_);
         var _loc20_:int = _loc6_ >>> 30;
         _loc20_ = 1 - (_loc20_ & 2);
         _loc4_ = Number(_loc20_);
         _loc10_ = _loc4_;
         _loc12_ = Number(_loc10_ + _loc12_);
         _loc21_ = _loc12_;
      }
      else if(uint(_loc23_) <= 1062731775)
      {
         if(uint(_loc23_) <= 830472191)
         {
            if(uint(_loc23_) <= 67108863)
            {
               _loc4_ = 1.02703332901001;
               _loc10_ = _loc4_;
               _loc10_ = Number(_loc2_ * _loc10_);
               _loc4_ = _loc10_;
               _loc10_ = _loc4_;
               var _loc24_:* = 8;
               _loc12_ = Number(_loc2_ * _loc24_);
               _loc12_ = _loc12_;
               _loc12_ = Number(_loc12_ + _loc10_);
               _loc4_ = 0.125;
               _loc12_ = Number(_loc12_ * _loc4_);
               _loc21_ = _loc12_;
            }
            else
            {
               _loc12_ = _loc2_;
               _loc4_ = 0.128379166126251;
               _loc10_ = Number(_loc12_ * _loc4_);
               _loc4_ = _loc10_;
               _loc10_ = _loc4_;
               _loc12_ = Number(_loc10_ + _loc12_);
               _loc21_ = _loc12_;
            }
         }
         else
         {
            _loc12_ = _loc2_;
            _loc10_ = Number(_loc12_ * _loc12_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            var _loc18_:* = Number(_loc10_ * -0.0000237630174524384);
            _loc24_ = _loc18_;
            var _loc15_:* = -0.00577027024701238;
            _loc18_ = Number(_loc24_ + _loc15_);
            _loc24_ = _loc18_;
            _loc18_ = _loc24_;
            _loc18_ = Number(_loc18_ * _loc10_);
            _loc24_ = _loc18_;
            _loc15_ = -0.028481749817729;
            _loc18_ = Number(_loc24_ + _loc15_);
            _loc24_ = _loc18_;
            _loc18_ = _loc24_;
            _loc18_ = Number(_loc18_ * _loc10_);
            _loc24_ = _loc18_;
            _loc15_ = -0.325042098760605;
            _loc18_ = Number(_loc24_ + _loc15_);
            _loc24_ = _loc18_;
            _loc18_ = _loc24_;
            _loc18_ = Number(_loc18_ * _loc10_);
            _loc24_ = _loc18_;
            _loc15_ = 0.128379166126251;
            _loc18_ = Number(_loc24_ + _loc15_);
            _loc24_ = _loc18_;
            _loc15_ = -3.96022824133979e-6;
            var _loc14_:* = Number(_loc10_ * _loc15_);
            _loc15_ = _loc14_;
            var _loc17_:* = 0.000132494737044908;
            _loc14_ = Number(_loc15_ + _loc17_);
            _loc15_ = _loc14_;
            _loc14_ = _loc15_;
            _loc14_ = Number(_loc14_ * _loc10_);
            _loc15_ = _loc14_;
            _loc17_ = 0.00508130621165037;
            _loc14_ = Number(_loc15_ + _loc17_);
            _loc15_ = _loc14_;
            _loc14_ = _loc15_;
            _loc14_ = Number(_loc14_ * _loc10_);
            _loc15_ = _loc14_;
            _loc17_ = 0.0650222525000572;
            _loc14_ = Number(_loc15_ + _loc17_);
            _loc15_ = _loc14_;
            _loc14_ = _loc15_;
            _loc14_ = Number(_loc14_ * _loc10_);
            _loc15_ = _loc14_;
            _loc17_ = 0.397917211055756;
            _loc14_ = Number(_loc15_ + _loc17_);
            _loc15_ = _loc14_;
            _loc14_ = _loc15_;
            _loc10_ = Number(_loc14_ * _loc10_);
            _loc4_ = _loc10_;
            _loc15_ = 1;
            _loc10_ = Number(_loc4_ + _loc15_);
            _loc4_ = _loc10_;
            _loc10_ = Number(_loc24_ / _loc4_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc12_ = Number(_loc10_ + _loc12_);
            _loc21_ = _loc12_;
         }
      }
      else if(uint(_loc23_) <= 1067450367)
      {
         si32(_loc23_,_loc7_ - 16);
         _loc10_ = lf32(_loc7_ - 16);
         _loc12_ = Number(_loc10_ + -1);
         _loc12_ = _loc12_;
         _loc4_ = 0.0119845001026988;
         _loc10_ = Number(_loc12_ * _loc4_);
         _loc4_ = _loc10_;
         _loc24_ = 0.0136370835825801;
         _loc10_ = Number(_loc4_ + _loc24_);
         _loc4_ = _loc10_;
         _loc10_ = _loc4_;
         _loc10_ = Number(_loc10_ * _loc12_);
         _loc4_ = _loc10_;
         _loc24_ = 0.126171216368675;
         _loc10_ = Number(_loc4_ + _loc24_);
         _loc4_ = _loc10_;
         _loc10_ = _loc4_;
         _loc10_ = Number(_loc10_ * _loc12_);
         _loc4_ = _loc10_;
         _loc24_ = 0.071828655898571;
         _loc10_ = Number(_loc4_ + _loc24_);
         _loc4_ = _loc10_;
         _loc10_ = _loc4_;
         _loc10_ = Number(_loc10_ * _loc12_);
         _loc4_ = _loc10_;
         _loc24_ = 0.540397942066193;
         _loc10_ = Number(_loc4_ + _loc24_);
         _loc4_ = _loc10_;
         _loc10_ = _loc4_;
         _loc10_ = Number(_loc10_ * _loc12_);
         _loc4_ = _loc10_;
         _loc24_ = 0.106420882046223;
         _loc10_ = Number(_loc4_ + _loc24_);
         _loc4_ = _loc10_;
         _loc10_ = _loc4_;
         _loc10_ = Number(_loc10_ * _loc12_);
         _loc4_ = _loc10_;
         _loc24_ = 1;
         _loc10_ = Number(_loc4_ + _loc24_);
         _loc4_ = _loc10_;
         _loc24_ = -0.00216637551784515;
         _loc18_ = Number(_loc12_ * _loc24_);
         _loc24_ = _loc18_;
         _loc15_ = 0.0354783050715923;
         _loc18_ = Number(_loc24_ + _loc15_);
         _loc24_ = _loc18_;
         _loc18_ = _loc24_;
         _loc18_ = Number(_loc18_ * _loc12_);
         _loc24_ = _loc18_;
         _loc15_ = -0.110894694924355;
         _loc18_ = Number(_loc24_ + _loc15_);
         _loc24_ = _loc18_;
         _loc18_ = _loc24_;
         _loc18_ = Number(_loc18_ * _loc12_);
         _loc24_ = _loc18_;
         _loc15_ = 0.318346619606018;
         _loc18_ = Number(_loc24_ + _loc15_);
         _loc24_ = _loc18_;
         _loc18_ = _loc24_;
         _loc18_ = Number(_loc18_ * _loc12_);
         _loc24_ = _loc18_;
         _loc15_ = -0.372207880020142;
         _loc18_ = Number(_loc24_ + _loc15_);
         _loc24_ = _loc18_;
         _loc18_ = _loc24_;
         _loc18_ = Number(_loc18_ * _loc12_);
         _loc24_ = _loc18_;
         _loc15_ = 0.414856106042862;
         _loc18_ = Number(_loc24_ + _loc15_);
         _loc24_ = _loc18_;
         _loc18_ = _loc24_;
         _loc12_ = Number(_loc18_ * _loc12_);
         _loc24_ = -0.0023621185682714;
         _loc12_ = Number(_loc12_ + _loc24_);
         _loc12_ = _loc12_;
         _loc12_ = Number(_loc12_ / _loc4_);
         _loc2_ = _loc12_;
         if(_loc6_ >= 0)
         {
            _loc4_ = 0.845062911510468;
            _loc12_ = Number(_loc2_ + _loc4_);
            _loc21_ = _loc12_;
         }
         else
         {
            _loc4_ = -0.845062911510468;
            _loc10_ = _loc4_;
            _loc12_ = Number(_loc10_ - _loc2_);
            _loc21_ = _loc12_;
         }
      }
      else if(uint(_loc23_) >= 1086324736)
      {
         _loc16_ = 1;
         if(_loc6_ <= -1)
         {
            _loc16_ = 0;
         }
         _loc6_ = 4;
         if(_loc16_ == 0)
         {
            _loc6_ = 0;
         }
         var _loc13_:* = int(LCPI196_0 + _loc6_);
         _loc21_ = lf32(_loc13_);
      }
      else
      {
         si32(_loc23_,_loc7_ - 8);
         _loc19_ = 1;
         _loc1_ = lf32(_loc7_ - 8);
         _loc12_ = Number(_loc1_ * _loc1_);
         _loc12_ = Number(_loc19_ / _loc12_);
         _loc9_ = _loc12_;
         if(uint(_loc23_) <= 1077336941)
         {
            _loc12_ = _loc9_;
            _loc4_ = -0.0604244135320187;
            _loc10_ = Number(_loc12_ * _loc4_);
            _loc4_ = _loc10_;
            _loc24_ = 6.57024955749512;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = 108.63500213623;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = 429.008148193359;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = 645.387268066406;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = 434.565887451172;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = 137.657760620117;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = 19.6512718200684;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc11_ = _loc10_;
            _loc4_ = -9.81432914733887;
            _loc10_ = Number(_loc12_ * _loc4_);
            _loc4_ = _loc10_;
            _loc24_ = -81.2874374389648;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = -184.605087280273;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = -162.396667480469;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = -62.3753318786621;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = -10.5586261749268;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = -0.693858563899994;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc12_ = Number(_loc10_ * _loc12_);
            _loc4_ = -0.00986494403332472;
            _loc12_ = Number(_loc12_ + _loc4_);
            _loc8_ = _loc12_;
         }
         else
         {
            _loc12_ = _loc9_;
            _loc4_ = -22.4409523010254;
            _loc10_ = Number(_loc12_ * _loc4_);
            _loc4_ = _loc10_;
            _loc24_ = 474.528533935547;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = 2553.05029296875;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = 3199.85815429688;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = 1536.72961425781;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = 325.792510986328;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = 30.3380603790283;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc11_ = _loc10_;
            _loc4_ = -483.519195556641;
            _loc10_ = Number(_loc12_ * _loc4_);
            _loc4_ = _loc10_;
            _loc24_ = -1025.09509277344;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = -637.566467285156;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = -160.636383056641;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = -17.7579555511475;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ * _loc12_);
            _loc4_ = _loc10_;
            _loc24_ = -0.799283266067505;
            _loc10_ = Number(_loc4_ + _loc24_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc12_ = Number(_loc10_ * _loc12_);
            _loc4_ = -0.00986494310200214;
            _loc12_ = Number(_loc12_ + _loc4_);
            _loc8_ = _loc12_;
         }
         _loc13_ = _loc6_ & 2147479552;
         si32(_loc13_,_loc7_ - 12);
         var _loc3_:* = -0.5625;
         _loc10_ = _loc3_;
         _loc12_ = lf32(_loc7_ - 12);
         _loc18_ = Number(_loc12_ * _loc12_);
         _loc24_ = _loc18_;
         _loc18_ = _loc24_;
         _loc10_ = Number(_loc10_ - _loc18_);
         _loc5_ = int(_loc5_ - 16);
         sf32(_loc10_,_loc5_);
         _loc10_ = Number(_loc12_ + _loc1_);
         _loc4_ = _loc10_;
         _loc10_ = _loc4_;
         _loc12_ = Number(_loc12_ - _loc1_);
         _loc3_ = _loc12_;
         _loc12_ = _loc3_;
         _loc12_ = Number(_loc12_ * _loc10_);
         _loc3_ = _loc12_;
         _loc12_ = _loc3_;
         _loc10_ = _loc9_;
         _loc18_ = _loc11_;
         _loc10_ = Number(_loc18_ * _loc10_);
         _loc4_ = _loc10_;
         _loc10_ = _loc4_;
         _loc10_ = Number(_loc10_ + _loc19_);
         _loc4_ = _loc10_;
         _loc10_ = _loc4_;
         _loc18_ = _loc8_;
         _loc10_ = Number(_loc18_ / _loc10_);
         _loc4_ = _loc10_;
         _loc10_ = _loc4_;
         _loc12_ = Number(_loc12_ + _loc10_);
         ESP = _loc5_;
         F_expf();
         _loc5_ = int(_loc5_ + 16);
         _loc4_ = Number(st0);
         _loc5_ = int(_loc5_ - 16);
         sf32(_loc12_,_loc5_);
         ESP = _loc5_;
         F_expf();
         _loc12_ = _loc4_;
         _loc5_ = int(_loc5_ + 16);
         _loc4_ = Number(st0);
         _loc10_ = _loc4_;
         _loc12_ = Number(_loc12_ * _loc10_);
         _loc3_ = _loc12_;
         _loc12_ = _loc3_;
         _loc12_ = Number(_loc12_ / _loc1_);
         _loc9_ = _loc12_;
         if(_loc6_ >= 0)
         {
            _loc12_ = Number(_loc19_ - _loc9_);
            _loc21_ = _loc12_;
         }
         else
         {
            _loc4_ = -1;
            _loc12_ = Number(_loc9_ + _loc4_);
            _loc21_ = _loc12_;
         }
      }
      st0 = _loc21_;
      _loc5_ = _loc7_;
      ESP = _loc5_;
   }
}
