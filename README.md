# dotfiles
This my new dotfile collection that I am going to manage by [GNU stow](https://www.gnu.org/software/stow/).

## Setup

Just clone this repository in the `$HOME` directory

> git clone git@github.com:amiragha/dotfiles.git

inside a folder which I usually call `~/.dotfiles/` and then run

``` shell
cd ~/.dotfiles
stow */
```
This will create symlink replicating the structure of this repository inside the `$HOME`
 folder.
