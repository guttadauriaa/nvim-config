# Installation de neovim

## Sur Fedora


<https://copr.fedorainfracloud.org/coprs/dperson/neovim/>

```bash
sudo dnf copr enable dperson/neovim
sudo dnf install neovim
```

## Installation via github

```bash
git clone https://github.com/neovim/neovim
cd neovim
make
make install
```

## Support Python

Pour utiliser des plugins python avec neovim, il faut installer le support avec pip (Python 2) ou pip3 (Python 3) :

```bash
sudo dnf install python3-pip
sudo pip3 install neovim
```

# Utilisation des plugins Vim

## Installation de Vundle

```bash
git clone https://github.com/VundleVim/Vundle.vim ~/.config/nvim/bundle/vundle.vim
```

## Installation des plugins

Lancer neovim et lancer l'installation des plugins :

```bash
nvim
```
```vim
:PluginInstall
```

Pour le faire depuis la ligne de commande : 

```bash
nvim +PluginInstall +qall
```

## Configuration manuelle des plugins

Certains plugins ont besoin de configuration pour fonctionner.

### Nerd-fonts

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

