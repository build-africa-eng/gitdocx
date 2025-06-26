Write-Host "Checking disk space..."
$fs = (Get-PSDrive C).Free / 1GB
Write-Host "Free space on C: $($fs) GB"

if ($fs -lt 5) {
    Write-Error "Not enough disk space — require at least 5 GB"
    exit 1
}

"Hello from GitDocx Windows" | Out-File -FilePath C:\hello.txt -Encoding ASCII
Write-Host "Successfully created C:\\hello.txt"
