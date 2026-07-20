#!/usr/bin/env bash
set -euo pipefail
dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

dconf load /org/gnome/settings-daemon/plugins/media-keys/ < "$dir/gnome-custom-keys.ini"
dconf load /org/gnome/desktop/wm/keybindings/          < "$dir/gnome-wm-keys.ini"
dconf load /org/gnome/shell/keybindings/               < "$dir/gnome-shell-keys.ini"

echo "GNOME kısayolları loaded (custom + wm + shell)"
