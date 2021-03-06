param (
    [string] $SeqVersion
)

$ErrorActionPreference = 'Stop'

Invoke-WebRequest https://datalust.co/download/begin?version=$SeqVersion -OutFile C:/seq-docker/Seq.msi -UseBasicParsing

Start-Process msiexec.exe -ArgumentList '/i C:\\seq-docker\\Seq.msi /quiet /norestart /lv C:\\seq-docker\\Install.log' -Wait

Remove-Item C:/seq-docker/Seq.msi -Force
