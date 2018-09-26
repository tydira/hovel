# hovel 🏚

Dotfiles et al.

## Deployment

> It's recommended that you fork this repository and adjust as necessary.

Clone to a bare repo in $HOME/.hovel/repo.git:

```shell
git clone --bare git@github.com:kroogs/hovel.git $HOME/.hovel/repo.git
```

Create a temporary helper alias:

```shell
alias hovel="git --git-dir=$HOME/.hovel/repo.git --work-tree=$HOME"
```

Checkout the bare repo:

```shell
hovel checkout 
```

> This will error if it attempts to overwrite files. Backup and remove the offending
> files and run the command again. If you're sure it's safe, adding an ```-f``` switch
> will overwrite them.

Initialize submodules:

```shell
hovel submodule update --init
```

There are several install shell scripts for different platforms, for example:

```shell
. ~/.hovel/install-freebsd.sh
```

Finally, change your shell (to fish, in this case):

```shell
chsh -s /usr/local/bin/fish
```

## Updating

Since it's just git, you can add, commit, and push any file in $HOME:
```shell
hovel add .profile
hovel commit .profile -m "Add my spiffy example .profile"
hovel push
```

You can also pull in changes made to remote repositories.
```shell
hovel pull
```
