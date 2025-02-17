$computers = Get-ADComputer -Filter * | Select -ExpandProperty Name
foreach ($computer in $computers) {
    $uptime = Get-CimInstance Win32_OperatingSystem -ComputerName $computer | Select-Object CSName, LastBootUpTime
    Write-Output "$($uptime.CSName) - Last Boot: $($uptime.LastBootUpTime)"
}