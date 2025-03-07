# BAT Script for CrowdStrike BSOD Issue

## Overview
This BAT script is provided as a temporary workaround in response to a global BSOD issue caused by a faulty CrowdStrike component. Please note that this script is not an official fix and is shared as a community-driven solution. Use it at your own risk.

## Instructions
1. **Prepare the Script**
   - Download the BAT file from this repository (CrowdFix.bat) or from my Drive: https://lnkd.in/d-WDCPFz 

2. **Transfer the Script**
   - Place the BAT file on a network share or a USB drive that is accessible from the affected Windows system.

3. **Boot into Safe Mode**
   - Restart the affected Windows system.
   - Boot into Safe Mode with Networking. You can do this by holding the `Shift` key while selecting **Restart** from the Start menu, then navigating to **Troubleshoot** > **Advanced options** > **Startup Settings** > **Restart**, and pressing `5`  to select **Safe Mode with Networking**.

4. **Execute the Script AS ADMINISTRATOR**
   - If using a USB drive, insert it into the affected system.
   - Open Command Prompt with administrative privileges.
   - Run the BAT file from the USB drive or UNC path. For example:
     ```cmd
     X:\CrowdFix.bat
     ```
     or
     ```cmd
     \\network-share\sharedrive\CrowdFix.bat
     ```
     Or just simply rightclick on file CrowdFix.bat select and left click Run as Administrator.

## Disclaimer

This script is a community-provided solution and is not officially supported by CrowdStrike or anyone. There is no warranty or guarantee that this script will resolve the issue but most probably will. Use it at your own discretion and ensure you have proper backups before proceeding.

## Source, really nothing fancy:

timeout /t 3 /nobreak >nul
cd %windir%\System32\drivers\Crowdstrike
del /f /q C-00000291*.sys
shutdown /r /t 1
