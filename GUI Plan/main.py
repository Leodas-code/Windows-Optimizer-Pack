import os
import subprocess
from tkinter import *

def cleanup():
    file_name = "cleanup.bat"
    content = """@echo off
cls
echo Cleaning Temporary Files...
echo.
del /s /q "%TEMP%\\*" >nul 2>&1
echo Cleanup done.
pause
"""

    try:
        with open(file_name, "w") as f:
            f.write(content)

        subprocess.run(file_name, shell=True)
    except Exception as e:
        print("Error:", e)

def basic_optimize():
    file_name = "basic_optimize.bat"
    content = """@echo off
    cls
    echo Running Basic Optimization...
    echo.

    REM Disable animations (safe)
    reg add "HKCU\\Control Panel\\Desktop" /v MenuShowDelay /t REG_SZ /d 0 /f

    REM High performance Mode
    powercfg -setactive SCHEME_MIN

    reg add "HKCU\\Control Panel\\Desktop\\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f

    echo Basic optimization completed.
    pause
    """

    try:
        with open(file_name, "w") as f:
            f.write(content)

        subprocess.run(file_name, shell=True)
    except Exception as e:
        print("Error:", e)

window = Tk()
window.title("WinOptima")
window.geometry("640x480")
window.configure(bg="#1E1E1E")

label = Label(window, text="WinOptima", font=("Poppins", 16), bg="#1E1E1E", fg="white")
label.pack(pady=10)

Label(
    window,
    text="⚠ Run as Administrator",
    fg="red",
    bg="#1E1E1E"
).pack()

cleanup_btn = Button(
    window,
    text="Cleanup Temporary Files",
    command=cleanup,
    bg="blue",
    fg="white",
    bd=0,
    padx=10
)
cleanup_btn.pack(pady=10)

basic_optimize_btn = Button(
    window,
    text="Basic Optimizations",
    command=basic_optimize,
    bg="blue",
    fg="white",
    bd=0,
    padx=10
)
basic_optimize_btn.pack(pady=10)

window.mainloop()
