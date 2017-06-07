$ErrorActionPreference = 'Stop';
$packageName= 'mediamonkey'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://e8d327b5fb.site.internapcdn.net/sw/MediaMonkey_4.1.16.1836.exe'
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
  checksum      = 'bf6f41b21e9439c135f497c5e23d1e8c5ef37c3186b78ae2be8e0e5a3b3e0f9611bf05ba7b5e70f51b78051ca5f2087df02c364f78219d5c8de9929875f3cb87'
  checksumType  = 'sha512'
  checksum64    = ''
  checksumType64= 'sha512'
}

Install-ChocolateyPackage @packageArgs
