function Install-PowerAutomate {
    param (
        [string]$DownloadURL = 'https://go.microsoft.com/fwlink/?linkid=2102613'
    )

    Invoke-DownloadAndStartProcess -DownloadURL $DownloadURL -FileName 'PowerAutomate.exe' -Arguments '-Install -AcceptEULA -Silent'
}

Write-Host "Installing Power Automate"
Install-PowerAutomate