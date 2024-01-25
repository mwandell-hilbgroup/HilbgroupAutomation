$downloadUrl = "https://raw.githubusercontent.com/mwandell-hilbgroup/HilbgroupAutomation/main/AppVoumeAgentInstall/App Volumes Agent.msi"
$downloadPath = "C:\Temp\AppVolumesAgent.msi"

try {
    # Download the MSI file
    Invoke-WebRequest -Uri $downloadUrl -OutFile $downloadPath

    # Install the MSI file
    Start-Process msiexec -ArgumentList "/i $downloadPath /quiet /norestart MANAGER_ADDR=appvolumemanager.hilbgroup.com MANAGER_PORT=443 EnforceSSLCertificateValidation=0" -Wait
}
catch {
    Write-Host "Error occurred during download or installation: $_"
}

try {
    # Delete the MSI file
    Remove-Item -Path $downloadPath -Force
}
catch {
    Write-Host "Error occurred during file deletion: $_"
}
