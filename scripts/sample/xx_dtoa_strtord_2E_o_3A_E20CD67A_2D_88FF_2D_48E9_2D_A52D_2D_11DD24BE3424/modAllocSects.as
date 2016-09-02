package sample.xx_dtoa_strtord_2E_o_3A_E20CD67A_2D_88FF_2D_48E9_2D_A52D_2D_11DD24BE3424
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".data":[CModule.allocDataSect(modPkgName,".data",20,16),20],
         ".text":[CModule.allocTextSect(modPkgName,".text",319),319]
      };
   }
}
