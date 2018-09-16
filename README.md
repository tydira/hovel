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
> This will error if it attempts to overwrite files. Backup and remove the offending
> files and run the command again. If you're sure it's safe, adding a ```-f``` switch
> will overwrite them.

There are several install shell scripts for different platforms, for example:

```shell
source ~/.hovel/install-freebsd.sh
```

Finally, change your shell to fish. There's now a hovel command
(an alias to git) with which to version any file in $HOME.

```shell
hovel help
```

## Updating

Since it's just git, you can add, commit, and push any file in $HOME:
```shell
hovel add .profile
hovel commit .profile -m "Add my spiffy .profile"
hovel push
```

You can also pull in changes made to remote repositories.
```shell
hovel pull
```
