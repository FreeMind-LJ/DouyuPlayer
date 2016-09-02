package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_messages_2E_o_3A_F492CD4D_2D_D224_2D_4FEA_2D_986C_2D_4ED7987E3A70.*;
   
   public function F___messages_load_locale() : void
   {
      var _loc3_:* = 0;
      var _loc4_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      si32(__messages_locale,_loc2_ + 24);
      si32(2,_loc2_ + 20);
      si32(4,_loc2_ + 16);
      si32(L__2E_str4,_loc2_ + 12);
      si32(__messages_locale_buf,_loc2_ + 8);
      si32(__messages_using_locale,_loc2_ + 4);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F___part_load_locale();
      _loc2_ = int(_loc2_ + 32);
      _loc4_ = eax;
      if(_loc4_ == 0)
      {
         if(li32(__messages_locale + 8) == 0)
         {
            si32(_empty,__messages_locale + 8);
         }
         _loc1_ = li32(__messages_locale + 12);
         if(_loc1_ == 0)
         {
            si32(_empty,__messages_locale + 12);
         }
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
