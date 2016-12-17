# hovel 🏚

Dotfiles et al.

## Deployment

> It's recommended that you fork this repository and adjust the following command.

Clone to a bare repo in ~/.hovel/repo.git

```shell
git clone --bare git@github.com:kroogs/hovel.git $HOME/.hovel/repo.git
```

Checkout the contents of the bare repo:

```shell
git --git-dir=$HOME/.hovel/repo.git --work-tree=$HOME checkout 
```
> This will error if it attempts to overwrite files. Backup or remove the offending
> files and run the command again. If you're sure it's safe, adding a ```-f``` switch
> will overwrite them.

Install desired tools:

```shell
source ~/.hovel/install.sh
```

Finally, change your shell to zsh. There's now a hovel command
(an alias to git) with which to version any file in $HOME.

```shell
hovel help
```

## Updating

Since it's just git, you can pull in changes made to origin.
```shell
hovel pull
```

You can also re-run the installation script to update apps
(previously ran by ~/.hovel/setup.sh).
```shell
source ~/.hovel/install.sh
```
