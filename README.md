# Configuration pour NeoVim

## Installation de neovim

### Sur Fedora


```bash
sudo dnf install neovim
```

### Installation via github

```bash
git clone https://github.com/neovim/neovim
cd neovim
make
make install
```

### Support Python

Pour utiliser des plugins python avec neovim, il faut installer le support avec pip (Python 2) ou pip3 (Python 3) :

```bash
sudo dnf install python3-pip
sudo pip3 install neovim
```

## Mise en place de la configuration

Après avoir téléchargé la configuration, il faut créer un lien symbolique dans le 
dossier $HOME/.config/ qui pointe vers le dossier nvim du dépôt.

Si le dépôt a été cloné dans le dossier $HOME/repos :

```sh
ln -s $HOME/repos/nvim-config/nvim/ ~/.config/nvim
```

## Utilisation des plugins Vim

### Installation de Vim Plug

#### Avec NeoVim

Pour le télécharger, on peut utiliser la commande ci-dessous :

```sh
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Ensuite pour installer les plugins, il faut démarrer NeoVim et entrer la commande :PlugInstall

```bash
nvim
```

À partir du mode commande de NeoVim :

```
:PlugInstall
```

### Installation des plugins

Démarrer neovim et lancer l'installation des plugins :

```bash
nvim
```

```vim
:PluginInstall
```


### Configuration manuelle des plugins

Certains plugins ont besoin de configuration pour fonctionner.

#### Nerd-fonts

Pour installer les polices, il faut aller dans le dossier du plugin et lancer un script pour installer les polices :

```bash
cd .config/nvim/bundle/nerd-fonts/
./install.sh
```

Les polices de caractères patchées sont installées dans le dossier ~/.local/share/fonts.

Enfin, il faut configurer le terminal pour utiliser une des polices générées.
Si elles n'apparaissent pas, il faut lancer la commande :

```bash
fc-cache -fv
```

