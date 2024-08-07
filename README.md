# Dotfiles

## Houseplant
My current laptop setup can be found under the [houseplant](houseplant/)
directory. It runs Hyprland under Wayland and uses Waybar as the bar.

![Laptop setup](images/houseplant.png)

## Setup
Running this command will check the hostname of the machine and install the
general and machine specific configs:
```shell
./setup
```

If there's not machien specific configs only the general configs will be
installed. You can specify a machine to install.
```shell
./setup machine
```
