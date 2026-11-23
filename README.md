
# Windows Server 2025 Vulnerability Assessment & Hardening Lab

Hands-on lab focused on vulnerability scanning, remote exposure validation, and host hardening on a Windows Server 2025 virtual machine using OpenVAS/Greenbone, CrackMapExec (Kali Linux), Gemini AI, and PowerShell.

## Lab Workflow
1. **Baseline & Vulnerability Assessment:** Ran authenticated local-network scans against a Windows Server 2025 lab host using OpenVAS/Greenbone and applied override rules to filter false positives and isolate true exposures.
2. **Exposure Validation:** Tested remote reachability and account/service exposure from Kali Linux using CrackMapExec, assisted by Gemini AI for analysis and triage.
3. **Hardening & Remediation:** Applied PowerShell configurations and scan-guided remediation commands across SMB, WinRM, TCP timestamps, and DCE/RPC / MSRPC services, followed by post-change verification.

## Key Hardening & Remediation Actions
- **SMB:** Enforced SMB signing (inbound and outbound) and disabled legacy SMBv1.
- **WinRM:** Restricted unencrypted traffic and Basic authentication defaults.
- **TCP Timestamps:** Applied scanner-recommended PowerShell settings to address TCP timestamp exposure.
- **RPC / MSRPC:** Executed scan-guided PowerShell remediation to disable exposed DCE/RPC and MSRPC service behavior and re-verified host posture.



## Lab Evidence
1. **Initial Vulnerability Scan (OpenVAS/Greenbone):**
   ![Initial OpenVAS Scan](evidence/01-openvas-initial-scan.png)
2. **Remote Exposure Validation (CrackMapExec):**
   ![CrackMapExec Validation](evidence/02-crackmapexec-validation.png)
3. **Host Hardening & Remediation (PowerShell):**
   ![PowerShell Hardening](evidence/03-powershell-hardening-execution.png)
