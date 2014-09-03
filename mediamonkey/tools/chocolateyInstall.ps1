$packageName = 'mediamonkey'
$installerType = 'exe'
$url = 'http://www.mediamonkey.com/MediaMonkey_Setup.exe'
$silentArgs = '/verysilent'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
