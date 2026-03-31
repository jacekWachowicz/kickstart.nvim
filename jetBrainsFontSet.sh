#!/bin/bash
# Pobranie UUID domyślnego profilu
PROFILE=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d "'")

# Wyłączenie używania czcionki systemowej (klucz zastępczy)
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$PROFILE/ use-system-font false

# Ustawienie konkretnej czcionki Nerd Font
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$PROFILE/ font 'JetBrainsMono Nerd Font 12'
