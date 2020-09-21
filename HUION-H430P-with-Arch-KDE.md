These are the steps I followed to be able to properly control my H430P tablet on Arch Linux with KDE.  
This is for pressure curves and button mapping.

1. Install this AUR package: `digimend-kernel-drivers-dkms-git`

2. Install other packages  
`sudo pacman -S dkms xf86-input-wacom kcm-wacomtablet`

3. Create the file to use the driver with the tablet:  
`sudo nano /etc/X11/xorg.conf.d/30-tablet.conf`
```
Section "InputClass"  
    Identifier "H430P"  
    MatchUSBID "256c:006d"  
    MatchDevicePath "/dev/input/event*"  
    Driver "wacom"  
EndSection
```
4. Restart your session  
   `sudo systemctl restart sddm`

5. Go general settings > input devices and you should see the option for tablets. Manually register the tablet and close the settings window.

From there, you can use `xsetwacom` to map the buttons on the tablet and all other settings from the input general settings.

- List tablet device names  
`xsetwacom --list devices`

- Find what a tablet button is mapped to  
`xsetwacom get 'DEVICE NAME' Button NUMBER`

- Map a tablet button to a mouse button '4'  
`xsetwacom set 'DEVICE NAME' Button NUMBER "4"`

- Map a tablet button to a key 'k'  
`xsetwacom set 'DEVICE NAME' Button NUMBER "key k"`

- Map a tablet button to a key with modifiers  
`xsetwacom set 'DEVICE NAME' Button NUMBER "key +ctrl +shift k"`

- List modifiers  
  `xsetwacom --list modifiers`


My solution to implement multiple profiles for tablet button mapping is to create Bash scripts to run xsetwacom commands and change all mappings with other command.
-example:-  
`~/MyDefaultTabletMap.sh`:
```
#!/bin/bash
xsetwacom set 'HUION Huion Tablet Pad pad' Button 1 "key +ctrl z"
xsetwacom set 'HUION Huion Tablet Pad pad' Button 2 "key +ctrl +shift z"
xsetwacom set 'HUION Huion Tablet Pad pad' Button 3 "4"
xsetwacom set 'HUION Huion Tablet Pad pad' Button 8 "5"
```