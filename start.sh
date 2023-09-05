#!/bin/bash

# Iniciar o Xvfb
Xvfb :99 -screen 0 $SCREEN &

# Iniciar o VNC server
x11vnc -forever -create -display :99 &

# Iniciar o Firefox
firefox

