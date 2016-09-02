package sample.xx_bk_2E_o_3A_FEE4875C_2D_4595_2D_4777_2D_8C0D_2D_4474339A561F
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",1,0),1],
         ".text":[CModule.allocTextSect(modPkgName,".text",344),344]
      };
   }
}
