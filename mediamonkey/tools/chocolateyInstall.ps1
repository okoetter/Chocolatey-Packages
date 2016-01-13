$packageName = 'mediamonkey'
$installerType = 'exe'
$url = 'http://e8d327b5fb.site.internapcdn.net/sw/MediaMonkey_4.1.10.1778.exe'
$silentArgs = '/verysilent'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
