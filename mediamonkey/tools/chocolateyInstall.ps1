$ErrorActionPreference = 'Stop';
$packageName= 'mediamonkey'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.mediamonkey.com/sw/MediaMonkey_4.1.21.1873.exe'
$url64      = ''
$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'mediamonkey*'
  checksum      = '5984ce428d002954a03e6b5a7a23e3f5de71b4c073528ae23bcdeda388a30df320a7ca731191f85f353940503df71d7a212fcc7212fe161ecd49587291fd77b1'
  checksumType  = 'sha512'
  checksum64    = ''
  checksumType64= 'sha512'
}

Install-ChocolateyPackage @packageArgs
