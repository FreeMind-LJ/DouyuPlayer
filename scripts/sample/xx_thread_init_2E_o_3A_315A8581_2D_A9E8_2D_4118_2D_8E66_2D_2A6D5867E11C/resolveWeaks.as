package sample.xx_thread_init_2E_o_3A_315A8581_2D_A9E8_2D_4118_2D_8E66_2D_2A6D5867E11C
{
   import sample.xx.__thread_init_stub;
   import sample.xx.F__thread_init_stub;
   import sample.xx.__thread_autoinit_dummy_decl_stub;
   
   public function resolveWeaks() : Boolean
   {
      var _loc2_:Object = {
         1:1,
         "__thread_init":__thread_init_stub,
         "F__thread_init":F__thread_init_stub,
         "__thread_autoinit_dummy_decl":__thread_autoinit_dummy_decl_stub
      };
      var _loc4_:int = 0;
      var _loc3_:* = _loc2_;
      while(§§hasnext(_loc2_,_loc4_))
      {
         if(!(§§nextvalue(_loc4_,_loc3_)))
         {
            return false;
         }
      }
      modWeaks = _loc2_;
      return true;
   }
}
