#Will delete all objects related to a fully configured SPAzure Environment

Import-Module "C:\Program Files (x86)\Microsoft SDKs\Windows Azure\PowerShell\ServiceManagement\Azure\Azure.psd1"
$subscriptionName = "Windows Azure MSDN - Visual Studio Ultimate"
Select-AzureSubscription -SubscriptionName $subscriptionName -verbose
#Set-AzureSubscription -SubscriptionName $subscriptionName -CurrentStorageAccount $storageAccount -verbose
Set-AzureSubscription -SubscriptionName $subscriptionName -verbose

Remove-AzureVNetConfig 