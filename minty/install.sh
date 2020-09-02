#!/usr/bin/env bash
[[ -d ~/.minty/ ]] || mkdir ~/.minty/
[[ -f ~/.minty/minty ]] && rm -f ~/.minty/minty
curl https://gomint.io/minty/linux_x64 -o ~/.minty/minty
chmod +x ~/.minty/minty && echo "PATH=\"~/.minty/:\$PATH\"" >> ~/.profile && export PATH="~/.minty/:$PATH"
