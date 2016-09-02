package sample.xx_dtoa_dtoa_2E_o_3A_E7BEAD12_2D_6513_2D_4124_2D_9C98_2D_0C9995C9CE6E
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",15,0),15],
         ".text":[CModule.allocTextSect(modPkgName,".text",1547),1547]
      };
   }
}
