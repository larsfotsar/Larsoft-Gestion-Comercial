&& Set Search Path:  C:\OnlineCommManager\VFP

   Public  CommData
   Public  Connected
   Public  Result
      
   CommData  = 0
   Connected = 0
   Result    = 0
   
   Do OnlineDll
   
   Set ClassLib To Sample9
   csSample = CreateObject('Sample9')
   csSample.Show()
