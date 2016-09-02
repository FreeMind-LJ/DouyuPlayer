package sample.xx_rrno_2E_o_3A_0546C80D_2D_892E_2D_44AB_2D_87BA_2D_C6F577F5B8FF
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {".bss":[CModule.allocDataSect(modPkgName,".bss",4,4),4]};
   }
}
