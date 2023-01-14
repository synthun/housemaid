# housemaid

extremely tiny shell script that cleans your home folder quickly for you

this is mostly for personal use because i am lazy but feel free if you wanna use it too

## installation

+ `sudo make install` - install it
+ `sudo make uninstall` - uninstall it

## configuration

the configuration file is located in `~/.config/housemaid/env`, which is where you put the files. example:

```
files=".dbus .pki"
```

with this configuration, housemaid will delete the `~/.dbus` and `~/.pki` files when it is ran

## usage

run `housemaid` and the files specified in the config file will be deleted from `~`

for example, using the configuration file in the configuration section above:

```
~ $ housemaid
removed '/home/kai/.dbus/session-bus/217beefe2e11ebb3778e0ed263aefdf8-1'
removed directory '/home/kai/.dbus/session-bus'
removed directory '/home/kai/.dbus'
~ $
```

since the `~/.pki` file did not exist, only the `~/.dbus` folder was deleted

if there is no output, then that means that none of the files in the config file exist in `~`
