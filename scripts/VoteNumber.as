package
{
   import flash.display.MovieClip;
   
   public dynamic class VoteNumber extends MovieClip
   {
       
      
      public function VoteNumber()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
      }
   }
}
