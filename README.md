# housemaid

housemaid is a small lua program that cleans your home folder and deletes unwanted files (e.g. ~/.viminfo, ~/.pki)

## installation/uninstallation

clone the repository and enter the directory:

```
$ git clone https://codeberg.org/synthun/housemaid
$ cd housemaid
```

run `make` to install
run `make uninstall` to uninstall

## usage and configuration

run `housemaid` and the files specified in the `files` table in `~/.config/housemaid/config.lua` will be deleted. by default, this table is empty.

heres an example configuration:

```lua
files = {
        "Downloads/*"
        ".pki"
        ".viminfo'
}

return files
```

with this configuration:

+ all the files in `~/Downloads` will be deleted, but not the download folders itself as `/*` is placed at the end of the string
+ the `~/.pki` directory
+ the `~/.viminfo` file
