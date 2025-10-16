<#
.SYNOPSIS
Installs a list of packages using Chocolatey.

.DESCRIPTION
This function takes an array of package names and installs each one using Chocolatey. It forces the installation and automatically confirms all prompts.

.PARAMETER Packages
An array of package names to install.

.EXAMPLE
Install-ChocoPackages -Packages @("git", "nodejs")

This will install git and nodejs using Chocolatey.

.NOTES
Chocolatey must be installed on the system for this function to work.
#>
function Install-ChocoPackages {
    param (
        [string[]]$Packages
    )

    foreach ($package in $Packages) {
        choco install $package -y -Force --ignore-checksums
    }
}

Write-Host "Installing Chocolatey Packages"
Install-ChocoPackages -Packages @('trillian', 'roboform')