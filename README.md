# Fly-Homes-Computer-Systems-Expansion
Carsten Rossen
Emilio Muniz
Ethan Denny

Basic summary of project:
In this project, we will be setting up the business infrastructure for Flyhomes (a fictional company). Using OS provisioning tools, we will be creating SOPs to set up Windows 10 machines that are remotely accessible to company employees, as well as Linux servers on the same network to execute a nightly backup of employee user profiles and a weekly backup of the OS. We are also setting up virtual Windows servers for executive employees using AWS.

Specific details:
- Linux based file server to store sensitive info
  - Only accessible to executive team (non-technical)
- Windows 10 and Linux:
  - hosted on same network
  - remotely accessible
  - Deployed to a shared LAN
  - Remotely accessible to MSP
- Windows 10:
  - Gmail accounts on Thunderbird for executives
  - Linux folder mounted as drive L:
  - GUI-based connectivity for executives
  - Backup to Linux
     - User profiles
      - Nightly
      - OS
       - weekly 
      - SOP
- Windows Server 2016 Base with Containers (AWS EC2)
  - For executives
  - SOP of secure access
  - Establish SOP for backup of Windows Server 
    - This is not in the client specs, but we feel it is good practice

Tools used: 
- Scripting
  - PowerShell
  - Bash
  - VS Code
  - GitHub
- Cloud:
  - AWS EC2
- Operating Systems
  - Linux
    - xCAT
    - Spacewalk
  - Windows 10
    - Windows Autopilot
    - Windows Task Scheduler
    - RDP
   - Windows Server
- Project Management, communication, and documentation:
  - Google applications
  - Trello
  - Slack
  - GitHub
- Data Preservation:
  - Veeam
  - Windows System Restore
