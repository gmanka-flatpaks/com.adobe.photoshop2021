#!/usr/bin/env bash

export WINEDEBUG=-all
export WINEDLLOVERRIDES="mscoree="
export WINEPREFIX=$XDG_DATA_HOME/wine
export WINE=wine64
mkdir -p $WINEPREFIX
wine64 wineboot
ln -s "$WINEPREFIX/drive_c/windows/regedit.exe" "$WINEPREFIX/drive_c/windows/syswow64/regedit.exe"
if [ -n "$vd" ]; then
    winetricks vd="$vd"
fi
wine64 /app/photoshop2021/photoshop.exe

