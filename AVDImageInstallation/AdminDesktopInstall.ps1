# Enable RSAT ADDS and DNS
Enable-WindowsOptionalFeature -Online -FeatureName RSAT-ADDS -All
Enable-WindowsOptionalFeature -Online -FeatureName RSAT-DNS-Server -All

choco install filezilla -y -Force