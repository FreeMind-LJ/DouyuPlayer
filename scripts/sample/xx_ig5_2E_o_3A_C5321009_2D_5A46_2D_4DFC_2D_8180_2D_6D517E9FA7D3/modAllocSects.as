package sample.xx_ig5_2E_o_3A_C5321009_2D_5A46_2D_4DFC_2D_8180_2D_6D517E9FA7D3
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
