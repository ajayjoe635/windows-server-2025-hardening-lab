<#
.SYNOPSIS
    Restricts WinRM service configuration by disabling unencrypted traffic and Basic auth.
.NOTES
    Run as Administrator in a lab environment. Ensure HTTPS/Kerberos/NTLM workflows are tested.
#>

winrm set winrm/config/service '@{AllowUnencrypted="false"}'
winrm set winrm/config/service/auth '@{Basic="false"}'
