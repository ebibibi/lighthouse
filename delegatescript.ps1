#共同作成者ロールをmebisuda@jbs.comに与える
$subscriptionName = "委任したいサブスクリプションの名前をここに記載"
Get-AzSubscription -SubscriptionName $subscriptionName | Set-AzContext
New-AzSubscriptionDeployment -Name lighthousetest `
                 -Location JapanEast `
                 -TemplateUri https://raw.githubusercontent.com/ebibibi/lighthouse/master/tomebisudajbs_contributor.json `
                 -Verbose

#共同作成者ロールをebibibi@gmail.comに与える
$subscriptionName = "委任したいサブスクリプションの名前をここに記載"
Get-AzSubscription -SubscriptionName $subscriptionName | Set-AzContext
New-AzSubscriptionDeployment -Name lighthousetest `
                 -Location JapanEast `
                 -TemplateUri https://raw.githubusercontent.com/ebibibi/lighthouse/master/toebibibigmail_contributor.json `
                 -Verbose