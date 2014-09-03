$packageName = 'mediamonkey'
$installerType = 'exe'
#$url = 'http://www.mediamonkey.com/MediaMonkey_Setup.exe'
$url = 'http://4258.voxcdn.com/sw/MediaMonkey_4.1.3.1708.exe'
$silentArgs = '/verysilent'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
