
// Configure Microsoft Defender for Container
targetScope = 'subscription'
metadata name = 'Defender for Containers'

@allowed ([
  'Standard'
  'Free'
])
@sys.description('Enable Defender for Container')
param defenderForContainersTier string = 'Standard'



// Resources 
@sys.description('Enable Defender for Container')
resource defenderForContainers 'Microsoft.Security/pricings@2022-03-01' = {
  name: 'Containers'
  properties: {
    pricingTier: 'Standard'
  }
}













