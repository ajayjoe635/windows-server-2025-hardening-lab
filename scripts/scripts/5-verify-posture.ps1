<#
.SYNOPSIS
    Checks key SMB and WinRM settings after applying hardening scripts.
#>

Get-SmbServerConfiguration | Select-Object EnableSMB1Protocol, RequireSecuritySignature
Get-SmbClientConfiguration | Select-Object RequireSecuritySignature
winrm get winrm/config/service
