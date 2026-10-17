# PowerShell Infrastructure Health Check

A simple PowerShell infrastructure lab that checks the network reachability of multiple hosts using ICMP.

## Current Version — V1

The script:
- Stores multiple target IP addresses in an array.
- Loops through each target using `foreach`.
- Uses `Test-Connection` to perform an ICMP connectivity check.
- Displays whether each target is `UP` or `DOWN`.

## Usage

Run the script from PowerShell:

```powershell
.\health-check.ps1
```

Example output:

```text
1.1.1.1 is UP
8.8.8.8 is UP
192.0.2.1 is DOWN
```

## Important Note

In V1, `DOWN` means that the target did not respond to the ICMP check. It does not necessarily mean that the server itself is offline, because ICMP traffic may be blocked by a firewall or network policy.

## Skills Demonstrated

PowerShell scripting, arrays, `foreach` loops, conditional logic, `Test-Connection`, and basic network troubleshooting.

## Roadmap

Future versions will expand the project with additional infrastructure health checks such as Windows service status, disk usage, reporting, and error handling.
