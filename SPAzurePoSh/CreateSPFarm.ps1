cls

#Check for Azure module in session.
if (-not (Get-Module azure)){
    $modulePath = Join-Path (${env:ProgramFiles(x86)}+"\Microsoft SDKs\Windows Azure\PowerShell\ServiceManagement\Azure") "Azure.psd1"
    Import-Module -Name $modulePath
    if (-not (Get-Module azure)){
        "Failure loading Azure module"
        exit
    }
}


