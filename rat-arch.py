#!/usr/bin/env python3

import subprocess

su = "sudo"

processes = [
            "sudo pacman -Sy",
            "sudo cp ./hypr/hyprland.conf ~/.config/hypr/hyprland.conf"
            ]

for process in processes:
    result = subprocess.run(process,shell=True)
    if result.returncode != 0:
        print(f"{process} failed. exit code {result}")
        break