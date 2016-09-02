package sample.xx__getosreldate_2E_o_3A_C77DE964_2D_754E_2D_4B4A_2D_9BE7_2D_A831D1CD3AFB
{
   import sample.xx.ram;
   
   function modDataInit_C_Run___getosreldate_2E_o_3A_C77DE964_2D_754E_2D_4B4A_2D_9BE7_2D_A831D1CD3AFB(param1:Object) : void
   {
      var _loc2_:int = param1[".bss"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
   }
}
