param([String]$jdkexepath) 

Push-Location


7z x $jdkexepath -o"jdkunpacked"

cd jdkunpacked\.rsrc\1033\JAVA_CAB10

extrac32 111 | Out-Null

7z x tools.zip -o"tools"

cd tools

Get-ChildItem -Path . -Filter *.pack -Recurse | ForEach-Object {
  $unpackcmd = ".\bin\unpack200.exe -r " + $_.FullName + " " + $_.DirectoryName + "\" + $_.BaseName + ".jar"  
  cmd /c $unpackcmd
}

Pop-Location

Move-Item .\jdkunpacked\.rsrc\1033\JAVA_CAB10\tools\ .\jdk
Remove-Item .\jdkunpacked\ -Recurse

