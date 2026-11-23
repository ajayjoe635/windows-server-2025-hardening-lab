<#
.SYNOPSIS
    Disables SMBv1 and enforces SMB signing on a Windows Server lab host.
.NOTES
    Run in a test/lab environment as Administrator. Verify application compatibility first.
#>

# Disable SMBv1 protocol feature/server support if present
Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force

# Enforce SMB signing on SMB server and SMB client
Set-SmbServerConfiguration -RequireSecuritySignature $true -Force
Set-SmbClientConfiguration -RequireSecuritySignature $true -Force
