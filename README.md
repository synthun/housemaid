# housemaid

extremely tiny shell script that cleans your home folder quickly for you

this is mostly for personal use because i am lazy but feel free if you wanna use it too

## configuration

the configuration file is located in `~/.config/housemaid/env`, which is where you put the files. example:

```
files=".dbus .pki"
```

with this configuration, housemaid will delete the `~/.dbus` and `~/.pki` files when it is ran
