Active Directory Computer Uptime Checker

This PowerShell script retrieves the uptime information for all computers in an Active Directory environment by querying their last boot time.

Features
- Retrieves a list of all Active Directory computers.
- Queries each computer for its last boot time.
- Outputs the computer name along with its last boot timestamp.

Prerequisites
- PowerShell (latest version recommended)
- Active Directory PowerShell module (`RSAT-AD-PowerShell`)
- Appropriate permissions to query Active Directory and remote computers

Installation
1. Ensure the Active Directory module is installed and imported:
    ```powershell
    Import-Module ActiveDirectory
    ```
2. Save the script as `Get-Uptime.ps1`.

Usage
1. Open PowerShell with administrative privileges.
2. Run the script:
    ```powershell
    .\Get-Uptime.ps1
    ```
3. The script will:
    - Fetch all computer names from Active Directory.
    - Query each computer for its last boot time.
    - Display the results in the console.

Customization
- Modify the filter in `Get-ADComputer` to target specific computer groups.
- Redirect the output to a file:
    ```powershell
    .\Get-Uptime.ps1 | Out-File -FilePath "UptimeReport.txt"
    ```

License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
