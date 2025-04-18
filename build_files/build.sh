#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y fastfetch
dnf5 install -y gdm
dnf5 install -y gnome-control-center
dnf5 install -y gnome-session-wayland-session
dnf5 install -y gnome-shell
dnf5 install -y gvfs
dnf5 install -y gvfs-archive
dnf5 install -y gvfs-client
dnf5 install -y gvfs-fuse
dnf5 install -y gvfs-mtp
dnf5 install -y gvfs-smb
dnf5 install -y mc
dnf5 install -y nautilus
dnf5 install -y nautilus-extensions
dnf5 install -y ptyxis
dnf5 install -y zsh
dnf5 install -y zsh-autosuggestions

dnf5 remove -y firefox
dnf5 remove -y gnome-tour
dnf5 remove -y hplip
dnf5 remove -y nvtop
#### Example for enabling a System Unit File

systemctl enable podman.socket
