$zipPath = 'Redis-x64-3.0.504.zip'
$confPath = 'sentinel.conf'
$destPath = 'C:\Redis'

Expand-Archive -LiteralPath $zipPath -DestinationPath $destPath
Copy-Item -LiteralPath $confPath -Destination $destPath

Set-Location $destPath

.\redis-server --service-install redis.windows.conf --loglevel verbose
SC.exe CREATE Redis-Sentinel binpath= "C:\Redis\redis-server.exe --service-run sentinel.conf --sentinel"