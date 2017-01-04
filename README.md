# My development tools

This script sets up all my most important local development tools and apps on macOS. Feel free to use or fork it.

## How to install from scratch

Copy paste installation:

```
curl -L -o development.zip https://github.com/ngerritsen/development/archive/master.zip; unzip development.zip; mv development-master development; cd development; sh install.sh
```

Or download as zip from the Github user interface and run `sh install.sh` from the unzipped folder.

## Updating configs

To update configs, pull the latest version of this repo and run `sh update.sh` from the repo root. __Warning: this will overwrite your existing configs!__
