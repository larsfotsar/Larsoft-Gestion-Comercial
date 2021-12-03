&& Set Search Path: C:\OnlineCommManager\VFP

   Public  CommData
   Public  Connected
   Public  Result
      
   CommData  = 0
   Connected = 0
   Result    = 0
   
   Do OnlineDll
   
   Set ClassLib To Sample4
   csSample = CreateObject('Sample4')
   csSample.Show()
