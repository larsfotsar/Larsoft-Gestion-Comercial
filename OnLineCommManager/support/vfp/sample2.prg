&& Set Search Path: C:\OnlineCommManager\VFP

   Public  CommData
   Public  Connected
   Public  Result
   Public  ComConfig
   Public  Speed

   CommData  = 0
   Connected = 0
   Result    = 0
   ComConfig = Chr(0)+'18NMA04N'
   Speed     = 0
   
   Do OnlineDll
   
   Set ClassLib To Sample2
   csSample = CreateObject('Sample2')
   csSample.Show()
