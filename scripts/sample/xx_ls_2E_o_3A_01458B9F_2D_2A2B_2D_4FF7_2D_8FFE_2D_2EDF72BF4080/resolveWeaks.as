package sample.xx_ls_2E_o_3A_01458B9F_2D_2A2B_2D_4FF7_2D_8FFE_2D_2EDF72BF4080
{
   import sample.xx.___libc_allocate_tls;
   import sample.xx.F___libc_allocate_tls;
   import sample.xx.___libc_free_tls;
   import sample.xx.F___libc_free_tls;
   import sample.xx.____libc_tls_get_addr;
   import sample.xx.F____libc_tls_get_addr;
   import sample.xx.___libc_tls_get_addr;
   import sample.xx.F___libc_tls_get_addr;
   
   public function resolveWeaks() : Boolean
   {
      var _loc2_:Object = {
         1:1,
         "__rtld_allocate_tls":___libc_allocate_tls,
         "F__rtld_allocate_tls":F___libc_allocate_tls,
         "__rtld_free_tls":___libc_free_tls,
         "F__rtld_free_tls":F___libc_free_tls,
         "____tls_get_addr":____libc_tls_get_addr,
         "F____tls_get_addr":F____libc_tls_get_addr,
         "___tls_get_addr":___libc_tls_get_addr,
         "F___tls_get_addr":F___libc_tls_get_addr
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
