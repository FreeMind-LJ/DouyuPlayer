package sample.xx_hdtoa_2E_o_3A_A9D6C7BA_2D_8457_2D_420E_2D_88B8_2D_4A7C4646F1EF
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.cst8":[CModule.allocDataSect(modPkgName,".rodata.cst8",8,4),8],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",15,0),15],
         ".text":[CModule.allocTextSect(modPkgName,".text",329),329]
      };
   }
}
