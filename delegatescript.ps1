#共同作成者ロールをebibibi@gmail.comに与える
$subscriptionName = "委任したいサブスクリプションの名前をここに記載"
Get-AzureSubscription -SubscriptionName $subscriptionName | Set-AzContext
New-AzSubscriptionDeployment -Name lighthousetest `
                 -Location JapanEast `
                 -TemplateUri https://raw.githubusercontent.com/ebibibi/lighthouse/master/contributor.json `
                 -Verbose
