nmtui
sudo nano /etc/pacman.conf #uncomment multilib repository
sudo reflector -c US --sort rate --save /etc/pacman.d/mirrorlist 
sudo pacman -Syyyuu
systemctl enable cronie
sudo pacman -S xf86-video-intel nvidia nvidia-utils nvidia-settings
sudo pacman -S xorg
sudo pacman -S sddm 
sudo systemctl enable sddm
sudo pacman -S plasma kde-applications xdg-user-dirs packagekit-qt5
sudo pacman -S git git-lfs
git-lfs install
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm yay/ -Rf
reboot
yay -S timeshift firefox
yay -S optimus-manager
systemctl status optimus-manager
reboot
yay -S optimus-manager-qt
glxgears -info
yay -S tlp
yay -S bash-completion lsb-release smartmontools
reboot
history
locale -a
locale

exit
cat /etc/profile.d/bash_completion.sh
history
yay -S bash-completion
a
a
history
cat .bash_history 
history | grep yay
cd /
ls
sudo dd if=/dev/null of=/.swap bs=1024 count=1 
sudo dd if=/dev/null of=/.swap bs=1024 count=1024 
sudo dd if=/dev/zero of=/.swap bs=1024 count=1024 
sudo dd if=/dev/zero of=/.swap bs=1M count=4096 
sudo mkswap /.swap 
sudo chmod 600 .swap 
ls -l
ls -la
swapon .swap
sudo swapon .swap
mkswap .swap 
sudo mkswap .swap 
sudo mkswap .swap LABEL=DjinnSwap
sudo mkswap 'LABEL=DjinnSwap' .swap 
sudo mkswap .swap 
sudo swapon .swap
su
exit
#1597199674
hostnamectl
#1597199721
exit
#1597199740
su
history | grep yay 
smartctl -i
smartctl -h
smartctl --all
smartctl --all /dev/nvme0n1
sudo smartctl --all /dev/nvme0n1
sudo smartctl --all /dev/nvme0n1
clear
sudo smartctl --all /dev/nvme0n1
man tlp
man tlp
PWD
$PWD
/home/djinnalexio
cat /etc/bash.bashrc 
sudo nano /etc/bash.bashrc 
exit
#1597200150
su
#1597200216
sudo nano /etc/bash.bashrc 
#1597200331
su
#1597200363
exit
#1597200598
history
#1597202129
yay -Syu
#1597202566
glxdemo
#1597202584
glxdemo -info
#1597202596
glxgears -info
#1597233477
yay chrome
#1597233984
yay libreoffice
#1597234011
yay libreoffice | grep installed
#1597234021
yay libreoffice | grep Installed
#1597234701
yay sublime-text
#1597235201
yay zoom
#1597236745
yay -Syyuu
#1597236812
yay -S code
#1597233102
yay -Qu
#1597233107
yay -Q
#1597235752
yay -S lib32-nvidia-utils
#1597235834
yay vs code
#1597235901
yay vscode
#1597236315
ysy -Syu
#1597236320
yay -Syu
#1597236338
history
#1597236374
yay vscode
#1597236593
ls /var/cache/pacman/pkg/
#1597236616
ls /var/cache/pacman/pkg/ | grep .part
#1597236634
ls /var/cache/pacman/pkg/ | grep *.part
#1597236855
yay -Q
#1597236886
yay -Q >> Downloads/check/installed.txt
#1597236896
less Downloads/check/installed.txt
#1597237310
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#1597237583
neofetch
#1597232732
yay blender
#1597235264
yay -S bashtop cmatrix cup exfat-utils f2fs-tools flatpak flatpak-builder google-chrome gparted jstest-gtk-git libreoffice-fresh lshw ruby spotify-dev steam tree zoom 
#1597235558
yay -S bashtop cmatrix cup exfat-utils f2fs-tools flatpak flatpak-builder google-chrome gparted jstest-gtk-git libreoffice-fresh lshw ruby spotify-dev steam tree zoom --needed
#1597235662
yay -S cups google-chrome jstest-gtk-git zoom --needed
#1597235776
cd Downloads/
#1597235782
git init check
#1597235791
cd check/
#1597235806
nano installed
#1597236847
ls
#1597237639
neofetch
#1597237670
bashtop
#1597237730
yay code
#1597237745
yay -S code
#1597237830
history
#1597237863
cd Downloads/check/
#1597237869
git add --all
#1597237876
git commit --all
#1597237996
git config --global user.email "pakueamb@gmail.com"
#1597238057
git config --global user.name "Philippe-André Akue"
#1597238062
git commit --all
#1597238079
git status
#1597238112
yay nano
#1597238185
git config --global core.editor "nano"
#1597238195
which code
#1597238248
git commit --all
#1597238396
yay -Q
#1597238540
yay -Q >> Downloads/check/installed.txt 
#1597238975
yay joy-utils
#1597238980
yay joyutils
#1597239135
yay -S ntfs-3g
#1597239164
yay osinfo-db
#1597239287
yay -S spotify lutris
#1597239440
yay -S bluez-utils
#1597239479
yay cups-pk-helper
#1597239502
yay discord
#1597239570
yay discover
#1597239645
yay fuse3
#1597239915
yay -S lutris --needed
#1597239941
yay malcontent
#1597239962
yay mathjax2
#1597239977
yay meson
#1597240045
yay -S kite meson
#1597240078
/opt/kite/kite-installer install
#1597241392
exit
#1597240116
yay mtpfs
#1597240126
yay mutter
#1597240237
yay orca
#1597240272
yay p7zip
#1597240324
yay potrace
#1597240371
yay qemu
#1597240404
yay quota-tools
#1597240439
yay rygel
#1597240461
yay seabois
#1597240466
yay seabios
#1597240497
yay simplescan
#1597240504
yay simple-scan
#1597240525
yay -S cups --needed
#1597240541
yay -S spyder --needed
#1597240601
yay spotify
#1597240856
yay sysprof
#1597240873
yay tlc
#1597240887
yay tali
#1597240936
yay udftoolf
#1597240939
yay udftools
#1597240961
yay unrar
#1597240983
yay clam
#1597241021
yay usbredir
#1597241059
yay virtualbox-host-modules-arch
#1597241120
yay vulcan-intel
#1597241128
yay vulkan-intel
#1597241147
yay vulkan
#1597241192
yay wget
#1597241205
yay whois
#1597241284
yay zip
#1597241419
cat Downloads/check/
#1597241424
cat Downloads/check/installed.txt 
#1597241431
cat Downloads/check/reference.txt 
#1597241477
yay -S code discord lutris spotify-dev spyder
#1597242034
firefox
#1597242114
history | grep kite
#1597242334
yay pycharm
#1597242850
yay atom
#1597243276
ls
#1597243305
cp Downloads/check/reference.txt DifficultToInstall.txt
#1597243327
rm Downloads/check/ -f
#1597243333
rm Downloads/check/ -fR
#1597243342
cat DifficultToInstall.txt 
#1597243370
nano DifficultToInstall.txt 
#1597243498
neofetch
#1597243519
yay -Syyuu
#1597243542
reboot
#1597243467
glxgears -info
#1597244382
sudo atom 
#1597244411
sudo atom --no-sandbox
#1597245129
yay bbswitch
#1597245207
man bbswitch
#1597245212
bbswithc
#1597245215
bbswitch
#1597245288
cp /etc/optimus-manager/optimus-manager.conf opti.conf
#1597245292
nano opti.conf 
#1597245432
glxgears
#1597245438
glxgears -info
#1597245458
cat opti.conf 
#1597245475
systemctl bbswitch
#1597245685
nano opti.conf 
#1597245762
glxgears -info
#1597245842
rm opti.conf 
#1597245911
sudo gtk-lshw
#1597246248
mv DifficultToInstall.txt ~/ToInstall.txt
#1597246272
mv ToInstall.txt ~/Install.txt
#1597246285
cat Install.txt 
#1597246305
yay code discord lutris spotify-dev spyder
#1597246314
yay -S code discord lutris spotify-dev spyder
#1597246445
yay -S clamav
#1597246561
sudo systemctl enable clamd
#1597246608
man clamav
#1597246617
clamav
#1597246648
clamscan
#1597246668
sudo clamscan
#1597246675
yay clamd
#1597246703
clamd
#1597246711
sudo clamd
#1597246755
freshclam
#1597246768
killall freshclam
#1597246783
/etc/init.d/clamd start
#1597246851
yay -R clamav
#1597246875
yay -R clamav libmspack
#1597247152
yay -Syyy
#1597247160
yay -Syuu
#1597247173
ay -S code discord lutris spotify-dev spyder
#1597247184
yay -S code discord lutris spotify-dev spyder
#1597247321
sudo pacman -S archlinux-keyring
#1597247339
yay -Syyyuu
#1597247346
yay -S code discord lutris spotify-dev spyder
#1597247392
yay -S code discord lutris spotify-dev spyder --needed
#1597247418
yay -S spotify
#1597247566
yay -Syu
#1597247617
pacman-key --refresh-keys
#1597247622
sudo pacman-key --refresh-keys
#1597247647
yay -S spotify-dev
#1597247795
code
#1597248350
yay -S spotify-dev
#1597248492
gpg --recv-keys
#1597248497
yay -S spotify-dev
#1597248518
gpg --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
#1597248574
gpg --keyserver pool.sks-keyservers.net --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
#1597248715
yay -S spotify-dev
#1597249054
spotify
#1597248769
cat /etc/pacman.d/gnupg/gpg.conf 
#1597248805
cat ~/gnupg/gpg.conf 
#1597248815
cat ~/.gnupg/gpg.conf 
#1597248864
cp -p /etc/pacman.d/gnupg/gpg.conf ~/.gnupg/gpg.conf
#1597248878
nano  ~/.gnupg/gpg.conf
#1597250972
yay gnome-disks
#1597251105
lsblk
#1597251139
mkdir -p /mnt/Windows10
#1597251142
sudo mkdir -p /mnt/Windows10
#1597251206
mount /dev/nvme0n1p4 /mnt/Windows10/
#1597251211
sudo mount /dev/nvme0n1p4 /mnt/Windows10/
#1597251295
umount /run/media/djinnalexio/Toshiba
#1597251314
lsblk
#1597251317
umount /run/media/djinnalexio/Toshiba
#1597251324
umount /run/media/djinnalexio/Toshiba -f
#1597251328
sudo umount /run/media/djinnalexio/Toshiba -f
#1597251335
lsblk
#1597251396
mkdir /mnt/DjinnWarehouse
#1597251400
sudo mkdir /mnt/DjinnWarehouse
#1597251497
sudo mount -0 subvol=/@ /dev/sda1 /mnt/DjinnWarehouse/
#1597251506
sudo mount -o subvol=/@ /dev/sda1 /mnt/DjinnWarehouse/
#1597251742
genfstab
#1597251775
cat /etc/fstab
#1597251786
code /etc/fstab
#1597251794
sudo code /etc/fstab
#1597251993
cat /proc/mounts
#1597252016
mount
#1597252348
cp /etc/fstab fstab
#1597252402
sudo cp fstab /etc/fstab 
#1597252865
mount
#1597253126
sudo nano /etc/fstab 
#1597253460
glxgears
#1597253474
glxgears
#1597253570
sudo nano /etc/fstab 
#1597253587
sudo code /etc/fstab 
#1597253640
history
#1597259357
sudo dolphin
#1597259436
rm /mnt/DjinnWarehouse/
#1597259450
sudo rmdir /mnt/DjinnWarehouse/
#1597259511
sudo cp /run/media/djinnalexio/Toshiba/@/Pictures/* /usr/share/wallpapers/
#1597259576
ls /run/media/djinnalexio/Toshiba/@/Pictures/
#1597259591
ls /run/media/djinnalexio/Toshiba/@/Pictures/Wallpapers/
#1597259613
sudo cp /run/media/djinnalexio/Toshiba/@/Pictures/Wallpapers/* /usr/share/wallpapers/
#1597259839
sudo rm -R /usr/share/wallpapers/Elarun/
#1597259891
sudo rm -R /usr/share/wallpapers/FlyingKonqui/
#1597259942
sudo rm -R /usr/share/wallpapers/Kokkini/
#1597265187
exit
#1597265194
sdeefewe
#1597265261
terminator
#1597265269
cmatrix
#1597264669
free -m
#1597265426
ls
#1597265432
cat Install.txt 
#1597265438
rm fstab Install.txt 
#1597265440
ls
#1597266951
$HOSTNAME
#1597266963
$LOCALHOST
#1597266974
cat /etc/hostname
#1597266977
cat /etc/hosts
#1597267069
systemctl status cups
#1597267077
systemctl status cup
#1597267136
service cups
#1597267145
sudo systemctl status cups
#1597267158
yay -S cups
#1597267168
cups
#1597271048
mv Desktop/UnityHub.desktop .local/share/applications/
#1597274150
yay -Syu
#1597275581
yay -R google-chrome-beta 
#1597275596
yay -S google-chrome
#1597275673
yay -Q | grep cups
#1597275686
sudo systemctl enable cups
#1597275796
sudo systemctl enable cupsd
#1597275814
sudo systemctl 
#1597275879
sudo systemctl list-unit-files
#1597275907
sudo systemctl list-unit-files | grep cup
#1597275950
sudo systemctl status cups-browsed
#1597275991
sudo systemctl status org.cups.cupsd
#1597276041
sudo systemctl enable org.cups.cupsd
#1597276050
sudo systemctl start org.cups.cupsd
#1597276183
exit
#1597276994
yay -S translate-shell
#1597279281
cp Unity/Unity\ Editors/2020.1.2f1/Editor/Data/Resources/UnityPlayerIcon.png Unity/
#1597279307
touch Unity/UnityPlayerIcon.png 
#1597281496
yay -Q | grep keras
#1597281502
yay -Q | grep tensorflow
#1597281732
yay wine
#1597282033
yay -Syu
#1597282065
yay -S dotnet-runtime dotnet-sdk mono mono-develop mono-tools
#1597282136
yay -S dotnet-runtime dotnet-sdk mono monodevelop mono-tools --needed
#1597282598
yay -Q | grep blue
#1597282611
systemctl status bluez
#1597282665
history
#1597282693
sudo systemctl list-unit-files | grep blue
#1597282716
sudo systemctl enable bluetooth
#1597282736
sudo systemctl start bluetooth
#1597279139
code .local/share/applications/UnityHub.desktop 
#1597283851
yay -S dotnet-runtime dotnet-sdk mono monodevelop mono-tools --needed
#1597283880
yay -R monodevelop
#1597283892
yay -S monodevelop-beta
#1597285159
which code
#1597285671
yay -Syu
#1597285686
poweroff
#1597321293
man bluez-utils
#1597321306
man bluetoothctl
#1597321726
yay pulseaudio
#1597321820
sudo nano /etc/pulse/default.pa 
#1597321908
reboot
#1597320820
yay bluetooth
#1597320905
man bluetooth
#1597320918
man bluetoothd
#1597320951
bluetooth
#1597321202
lsmod | grep b
#1597321249
bluetoothctl
#1597322136
exit
#1597323377
yay -Syu
#1597323443
exit
#1597332011
git
#1597332045
ls -ha
#1597332110
ls -al .ssh
#1597332155
ssh-keygen -t rsa -b 4096 -C "pakueamb@gmail.com"
#1597332325
eval "$(ssh-agent -s)"
#1597332334
ssh-add ~/.ssh/id_rsa
#1597332388
less .ssh/id_rsa.pub 
#1597332461
cd Projects/
#1597332462
ls
#1597332532
git clone git@github.com:pakueamb/DeepLearningAZcourse.git
#1597332609
ls
#1597333411
git clone git@github.com:pakueamb/win10script.git
#1597333422
code win10script/
#1597347075
yay -Syu
#1597347411
exit
#1597350392
cd Projects/
#1597350402
git clone git@github.com:pakueamb/My-New-Setup-Steps.git
#1597350457
cd Projects/
#1597350484
cp win10script/win10debloat.ps1 My-New-Setup-Steps/
#1597350568
yay -S vim
#1597350617
cp .bash_history Projects/My-New-Setup-Steps/.bash_history 
#1597351183
su
#1597351206
exit
#1597371454
bluetoothctl
#1597373166
yay -Syu
#1597373259
ls /var/cache/pacman/pkg/
#1597373560
yay -Scc
