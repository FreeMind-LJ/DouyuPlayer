package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.LCPI194_0;
   import avm2.intrinsics.memory.si32;
   
   public function F_erf() : void
   {
      var _loc5_:* = 0;
      var _loc7_:* = NaN;
      var _loc14_:* = 0;
      var _loc12_:* = 0;
      var _loc13_:Number = NaN;
      var _loc9_:int = 0;
      var _loc2_:Number = NaN;
      var _loc1_:Number = NaN;
      var _loc8_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ = int(_loc3_ - 32);
      _loc7_ = lf64(_loc5_);
      sf64(_loc7_,_loc5_ - 8);
      var _loc4_:* = int(_loc5_ - 8);
      _loc4_ = _loc4_ | 4;
      _loc14_ = li32(_loc4_);
      _loc12_ = _loc14_ & 2147483647;
      if(uint(_loc12_) >= 2146435072)
      {
         var _loc10_:* = int(_loc14_ >>> 30);
         _loc10_ = int(1 - (_loc10_ & 2));
         var _loc11_:Number = _loc10_;
         _loc8_ = Number(_loc11_ + Number(1 / _loc7_));
      }
      else if(uint(_loc12_) <= 1072365567)
      {
         if(uint(_loc12_) <= 1043333119)
         {
            if(uint(_loc12_) <= 8388607)
            {
               var _loc6_:* = Number(_loc7_ * 8);
               _loc6_ = Number(_loc6_ + Number(_loc7_ * 1.0270333367641));
               _loc8_ = Number(_loc6_ * 0.125);
            }
            else
            {
               _loc6_ = Number(_loc7_ * 0.128379167095513);
               _loc8_ = Number(_loc6_ + _loc7_);
            }
         }
         else
         {
            _loc6_ = Number(_loc7_ * _loc7_);
            _loc11_ = _loc6_ * -0.0000237630166566502;
            _loc11_ = _loc11_ + -0.00577027029648944;
            _loc11_ = _loc11_ * _loc6_;
            _loc11_ = _loc11_ + -0.0284817495755985;
            _loc11_ = _loc11_ * _loc6_;
            _loc11_ = _loc11_ + -0.325042107247002;
            _loc11_ = _loc11_ * _loc6_;
            var _loc15_:Number = _loc6_ * -3.96022827877537e-6;
            _loc15_ = _loc15_ + 0.000132494738004322;
            _loc15_ = _loc15_ * _loc6_;
            _loc15_ = _loc15_ + 0.00508130628187577;
            _loc15_ = _loc15_ * _loc6_;
            _loc15_ = _loc15_ + 0.0650222499887673;
            _loc15_ = _loc15_ * _loc6_;
            _loc15_ = _loc15_ + 0.397917223959155;
            _loc6_ = Number(_loc15_ * _loc6_);
            _loc6_ = Number((Number(_loc11_ + 0.128379167095513)) / (Number(_loc6_ + 1)));
            _loc6_ = Number(_loc6_ * _loc7_);
            _loc8_ = Number(_loc6_ + _loc7_);
         }
      }
      else if(uint(_loc12_) <= 1072955391)
      {
         _loc6_ = Number(Math.abs(_loc7_));
         _loc6_ = Number(_loc6_ + -1);
         _loc11_ = _loc6_ * 0.0119844998467991;
         _loc11_ = _loc11_ + 0.0136370839120291;
         _loc11_ = _loc11_ * _loc6_;
         _loc11_ = _loc11_ + 0.126171219808762;
         _loc11_ = _loc11_ * _loc6_;
         _loc11_ = _loc11_ + 0.0718286544141963;
         _loc11_ = _loc11_ * _loc6_;
         _loc11_ = _loc11_ + 0.540397917702171;
         _loc11_ = _loc11_ * _loc6_;
         _loc11_ = _loc11_ + 0.106420880400844;
         _loc11_ = _loc11_ * _loc6_;
         _loc15_ = _loc6_ * -0.00216637559486879;
         _loc15_ = _loc15_ + 0.0354783043256182;
         _loc15_ = _loc15_ * _loc6_;
         _loc15_ = _loc15_ + -0.110894694282397;
         _loc15_ = _loc15_ * _loc6_;
         _loc15_ = _loc15_ + 0.318346619901162;
         _loc15_ = _loc15_ * _loc6_;
         _loc15_ = _loc15_ + -0.372207876035701;
         _loc15_ = _loc15_ * _loc6_;
         _loc15_ = _loc15_ + 0.414856118683748;
         _loc6_ = Number(_loc15_ * _loc6_);
         _loc6_ = Number(_loc6_ + -0.00236211856075266);
         _loc7_ = Number(_loc6_ / (Number(_loc11_ + 1)));
         if(_loc14_ >= 0)
         {
            _loc8_ = Number(_loc7_ + 0.845062911510468);
         }
         else
         {
            _loc8_ = Number(-0.845062911510468 - _loc7_);
         }
      }
      else if(uint(_loc12_) >= 1075314688)
      {
         _loc9_ = 1;
         if(_loc14_ <= -1)
         {
            _loc9_ = 0;
         }
         _loc14_ = 8;
         if(_loc9_ == 0)
         {
            _loc14_ = 0;
         }
         _loc4_ = int(LCPI194_0 + _loc14_);
         _loc8_ = lf64(_loc4_);
      }
      else
      {
         _loc7_ = Number(Math.abs(_loc7_));
         _loc13_ = 1 / (Number(_loc7_ * _loc7_));
         if(uint(_loc12_) <= 1074191213)
         {
            _loc6_ = Number(_loc13_ * -0.0604244152148581);
            _loc6_ = Number(_loc6_ + 6.57024977031928);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc6_ = Number(_loc6_ + 108.635005541779);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc6_ = Number(_loc6_ + 429.008140027568);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc6_ = Number(_loc6_ + 645.387271733268);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc6_ = Number(_loc6_ + 434.565877475229);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc6_ = Number(_loc6_ + 137.657754143519);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc1_ = _loc6_ + 19.6512716674393;
            _loc6_ = Number(_loc13_ * -9.81432934416915);
            _loc6_ = Number(_loc6_ + -81.2874355063066);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc6_ = Number(_loc6_ + -184.605092906711);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc6_ = Number(_loc6_ + -162.396669462573);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc6_ = Number(_loc6_ + -62.375332450326);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc6_ = Number(_loc6_ + -10.5586262253233);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc6_ = Number(_loc6_ + -0.693858572707182);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc2_ = _loc6_ + -0.00986494403484715;
         }
         else
         {
            _loc6_ = Number(_loc13_ * -22.4409524465858);
            _loc6_ = Number(_loc6_ + 474.528541206955);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc6_ = Number(_loc6_ + 2553.05040643316);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc6_ = Number(_loc6_ + 3199.8582195086);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc6_ = Number(_loc6_ + 1536.72958608444);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc6_ = Number(_loc6_ + 325.792512996574);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc1_ = _loc6_ + 30.3380607434825;
            _loc6_ = Number(_loc13_ * -483.519191608651);
            _loc6_ = Number(_loc6_ + -1025.09513161108);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc6_ = Number(_loc6_ + -637.56644336839);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc6_ = Number(_loc6_ + -160.636384855822);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc6_ = Number(_loc6_ + -17.7579549177548);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc6_ = Number(_loc6_ + -0.799283237680523);
            _loc6_ = Number(_loc6_ * _loc13_);
            _loc2_ = _loc6_ + -0.0098649429247001;
         }
         sf64(_loc7_,_loc5_ - 16);
         _loc4_ = int(_loc5_ - 24);
         _loc4_ = _loc4_ | 4;
         _loc10_ = int(_loc5_ - 16);
         _loc10_ = _loc10_ | 4;
         _loc10_ = li32(_loc10_);
         si32(_loc10_,_loc4_);
         si32(0,_loc5_ - 24);
         _loc3_ = int(_loc3_ - 16);
         _loc6_ = lf64(_loc5_ - 24);
         _loc11_ = _loc6_ * _loc6_;
         _loc11_ = -0.5625 - _loc11_;
         sf64(_loc11_,_loc3_);
         _loc11_ = _loc6_ + _loc7_;
         _loc6_ = Number(_loc6_ - _loc7_);
         _loc6_ = Number(_loc6_ * _loc11_);
         _loc11_ = _loc1_ * _loc13_;
         _loc11_ = _loc11_ + 1;
         _loc11_ = _loc2_ / _loc11_;
         _loc11_ = _loc6_ + _loc11_;
         ESP = _loc3_;
         F_exp();
         _loc3_ = int(_loc3_ + 16);
         _loc6_ = Number(st0);
         _loc3_ = int(_loc3_ - 16);
         sf64(_loc11_,_loc3_);
         ESP = _loc3_;
         F_exp();
         _loc3_ = int(_loc3_ + 16);
         _loc11_ = st0;
         _loc6_ = Number(_loc6_ * _loc11_);
         _loc7_ = Number(_loc6_ / _loc7_);
         if(_loc14_ >= 0)
         {
            _loc8_ = Number(1 - _loc7_);
         }
         else
         {
            _loc8_ = Number(_loc7_ + -1);
         }
      }
      st0 = _loc8_;
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
