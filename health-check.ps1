$servers = @(
    "1.1.1.1",
    "8.8.8.8",
    "192.0.2.1"
)

foreach ($server in $servers) {

    $result = Test-Connection -ComputerName $server -Count 2 -Quiet

    if ($result -eq $true) {
        Write-Host "$server is UP"
    }
    else {
        Write-Host "$server is DOWN"
    }
}
