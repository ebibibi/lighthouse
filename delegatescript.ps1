New-AzSubscriptionDeployment -Name lighthousetest `
                 -Location JapanEast `
                 -TemplateUri https://raw.githubusercontent.com/ebibibi/lighthouse/master/template.json `
                 -Verbose