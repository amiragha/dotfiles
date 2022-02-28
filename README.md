# dotfiles
This my new dotfile collection that I am going to manage by [GNU stow](https://www.gnu.org/software/stow/).

## Setup

Just clone this repository in the `$HOME` directory. I usually name
this folder `~/.dotfiles/`

``` shell
$ git clone git@github.com:amiragha/dotfiles.git ~/.dotfiles
```

The switch to that folder and run `stow`

``` shell
$ cd ~/.dotfiles
$ stow */
```
This will create symlink replicating the structure of this repository inside the `$HOME`
 folder.

 If you want to only activate the content of a subfolder, for example
 `emacs` then you can just call `stow` on that

 ``` shell
 $ cd ~/.dotfiles
 $ stow emacs/
 ```

## Requirements/Software
These dotfiles are currently made for the following configuration of
software for my personal laptop running [Arch
Linux](https://archlinux.org/)

- For shell I use zsh with [oh-my-zsh](https://ohmyz.sh/)
- For terminal app I use [alacritty](https://alacritty.org/)
- For the window manager I use [sway](https://swaywm.org/)
- For the desktop bar I use waybar [waybar](https://github.com/Alexays/Waybar)
- For text editor I use emacs with [prelude](https://prelude.emacsredux.com/en/latest/)
