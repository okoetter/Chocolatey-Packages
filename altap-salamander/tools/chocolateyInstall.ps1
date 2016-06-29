$ErrorActionPreference = 'Stop'; # stop on all errors
$packageName= 'altap-salamander' # arbitrary name for the package, used in messages
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.altap.cz/ftp/salamand/as307x86.exe' # download url
$url64      = 'http://www.altap.cz/ftp/salamand/as307x64.exe' # 64bit URL here or remove - if installer is both, use $url
$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE' #only one of these: exe, msi, msu
  url           = $url
  url64bit      = $url64
  silentArgs = '/x /s'
  validExitCodes = @(0)
  softwareName  = 'altap-salamander*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique
  checksum      = 'DDD012C700CFABE67F9538349843A56C'
  checksumType  = 'md5' #default is md5, can also be sha1
  checksum64    = 'E3F5B1060BF944C07B110B55A029777C'
  checksumType64= 'md5' #default is checksumType
}

Install-ChocolateyPackage @packageArgs
