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
mount -o compress=lzo,subvol=@ /dev/{partition name} /mnt

#mount the EFI partition
mkdir -p /mnt/boot/EFI
mount /dev/{EFI partition} /mnt/boot/EFI

#Synchronize the repositories to use pacman
pacman -Syyy

#to speed up the process, we will make sure that we have the fastest mirrors
#possible
#Install reflector
pacman -S reflector

#use reflector to get a list of mirrors located in the US, sorted by speed
#(rate), and then saved into the file used by pacman
reflector -c US --sort rate --save /etc/pacman.d/mirrorlist

#Now resync the repositories
pacman -Syyy

#Start the base install
pacstrap /mnt base linux linux-firmware nano git git-lfs #we will need nano later

#generate the FSTAB file
genfstab -U /mnt >> /mnt/etc/fstab

#Enter the installation
arch-chroot /mnt

#From this point, you are now a super user in your machine

#enable history parameters
nano /etc/bash.bashrc
>#Bash history settings
>HISTFILESIZE=-1
>HISTSIZE=-1
>HISTTIMEFORMAT="%F %T "
>HISTFILE=
>HISTCONTROL=ignorespace

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
passwd

#Install the bootloader, networking tools, and other tools
pacman -S grub efibootmgr networkmanager network-manager-applet wireless_tools\
 wpa_supplicant dialog os-prober mtools dosfstools base-devel linux-headers\
 reflector cron --needed

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

#enable history parameters for user
nano .bashrc
>#Bash history settings
>HISTFILESIZE=-1
>HISTSIZE=-1
>HISTTIMEFORMAT="%F %T "
>HISTFILE=
>HISTCONTROL=ignorespace


#check for internet
ip a

#connect to wifi with:
nmtui

#setting up git Large file storage
git-lfs install

#enable multilib repositories
sudo nano /etc/pacman.conf #uncomment multilib repositories

#Sync repositories
sudo pacman -Syyy

#Update the mirrorlist of your machine
sudo reflector -c US --sort rate --save /etc/pacman.d/mirrorlist

#Install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~
rm yay/ -Rf

#Install Graphics card drivers
yay -S xf86-video-qxl #virtual machine
yay -S xf86-video-intel #intel
yay -S xf86-video-amdgpu #amd
yay -S nvidia nvidia-utils nvidia-settings lib32-nvidia-utils #nvidia



#Install the display server
yay -S xorg

#In case you are installing a desktop environment without the additional
#applications, make sure to install a command line application

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
yay -S plasma kde-applications xdg-user-dirs

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#If you want the XFCE desktop environment

#Display manager
yay -S lightdm lightdm-gtk-greeter
systemctl enable lightdm

#Desktop environment
yay -S xfce4 xfce4-goodies
#####################################################

########################################
#Managing an nvidia discret card with optimus-manager

#Install and enable Optimus
yay -S optimus-manager && sudo systemctl enable optimus-manager
reboot

#Test the graphics in each mode with the system tray icon
yay -S optimus-manager-qt
glxgears -info

#tools for virtual machine
elfutils-libelf-devel #fedora virtual machine
virtualbox-guest-utils #arch virtual machine
