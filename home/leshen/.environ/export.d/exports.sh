#!/usr/bin/env bash

export QT_QPA_PLATFORMTHEME='qt5ct'
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export VDPAU_DRIVER='nvidia'
export AWT_TOOLKIT='MToolkit'
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export WINEDEFAULT=$HOME'/winestore/default-prefix'
export WINEPREFIX=$WINEDEFAULT
export TDESKTOP_DISABLE_TRAY_COUNTER="True"

if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
	PATH="${PATH}:${HOME}/.local/bin"
fi
