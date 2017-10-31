$ErrorActionPreference = 'Stop';
$packageName= 'mediamonkey'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://e8d327b5fb.site.internapcdn.net/sw/MediaMonkey_4.1.19.1859.exe'
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
  checksum      = 'ae9e08d3c2286c9a302a16bbde6854bc79c6fce083d57c12c313f94401718ab1fe88c86bb62e00cc0333b494f5196af0140c2048ebb60802dbe525c486507356'
  checksumType  = 'sha512'
  checksum64    = ''
  checksumType64= 'sha512'
}

Install-ChocolateyPackage @packageArgs
