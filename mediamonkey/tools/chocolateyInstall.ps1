$ErrorActionPreference = 'Stop';
$packageName= 'mediamonkey'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://e8d327b5fb.site.internapcdn.net/sw/MediaMonkey_4.1.13.1801.exe'
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
  checksum      = '4FE7A42420E849176497B1E3C289733B'
  checksumType  = 'md5'
  checksum64    = ''
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs
