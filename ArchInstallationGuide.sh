######################################################
#Taken from the Youtube channel EF - Tech Made Simple#

#######################################################


#Plug in the installation device and choose the first option to run the Arch
#Linux installation

#You will need an internet connection for this so check your ip address
ip a

#If using wifi, use the commands below to set up the connection
iwctl
>device list #see a list of your wireless adapters
>station {device name} scan #detect networks
>station {device name} get-networks #output found networks
>station {device name} connect {network SSID} #you will be asked to input the passsword
>exit

#Synchronize the network time protocol
timedatectl set-ntp true

#check your storage devices and plan how you are going to allocate the space
lsblk

#you will need at least an EFI partition for the bootloaders and your main
#partition. A swap partition may be optional.

#you can use fdisk to partition your disks
fdisk /dev/{your storage device}

#the EFI partition needs to be around 100-200MB.

#once in the fdisk prompt, here are the command you will most likely use:
#m - help
#g - create a GPT partition table
#n - create a new partition
#t - change the filesystem type of a partition
#w - write your changes to the disk


#check the disk again to see your table
lsblk

#Prepare the EFI partition as FAT32
mkfs.fat -F32 /dev/{EFI partition}

#Prepare your swap if you have one
mkswap /dev/{swap partition}
swap on {swap partition}

#Prepare your BTRFS main partition
mkfs.btrfs /dev/{main partition}
mount /dev/{main partition} /mnt

#create a subvolume (which is compatible with timeshift)
btrfs su cr /mnt/@

#umount the partition and mount the subvolume with its options
umount /mnt
mount -o compress=lzo,subvol=@ /dev/[partition name] /mnt

#mount the EFI partition
mkdir -p /mnt/boot/EFI
mount /dev/{EFI partition} /mnt/boot/EFI

#to speed up the process, we will make sure that we have the fastest mirrors
#possible
#Install reflector
pacman -S reflector

#use reflector to get a list of mirrors located in the US, sorted by speed
#(rate), and then saved into the file used by pacman
reflector -c US --sort rate --save /etc/pacman.d/mirrorlist

#Now synchronize the service
pacman -Syyy


#Start the base install
pacstrap /mnt base linux linux-firmware nano git git-lfs #we will need nano later

#generate the FSTAB file
genfstab -U /mnt >> /mnt/etc/fstab

#Enter the installation
arch-chroot /mnt

#From this point, you are now a super user in your machine

#enable history parameters
echo -e "\n\n#Bash shstory settings\nHISTFILESIZE=-1\nHISTSIZE=-1\nHISTTIMEFORMAT=\"%F %T \"\
\nHISTFILE=\nHISTCONTROL=ignorespace" >> /etc/bash.bashrc

#Set up your Localization
ln -sf /usr/share/zoneinfo/{Country}/{Region/Timezone} /etc/localtime

#Create the /etc/adjtime to sync the system clock with the hardware clock
#Assuming that the hardware clock is set to UTC (SYStem TO Hardware Clock)
hwclock --systohc

#Set up locale
nano /etc/locale.gen #uncomment the locale of your choice
locale-gen

#Set up language
echo "LANG={your locale here}" >> /etc/locale.conf #outputs this string and
#                                               write it into the locale.conf

#Set your hostname (name of the machine) and Hosts file
echo "{your hostname}" >> /etc/hostname
nano /etc/hosts
>127.0.0.1  localhost
>::1        localhost
>127.0.1.1  {your hostname}.localdomain {your hostname}

#set the root password
password

#Install the bootloader, networking tools, and other tools
pacman -S grub efibootmgr networkmanager network-manager-applet wireless_tools\
 wpa_supplicant dialog os-prober mtools dosfstools base-devel linux-headers\
 reflector cron git git-lfs

#Install Grub and output configuration file
grub-install --target=x86_64-efi --efi-directory=/boot/EFI --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

#Activate network manager
systemctl enable NetworkManager

#Activate cron
systemctl enable cronie

#add user
useradd -mG wheel {username}

#Create a password for the user
passwd {username}

#Enable sudo for the user
EDITOR=nano visudo #uncomment the line '%wheel all=(all) all'

#exit the installation, umount all partition, reboot
exit
umount -a
reboot

#You are now in the new machine and the installation media can be removed

#enable history parameters
echo -e "\n\n#Bash shstory settings\nHISTFILESIZE=-1\nHISTSIZE=-1\nHISTTIMEFORMAT=\"%F %T \"\
\nHISTFILE=\nHISTCONTROL=ignorespace" >> .bashrc

#check for internet
ip a

#connect to wifi with:
nmtui

#setting up git Large file storage
git-lfs install

#enable multilib repositories
sudo nano /etc/pacman.conf #uncomment multilib repositories

#Update the mirrorlist of your machine
sudo reflector -c US --sort rate --save /etc/pacman.d/mirrorlist

#Install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~
rm APPS/ -Rf

#Install Graphics card drivers
yay -S xf86-video-qxl #virtual machine
yay -S xf86-video-intel #intel
yay -S xf86-video-amdgpu #amd
yay -S nvidia nvidia-utils nvidia-settings lib32-nvidia-utils #nvidia



#Install the display server
yay -S xorg


#####################################################
#If you want the Gnome desktop environment

#Display manager
yay -S gdm
systemctl enable gdm

#Desktop environment
yay -S gnome gnome-extra

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#If you want the KDE desktop environment

#Display manager
yay -S sddm
systemctl enable sddm

#Desktop environment
yay -S plasma kde-applications xdg-user-dirs packagekit-qt5
#####################################################

#Installing packages I want
yay -S timeshift #for snapshot controls
yay -S firefox #web browser
yay -S man-db man-pages text-info #manual and help utilities
yay -S btrfs-progs exfat-utils f2fs-tools ntfs-3g xfsprogs #filesystem utilities
yay -S tlp && sudo systemctl enable tlp #power management for laptops
yay -S tab-completion lsb-release #bash completion
yay -S lsb-release #displaying Linux Standard Base
yay -S smartmontools #drivers for S.M.A.R.T. drives technology
yay -S libreoffice-fresh #office suite
yay -S code #Visual Code editor
yay -S cmatrix neofetch #visual tools
yay -S flatpak flatpak-builder #flatpak support
yay -S gparted #drive utility
yay -S cups #printing utility
yay -S simple-scan #scanning utility
yay -S tree #directory display
yay -S bashtop #command line system monitor
yay -S lshw #hardware listing
yay -S kite #text editor auto-completion
yay -S steam #game library, launcher, and utilities
yay -S lutris #game library, launcher, and utilities
yay -S spotify-dev #music service
yay -S mtpfs # Media Transfer Protocol devices (Android)
yay -S jstest-gtk-git joyutils #joystick display tool
yay -S unrar zip unzip p7zip #compress utilities
yay -S osinfo-db #information about OSes
yay -S virtualbox virtualbox-host-modules-arch #for virtual machines
yay -S bluez-utils #bluetoth utilities (daemon is called bluetoothd)
yay -S vulkan-intel vulkan-tools vulkan-icd-loader #vulkan utilities
yay -S lib32-vulkan-intel lib32-nvidia-utils lib32-vulkan-icd-loader
yay -S wine wine-gecko wine-mono winetricks #for windows games
yay -S dotnet-runtime dotnet-sdk mono mono-develop mono-tools
#Windows Core and Framework needed to work with solutions and Intellisense
yay -S vim #text editor
yay -S nvme-cli #nvme drive tools


########################################
#Managing an nvidia discret card with optimus-manager

#Install and enable Optimus
yay -S optimus-manager && sudo systemctl enable optimus-manager
reboot

#Test the graphics in each mode with the system tray icon
yay -S optimus-manager-qt
glxgears -info
