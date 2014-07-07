 #Run these commands under elevated privileges.
 #Eliminate Prompts. Set this back afterwards if you want to stay secure.
 Set-ExecutionPolicy ByPass

 #For interaction with remote azure components. Will fail if you are connected to a "Public" network connection
 Enable-PSRemoting 

 #Enable multi-hop delegation of credentials across multiple remote computers. Supported in WinRM
 Enable-WSManCredSSP -role client -delegatecomputer "*.cloudapp.net" 
 
 #Enable Delegation of fresh credentials
 $regKey = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\Credssp\PolicyDefaults\AllowFreshCredentialsDomain"  
 Set-ItemProperty $regKey -Name WSMan -Value "WSMAN/*.cloudapp.net"
 
 #Get Overview of the current state of your subscription. Make sure you have enough cores.
 Get-AzureSubscription -ExtendedDetails