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
        Uninstall-ChocolateyPackage -PackageName $packageName
                                    -FileType $fileType
                                    -SilentArgs $silentArgs
                                    -ValidExitCodes $validExitCodes
                                    -File $file
    }
} catch {
    Write-Warning "Could not uninstall"
    throw
}
