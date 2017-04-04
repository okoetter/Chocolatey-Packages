$ErrorActionPreference = 'Stop';
$packageName= 'mediamonkey'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://e8d327b5fb.site.internapcdn.net/sw/MediaMonkey_4.1.15.1830.exe'
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
  checksum      = '744eb5055277d7eed18324dbb44e0e7e0208c03b260cc5c26a741142ad1e4535ca5fcb613451f7c40a6cbdd1de4ca951fb5790eedc1b5d79e6d6d975259bd5b0'
  checksumType  = 'sha512'
  checksum64    = ''
  checksumType64= 'sha512'
}

Install-ChocolateyPackage @packageArgs
