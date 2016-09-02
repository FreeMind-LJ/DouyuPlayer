package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.LCPI195_0;
   
   public function F_erfc() : void
   {
      var _loc4_:* = 0;
      var _loc6_:* = NaN;
      var _loc13_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:Number = NaN;
      var _loc3_:* = 0;
      var _loc8_:* = NaN;
      var _loc1_:Number = NaN;
      var _loc7_:int = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      _loc6_ = lf64(_loc4_);
      sf64(_loc6_,_loc4_ - 8);
      _loc3_ = int(_loc4_ - 8);
      _loc3_ = _loc3_ | 4;
      _loc13_ = li32(_loc3_);
      _loc11_ = _loc13_ & 2147483647;
      if(uint(_loc11_) >= 2146435072)
      {
         var _loc9_:* = int(_loc13_ >>> 30);
         _loc9_ = _loc9_ & 2;
         var _loc10_:Number = uint(_loc9_);
         _loc8_ = Number(_loc10_ + Number(1 / _loc6_));
      }
      else if(uint(_loc11_) <= 1072365567)
      {
         if(uint(_loc11_) <= 1013972991)
         {
            _loc8_ = Number(1 - _loc6_);
         }
         else
         {
            var _loc5_:* = Number(_loc6_ * _loc6_);
            _loc10_ = _loc5_ * -0.0000237630166566502;
            _loc10_ = _loc10_ + -0.00577027029648944;
            _loc10_ = _loc10_ * _loc5_;
            _loc10_ = _loc10_ + -0.0284817495755985;
            _loc10_ = _loc10_ * _loc5_;
            _loc10_ = _loc10_ + -0.325042107247002;
            _loc10_ = _loc10_ * _loc5_;
            var _loc14_:Number = _loc5_ * -3.96022827877537e-6;
            _loc14_ = _loc14_ + 0.000132494738004322;
            _loc14_ = _loc14_ * _loc5_;
            _loc14_ = _loc14_ + 0.00508130628187577;
            _loc14_ = _loc14_ * _loc5_;
            _loc14_ = _loc14_ + 0.0650222499887673;
            _loc14_ = _loc14_ * _loc5_;
            _loc14_ = _loc14_ + 0.397917223959155;
            _loc5_ = Number(_loc14_ * _loc5_);
            _loc5_ = Number((Number(_loc10_ + 0.128379167095513)) / (Number(_loc5_ + 1)));
            _loc12_ = _loc5_ * _loc6_;
            if(_loc13_ <= 1070596095)
            {
               _loc8_ = Number(1 - (Number(_loc12_ + _loc6_)));
            }
            else
            {
               _loc5_ = Number(_loc6_ + -0.5);
               _loc8_ = Number(0.5 - (Number(_loc5_ + _loc12_)));
            }
         }
      }
      else if(uint(_loc11_) <= 1072955391)
      {
         _loc5_ = Number(Math.abs(_loc6_));
         _loc5_ = Number(_loc5_ + -1);
         _loc10_ = _loc5_ * 0.0119844998467991;
         _loc10_ = _loc10_ + 0.0136370839120291;
         _loc10_ = _loc10_ * _loc5_;
         _loc10_ = _loc10_ + 0.126171219808762;
         _loc10_ = _loc10_ * _loc5_;
         _loc10_ = _loc10_ + 0.0718286544141963;
         _loc10_ = _loc10_ * _loc5_;
         _loc10_ = _loc10_ + 0.540397917702171;
         _loc10_ = _loc10_ * _loc5_;
         _loc10_ = _loc10_ + 0.106420880400844;
         _loc10_ = _loc10_ * _loc5_;
         _loc14_ = _loc5_ * -0.00216637559486879;
         _loc14_ = _loc14_ + 0.0354783043256182;
         _loc14_ = _loc14_ * _loc5_;
         _loc14_ = _loc14_ + -0.110894694282397;
         _loc14_ = _loc14_ * _loc5_;
         _loc14_ = _loc14_ + 0.318346619901162;
         _loc14_ = _loc14_ * _loc5_;
         _loc14_ = _loc14_ + -0.372207876035701;
         _loc14_ = _loc14_ * _loc5_;
         _loc14_ = _loc14_ + 0.414856118683748;
         _loc5_ = Number(_loc14_ * _loc5_);
         _loc5_ = Number(_loc5_ + -0.00236211856075266);
         _loc6_ = Number(_loc5_ / (Number(_loc10_ + 1)));
         if(_loc13_ >= 0)
         {
            _loc8_ = Number(0.154937088489532 - _loc6_);
         }
         else
         {
            _loc5_ = Number(_loc6_ + 0.845062911510468);
            _loc8_ = Number(_loc5_ + 1);
         }
      }
      else if(uint(_loc11_) <= 1077673983)
      {
         _loc6_ = Number(Math.abs(_loc6_));
         _loc12_ = 1 / (Number(_loc6_ * _loc6_));
         if(uint(_loc11_) <= 1074191212)
         {
            _loc5_ = Number(_loc12_ * -0.0604244152148581);
            _loc5_ = Number(_loc5_ + 6.57024977031928);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc5_ = Number(_loc5_ + 108.635005541779);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc5_ = Number(_loc5_ + 429.008140027568);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc5_ = Number(_loc5_ + 645.387271733268);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc5_ = Number(_loc5_ + 434.565877475229);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc5_ = Number(_loc5_ + 137.657754143519);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc8_ = Number(_loc5_ + 19.6512716674393);
            _loc5_ = Number(_loc12_ * -9.81432934416915);
            _loc5_ = Number(_loc5_ + -81.2874355063066);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc5_ = Number(_loc5_ + -184.605092906711);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc5_ = Number(_loc5_ + -162.396669462573);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc5_ = Number(_loc5_ + -62.375332450326);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc5_ = Number(_loc5_ + -10.5586262253233);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc5_ = Number(_loc5_ + -0.693858572707182);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc1_ = _loc5_ + -0.00986494403484715;
         }
         else
         {
            if(_loc13_ <= -1)
            {
               _loc8_ = 2;
               if(uint(_loc11_) <= 1075314687)
               {
               }
            }
            _loc5_ = Number(_loc12_ * -22.4409524465858);
            _loc5_ = Number(_loc5_ + 474.528541206955);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc5_ = Number(_loc5_ + 2553.05040643316);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc5_ = Number(_loc5_ + 3199.8582195086);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc5_ = Number(_loc5_ + 1536.72958608444);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc5_ = Number(_loc5_ + 325.792512996574);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc8_ = Number(_loc5_ + 30.3380607434825);
            _loc5_ = Number(_loc12_ * -483.519191608651);
            _loc5_ = Number(_loc5_ + -1025.09513161108);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc5_ = Number(_loc5_ + -637.56644336839);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc5_ = Number(_loc5_ + -160.636384855822);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc5_ = Number(_loc5_ + -17.7579549177548);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc5_ = Number(_loc5_ + -0.799283237680523);
            _loc5_ = Number(_loc5_ * _loc12_);
            _loc1_ = _loc5_ + -0.0098649429247001;
         }
         sf64(_loc6_,_loc4_ - 16);
         _loc3_ = int(_loc4_ - 24);
         _loc3_ = _loc3_ | 4;
         _loc9_ = int(_loc4_ - 16);
         _loc9_ = _loc9_ | 4;
         _loc9_ = li32(_loc9_);
         si32(_loc9_,_loc3_);
         si32(0,_loc4_ - 24);
         _loc2_ = int(_loc2_ - 16);
         _loc5_ = lf64(_loc4_ - 24);
         _loc10_ = _loc5_ * _loc5_;
         _loc10_ = -0.5625 - _loc10_;
         sf64(_loc10_,_loc2_);
         _loc10_ = _loc5_ + _loc6_;
         _loc5_ = Number(_loc5_ - _loc6_);
         _loc5_ = Number(_loc5_ * _loc10_);
         _loc10_ = _loc8_ * _loc12_;
         _loc10_ = _loc10_ + 1;
         _loc10_ = _loc1_ / _loc10_;
         _loc10_ = _loc5_ + _loc10_;
         ESP = _loc2_;
         F_exp();
         _loc2_ = int(_loc2_ + 16);
         _loc5_ = Number(st0);
         _loc2_ = int(_loc2_ - 16);
         sf64(_loc10_,_loc2_);
         ESP = _loc2_;
         F_exp();
         _loc2_ = int(_loc2_ + 16);
         _loc10_ = st0;
         _loc5_ = Number(_loc5_ * _loc10_);
         _loc8_ = Number(_loc5_ / _loc6_);
         if(_loc13_ <= 0)
         {
            _loc8_ = Number(2 - _loc8_);
         }
      }
      else
      {
         _loc7_ = 1;
         if(_loc13_ <= 0)
         {
            _loc7_ = 0;
         }
         _loc13_ = 8;
         if(_loc7_ == 0)
         {
            _loc13_ = 0;
         }
         _loc3_ = int(LCPI195_0 + _loc13_);
         _loc8_ = lf64(_loc3_);
      }
      st0 = _loc8_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
