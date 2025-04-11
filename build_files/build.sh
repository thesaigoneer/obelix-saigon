#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y fastfetch
dnf5 install -y mc
dnf5 install -y micro
dnf5 install -y zsh
dnf5 install -y zsh-autosuggestions
dnf5 install -y gnome-shell-extension-appindicator
dnf5 install -y gnome-shell-extension-blur-my-shell
dnf5 install -y gnome-shell-extension-caffeine
dnf5 install -y gnome-shell-extension-no-overview
dnf5 install -y gnome-shell-extension-places-menu
dnf5 remove -y  firefox
dnf5 remove -y  gnome-tour
dnf5 remove -y  gnome-tweaks
dnf5 remove -y  malcontent
dnf5 remove -y  nvtop
dnf5 remove -y  yelp

#### Example for enabling a System Unit File

systemctl enable podman.socket
