&& Set Search Path:  C:\OnlineCommManager\VFP

   Public  CommData
   Public  Connected
   Public  Result
      
   CommData  = 0
   Connected = 0
   Result    = 0
   
   Do OnlineDll
   
   Set ClassLib To Sample7
   csSample = CreateObject('Sample7')
   csSample.Show()
