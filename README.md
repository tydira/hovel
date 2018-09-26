# hovel 🏚

Dotfiles et al.

## Deployment

> It's recommended that you fork this repository and adjust as necessary.

Clone to a bare repo in $HOME/.hovel/repo.git:

```shell
git clone --bare git@github.com:kroogs/hovel.git $HOME/.hovel/repo.git
```

Checkout the bare repo's contents:

```shell
git --git-dir=$HOME/.hovel/repo.git --work-tree=$HOME checkout 
```

> This will error if it attempts to overwrite files. Backup and remove the offending
> files and run the command again. If you're sure it's safe, adding an ```-f``` switch
> will overwrite them.

Run the generic install.sh script:

```shell
sh $HOME/.hovel/install.sh
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
