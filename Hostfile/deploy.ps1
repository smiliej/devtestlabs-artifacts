Param(
    [string] [Parameter(Mandatory = $true)] $IpAddress,
    [string] [Parameter(Mandatory = $true)] $Hostname
)

$path = Join-Path $Env:SystemRoot '\System32\drivers\etc\hosts'

Add-Content -Path $path -Value "$IpAddress  $Hostname"