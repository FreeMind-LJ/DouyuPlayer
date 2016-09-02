package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc5_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      _loc9_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc9_ + 4);
      si32(0,_loc9_ + 8);
      si32(0,_loc9_ + 12);
      si32(0,_loc9_);
      _loc8_ = li32(_loc3_ + 12);
      var _loc7_:* = li32(_loc3_);
      if(_loc7_ != 0)
      {
         si32(_loc9_,_loc1_ + 8);
         if(_loc1_ == _loc8_)
         {
            si32(_loc9_,_loc8_ + 4);
            si32(_loc9_,_loc8_ + 12);
         }
         else
         {
            _loc7_ = li32(_loc8_ + 8);
            if(_loc7_ == _loc1_)
            {
               si32(_loc9_,_loc8_ + 8);
            }
         }
      }
      else
      {
         si32(_loc9_,_loc1_ + 12);
         _loc7_ = li32(_loc8_ + 12);
         if(_loc7_ == _loc1_)
         {
            si32(_loc9_,_loc8_ + 12);
         }
      }
      while(true)
      {
         _loc1_ = li32(_loc8_ + 4);
         if(_loc1_ != _loc9_)
         {
            _loc6_ = li32(_loc9_ + 4);
            _loc7_ = li32(_loc6_);
            if(_loc7_ != 0)
            {
               break;
            }
            _loc1_ = li32(_loc6_ + 4);
            _loc5_ = li32(_loc1_ + 8);
            if(_loc6_ == _loc5_)
            {
               _loc5_ = li32(_loc1_ + 12);
               if(_loc5_ != 0)
               {
                  _loc7_ = li32(_loc5_);
                  if(_loc7_ == 0)
                  {
                     si32(1,_loc6_);
                     si32(1,_loc5_);
                     si32(0,_loc1_);
                     _loc9_ = _loc1_;
                     continue;
                  }
               }
               _loc5_ = li32(_loc6_ + 12);
               _loc4_ = _loc6_;
               if(_loc5_ == _loc9_)
               {
                  _loc7_ = li32(_loc5_ + 8);
                  si32(_loc7_,_loc6_ + 12);
                  _loc9_ = li32(_loc5_ + 8);
                  _loc4_ = _loc1_;
                  if(_loc9_ != 0)
                  {
                     si32(_loc6_,_loc9_ + 4);
                     _loc4_ = li32(_loc6_ + 4);
                  }
                  si32(_loc4_,_loc5_ + 4);
                  _loc7_ = li32(_loc8_ + 4);
                  if(_loc7_ == _loc6_)
                  {
                     si32(_loc5_,_loc8_ + 4);
                  }
                  else
                  {
                     _loc9_ = li32(_loc6_ + 4);
                     _loc7_ = li32(_loc9_ + 8);
                     if(_loc7_ == _loc6_)
                     {
                        si32(_loc5_,_loc9_ + 8);
                     }
                     else
                     {
                        si32(_loc5_,_loc9_ + 12);
                     }
                  }
                  si32(_loc6_,_loc5_ + 8);
                  si32(_loc5_,_loc6_ + 4);
                  _loc4_ = _loc5_;
                  _loc9_ = _loc6_;
               }
               si32(1,_loc4_);
               si32(0,_loc1_);
               _loc6_ = li32(_loc1_ + 8);
               _loc7_ = li32(_loc6_ + 12);
               si32(_loc7_,_loc1_ + 8);
               _loc5_ = li32(_loc6_ + 12);
               if(_loc5_ != 0)
               {
                  si32(_loc1_,_loc5_ + 4);
               }
               _loc7_ = li32(_loc1_ + 4);
               si32(_loc7_,_loc6_ + 4);
               _loc7_ = li32(_loc8_ + 4);
               if(_loc7_ == _loc1_)
               {
                  si32(_loc6_,_loc8_ + 4);
               }
               else
               {
                  _loc5_ = li32(_loc1_ + 4);
                  _loc7_ = li32(_loc5_ + 12);
                  if(_loc7_ == _loc1_)
                  {
                     si32(_loc6_,_loc5_ + 12);
                  }
                  else
                  {
                     si32(_loc6_,_loc5_ + 8);
                  }
               }
               si32(_loc1_,_loc6_ + 12);
               si32(_loc6_,_loc1_ + 4);
            }
            else
            {
               if(_loc5_ != 0)
               {
                  _loc7_ = li32(_loc5_);
                  if(_loc7_ == 0)
                  {
                     si32(1,_loc6_);
                     si32(1,_loc5_);
                     si32(0,_loc1_);
                     _loc9_ = _loc1_;
                     continue;
                  }
               }
               _loc5_ = li32(_loc6_ + 8);
               _loc4_ = _loc6_;
               if(_loc5_ == _loc9_)
               {
                  _loc7_ = li32(_loc5_ + 12);
                  si32(_loc7_,_loc6_ + 8);
                  _loc4_ = li32(_loc5_ + 12);
                  _loc9_ = _loc1_;
                  if(_loc4_ != 0)
                  {
                     si32(_loc6_,_loc4_ + 4);
                     _loc9_ = li32(_loc6_ + 4);
                  }
                  si32(_loc9_,_loc5_ + 4);
                  _loc7_ = li32(_loc8_ + 4);
                  if(_loc7_ == _loc6_)
                  {
                     si32(_loc5_,_loc8_ + 4);
                  }
                  else
                  {
                     _loc9_ = li32(_loc6_ + 4);
                     _loc7_ = li32(_loc9_ + 12);
                     if(_loc7_ == _loc6_)
                     {
                        si32(_loc5_,_loc9_ + 12);
                     }
                     else
                     {
                        si32(_loc5_,_loc9_ + 8);
                     }
                  }
                  si32(_loc6_,_loc5_ + 12);
                  si32(_loc5_,_loc6_ + 4);
                  _loc4_ = _loc5_;
                  _loc9_ = _loc6_;
               }
               si32(1,_loc4_);
               si32(0,_loc1_);
               _loc6_ = li32(_loc1_ + 12);
               _loc7_ = li32(_loc6_ + 8);
               si32(_loc7_,_loc1_ + 12);
               _loc5_ = li32(_loc6_ + 8);
               if(_loc5_ != 0)
               {
                  si32(_loc1_,_loc5_ + 4);
               }
               _loc7_ = li32(_loc1_ + 4);
               si32(_loc7_,_loc6_ + 4);
               _loc7_ = li32(_loc8_ + 4);
               if(_loc7_ == _loc1_)
               {
                  si32(_loc6_,_loc8_ + 4);
               }
               else
               {
                  _loc5_ = li32(_loc1_ + 4);
                  _loc7_ = li32(_loc5_ + 8);
                  if(_loc7_ == _loc1_)
                  {
                     si32(_loc6_,_loc5_ + 8);
                  }
                  else
                  {
                     si32(_loc6_,_loc5_ + 12);
                  }
               }
               si32(_loc1_,_loc6_ + 8);
               si32(_loc6_,_loc1_ + 4);
            }
            continue;
         }
         break;
      }
      si32(1,_loc1_);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
