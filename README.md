# hovel

Dotfiles et al.

## Deployment

Clone to a bare repo in the current directory, likely $HOME:
```shell
git clone --bare git@github.com:kroogs/hovel.git .hovel.git
```

Checkout the contents of the bare repo:
```shell
git --git-dir=.hovel.git --work-tree=. checkout 
```
> This will error if it attempts to overwrite files. Backup or remove the offending
> files and run the command again. If you're sure it's safe, adding a ```-f``` switch
> will overwrite them.

Install desired tools:
```shell
source .bin/hovel-install.sh
```
