# housemaid

housemaid is a small lua program that cleans your home folder and deletes unwanted files (e.g. ~/.viminfo, ~/.pki)

## installation/uninstallation

clone the repository and enter the directory:

```
$ git clone https://codeberg.org/synthun/housemaid
$ cd housemaid
```

run the setup script:

```
./setup.sh
```

to uninstall:

```
rm ~/.local/bin/housemaid ~/.config/housemaid
```

## usage and configuration

run `housemaid` and the files in `~` specified in the `files` table in `~/.config/housemaid/config.lua` will be deleted. by default, this table is empty.

**make sure to seperate each file name with a comma**

```lua
files = {
        "Downloads/*.png",
        ".pki",
        ".viminfo"
}

return files
```

with this configuration:

+ every file in `~/Downloads` ending in `.png` will be removed, due to the wildcard
+ the `~/.pki` directory
+ the `~/.viminfo` file
