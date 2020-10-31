# Get current build version from environment
$version = [System.Environment]::OSVersion.Version
$current_major = $version.Major
$current_minor = $version.Minor
$current_build = $version.Build
$version_string = "$current_major.$current_minor.$current_build"

Write-Output "WINDOWS_VERSION=$version_string"