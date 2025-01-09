#!/usr/bin/env bash

export WINEDEBUG=-all
export WINEDLLOVERRIDES="mscoree="
export WINEPREFIX=$XDG_DATA_HOME/wine
export WINE=wine64
if [ -d /app/extra ]; then
    export PHOTOSHOP_ROOT=/app/extra
else
    export PHOTOSHOP_ROOT=/app
fi
if [ ! -d "$WINEPREFIX" ]; then
    mkdir -p $WINEPREFIX
    wine64 wineboot
    ln -s "$WINEPREFIX/drive_c/windows/regedit.exe" "$WINEPREFIX/drive_c/windows/syswow64/regedit.exe"
    wineserver -w
    /app/vkd3d/setup_vkd3d_proton.sh install
fi
if [ -n "$vd" ]; then
    winetricks vd="$vd"
fi
wine64 $PHOTOSHOP_ROOT/photoshop2021/photoshop.exe

