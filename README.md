# dotfiles

Dotfiles gestiti con [chezmoi](https://chezmoi.io) — CachyOS + Niri + DankMaterialShell.

## Ripristino su una nuova macchina

```sh
sudo pacman -S --needed chezmoi git jq
chezmoi init <url-del-repo>
chezmoi diff            # controlla cosa verrà scritto
chezmoi apply
sudo pacman -S --needed - < "$(chezmoi source-path)/packages/pacman.txt"
paru -S --needed - < "$(chezmoi source-path)/packages/aur.txt"
```

## Cosa è incluso

- **Niri**: `config.kdl`, `dms/*.kdl`, `animations/`
- **DankMaterialShell**: impostazioni, temi, `firefox.css`, tema custom in `~/Documents/Themes`
- **Sessione**: portali xdg, autostart, unit systemd utente
- **Tema**: GTK 2/3/4, qt5ct/qt6ct, qtengine, xsettingsd, Xresources, fontconfig, kdeglobals, mimeapps
- **Strumenti**: ghostty, fish, fastfetch, zed
- **Pacchetti**: `packages/pacman.txt` e `packages/aur.txt`

## Cose legate alla singola macchina (non versionate)

- `~/.config/niri/dms/outputs.kdl` (monitor): viene creato vuoto se manca, poi DMS lo genera
- `~/.config/DankMaterialShell/monitors.json`: escluso
- In `DankMaterialShell/settings.json` restano locali `matugenTargetMonitor` e le
  `screenPreferences` delle barre: la base versionata è `.dms/settings.base.json`, e il file
  viene unito a quello locale da `modify_settings.json.tmpl`
