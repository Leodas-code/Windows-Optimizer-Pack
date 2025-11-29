**🚀 Windows Power Optimizer**

A lightweight batch-based optimization tool designed to improve performance, reduce background activity, and clean temporary files on Windows systems — safely and instantly.

_✨ Features_

_⚡ Switches Windows to High Performance mode_

_🚫 Disables unnecessary animations_

_❌ Stops excessive background apps_

_🧹 Clears TEMP folder automatically_

_🔄 Restarts Explorer for smooth experience_

_🪄 Removes unwanted startup shortcuts_

🖥️ Fast, simple, lightweight (Batch script)

📄 Commands Included (for transparency)

_**reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f**_
_**taskkill /f /im explorer.exe**_
_**start explorer.exe**_

_**reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v LetAppsRunInBackground /t REG_DWORD /d 2 /f**_

_**del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\*" /q**_

_**powercfg -s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c**_

_**del /q /f "%TEMP%\*"**_

**🛠️ How to Use**

Download the .bat file from this repository

Right-click → Run as Administrator

Wait a few seconds

Your PC will refresh and apply optimizations

**🛡️ Notice**

This tool uses safe and commonly used Windows commands.
It does not install anything and does not modify system files.

Still, as with any optimization script,
you should use it only if you understand what it does.
