$ErrorActionPreference = 'Stop'; # stop on all errors
$packageName= 'altap-salamander' # arbitrary name for the package, used in messages
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.altap.cz/ftp/salamand/as40x86.exe' # download url
$url64      = 'https://www.altap.cz/ftp/salamand/as40x64.exe' # 64bit URL here or remove - if installer is both, use $url
$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE' #only one of these: exe, msi, msu
  url           = $url
  url64bit      = $url64
  silentArgs = '/x /s'
  validExitCodes = @(0)
  softwareName  = 'altap-salamander*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique
  checksum      = '3B4E16790DA5D5F979EA9F3D3C7EC5EFAFCAD284A5342F88B89B2A004B6F2FD7AE44899E1CE78D90B9005E345B347E230D875520C681AA5AAA960C12A0097B5D'
  checksumType  = 'sha512' #default is md5, can also be sha1
  checksum64    = 'D119F06E29DE6CA082A2688588729A69B0D141E6B55268466CCD476684C52F8E7E2E381C5459196C1C4F7B59A188CC92395658D9C7E11B64ECAC73389E6ACBF3'
  checksumType64= 'sha512' #default is checksumType
}

Install-ChocolateyPackage @packageArgs
