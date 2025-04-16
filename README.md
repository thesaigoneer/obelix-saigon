# Obelix Saigon

### Gnome based on the main base image of UniversalBlue

For my laptop I've become increasingly interested in Gnome. It just works, so after trying out many other projects I decided to roll my own.

The Universal Blue project (https://universal-blue.org/) provides a number of excellent images to start off with. Bluefin for Gnome, Bazzite for a gaming focus and Aurora as the KDE one.  
They include codecs, printing support, homebrew for all your cli wishes, distrobox etc. out of the box. 

I always use the latest branch, so updates to the latest Fedora will arrive automagically.

### Why adjusting at all?

That's right, those images are already very complete, yet application-wise pretty minimal. Adjusting those images has become much more easy than it was in the first couple of years. And for me there's always some fluff that can be removed.

Htop and vim are already included in this base image. So, in this image you'll find an Silverblue install to which I added my usual suspects:

-        fastfetch
         gdm
         gnome-control-center
         gnome-session-wayland-session
         gnome-shell
         gvfs, gvfs-archive, gvfs-client, gvfs-fuse, gvfs-mtp, gvfs-smb
         mc
         nautilus, nautilus-extensions
         ptyxis
         zsh, zsh-autosuggestions

And I removed:
-        firefox
         gnome-tour
         hplip
         nvtop

### Rebase

First install the base iso of Fedora Sway Atomic or another Fedora atomic, like Silverblue , and then:

-        rpm-ostree rebase ostree-unverified-registry:ghcr.io/thesaigoneer/obelix-saigon:latest

After that first step:

-        systemctl reboot

Log in again and switch to the signed image:

-        rpm-ostree rebase ostree-image-signed:docker://ghcr.io/thesaigoneer/obelix-saigon:latest

Finish with:

-        systemctl reboot
    
Welcome to Obelix-Saigon!

### First things first:

Now you have an Ublue base image install, based on Fedora, so there's no Flathub enabled ootb. Let's rectify that first:

-        flatpak remote-add flathub https://dl.flathub.org/repo/flathub.flatpakrepo 
    
Then install three flatpaks: 

-        flatpak install extensionmanager refine flatseal

I'd suggest you also install a browser of choice to get started. But all of this is up to the end user (being yourself obviously).

Enjoy your freshly installed Obelix-Saigon!

--------------
### Yada yada

Feel free to use these builds and dots. I do not, however, offer or imply any form of support or ongoing maintenance. 

And of course, you use them entirely at your own risk. Have fun!




