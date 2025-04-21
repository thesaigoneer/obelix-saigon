# Obelix Saigon

### Gnome based on the main base image of UniversalBlue

For my laptop I've become increasingly interested in Gnome. It just works, so after trying out many other projects I decided to roll my own container image.

The Universal Blue project (https://universal-blue.org/) provides a number of excellent images to start off with. They include codecs, printing support, homebrew for all your cli wishes, distrobox etc. out of the box. 

I always use the latest branch, so updates will arrive automagically. Htop and vim are already included in this base image. So, in this image you'll find an install to which I added the usual suspects:

-        Added:                                                            Added for Homebrew:
         gdm                                                               procps-ng curl file git
         gnome-control-center                                              group development-tools
         gnome-session-wayland-session                                                          
         gnome-shell                                                       Removed:
         gvfs, gvfs-archive, gvfs-client, gvfs-fuse, gvfs-mtp, gvfs-smb    firefox
         nautilus, nautilus-extensions                                     gnome-tour
         ptyxis                                                            hplip
         zsh, zsh-autosuggestions                                          nvtop

### Rebase

First install the base iso of Fedora Sway Atomic or another Fedora atomic, like Silverblue , and then:

         rpm-ostree rebase ostree-unverified-registry:ghcr.io/thesaigoneer/obelix-saigon:latest
         systemctl reboot

Log in again and switch to the signed image:

         rpm-ostree rebase ostree-image-signed:docker://ghcr.io/thesaigoneer/obelix-saigon:latest
         systemctl reboot
    
Welcome to Obelix-Saigon!

### First things first:

Now you have an Ublue base image install, based on Fedora, so there's no Flathub enabled ootb. Let's rectify that first:

         flatpak remote-add flathub https://dl.flathub.org/repo/flathub.flatpakrepo 
    
Then install three flatpaks to get your basic functionality up and running: 

         flatpak install extensionmanager refine flatseal

I suggest you also install a browser of choice to get started. But all of this is up to you.

### Homebrew 

I include all prerequisites for Homebrew in the image right now. So there are no more cli tools included, you can brew them.

First install Homebrew by running this script:

        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Closely follow the next steps in the terminal, as stated on-screen after install. The mentioned 'development-tools' are already included in Obelix.

More information about Homebrew can be found at https://brew.sh/

Enjoy your freshly installed Obelix-Saigon!

--------------
### Yada yada

Feel free to use these builds and dots. I do not, however, offer or imply any form of support or ongoing maintenance. And of course, you use them entirely at your own risk. Have fun!


21-04-2025


