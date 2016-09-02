package sample.xx_printf_time_2E_o_3A_E624CC77_2D_3DE7_2D_4B86_2D_B31D_2D_F6413E3D7DB7
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",42,0),42],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",143,16),143],
         ".text":[CModule.allocTextSect(modPkgName,".text",498),498]
      };
   }
}
