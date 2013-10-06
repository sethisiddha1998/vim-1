## Description

Minimal VIM configuration file based on KISS principle

## How to install?

```
git clone https://github.com/aliev/.vim.git
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
echo "source ~/.vim/vimrc" > .vimrc
vim +BundleInstall +qall # Install all plugins
# for command-t plugin
cd .vim/bundle/command-t
rake make
```

# Key bindings

| Key        | Value
| ---------- |:---------------------------------------------------------------
| ,          | default leader key
| C + _      | comment selected lines
| leader + n | open (close) NERDTree
| leader + l | enable (disable) displaying whitespace
| leader + f | open Command-T files
| leader + b | open Command-T buffers
| leader + e | zen coding
| :W         | save file as root
| C + space  | Rope autocomplete
| K          | show python docs
| C + c + g  | Rope goto definition
| C + c + d  | Rope show documentation
| C + c + f  | Rope find occurrences
| Leader + b | Set (unset) breakpoint
| [[         | Jump on previous class or function (normal, visual, operator modes)
| ]]         | Jump on next class or function (normal, visual, operator modes)
| [M         | Jump on previous class or method (normal, visual, operator modes)
| ]M         | Jump on next class or method (normal, visual, operator modes)
