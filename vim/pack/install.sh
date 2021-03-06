#!/usr/bin/env bash

# Create new folder in ~/.vim/pack that contains a start folder and cd into it.
#
# Arguments:
#   package_group, a string folder name to create and change into.
#
# Examples:
#   set_group syntax-highlighting
#
function set_group () {
  package_group=$1
  path="$HOME/.vim/pack/$package_group/start"
  mkdir -p "$path"
  cd "$path" || exit
}

# Clone or update a git repo in the current directory.
#
# Arguments:
#   repo_url, a URL to the git repo.
#
# Examples:
#   package https://github.com/tpope/vim-endwise.git
#
function package () {
  repo_url=$1
  expected_repo=$(basename "$repo_url" .git)
  if [ -d "$expected_repo" ]; then
    cd "$expected_repo" || exit
    result=$(git pull --force)
    echo "$expected_repo: $result"
  else
    echo "$expected_repo: Installing..."
    git clone --depth 1 -q "$repo_url"
  fi
}

#if [[ “$repo_url” != "http*" ]]; then |
# repo_url=”https://github.com/${repo_url}" 
#fi

(
set_group stuff
package https://github.com/scrooloose/nerdcommenter.git & 
wait
) &

#(
#set_group ruby
#package https://github.com/tpope/vim-rails.git &
#package https://github.com/tpope/vim-rake.git &
#package https://github.com/tpope/vim-bundler.git &
#package https://github.com/tpope/vim-endwise.git &
#wait
#) &
#
#(
#set_group syntax
#package https://github.com/kchmck/vim-coffee-script.git &
#package https://github.com/tpope/vim-markdown.git &
#package https://github.com/ap/vim-css-color.git &
#wait
#) &
#
(
set_group colorschemes
package https://github.com/altercation/vim-colors-solarized.git &
package https://github.com/chriskempson/base16-vim &
package https://github.com/dracula/vim &
package https://github.com/ciaranm/inkpot & 
package https://github.com/sjl/badwolf &
package https://github.com/gosukiwi/vim-atom-dark &
package https://github.com/morhetz/gruvbox &
#package https://github.com/flazz/vim-colorschemes/blob/master/colors/monokain.vim &
package https://github.com/kristijanhusak/vim-hybrid-material &
wait
) &

wait
