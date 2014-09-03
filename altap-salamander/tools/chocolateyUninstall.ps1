try {
    $packageName = 'altap-salamander'
    $fileType = "exe"
    $silentArgs = "/x /s"
    $validExitCodes = @(0)
    
    $unfile = "${Env:ProgramFiles}\Altap Salamander\remove\remove.exe"
    $unfilex86 = "${Env:ProgramFiles(x86)}\Altap Salamander\remove\remove.exe"

    if (Test-Path "$unfilex86") {$file = "$unfilex86"}
    if (Test-Path "$unfile") {$file = "$unfile"}
        
    if ((Test-Path "$unfile") -or (Test-Path "$unfilex86")) {
        Uninstall-ChocolateyPackage $packageName $fileType $silentArgs $file -validExitCodes $validExitCodes
    }
    
    Write-ChocolateySuccess $packageName
} catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}