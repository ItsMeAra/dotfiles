# dotfiles
Yep, these are my dotfiles. I manage them via [GNU Stow](https://www.gnu.org/software/stow/) installed through [Homebrew](http://brew.sh/).



## Steps to install

**1. Install Homebrew by running:**  
```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```


**2. Clone this repo**  
```
$ cd ~/
$ git clone --depth=1 git@github.com:ItsMeAra/dotfiles.git
$ cd dotfiles/
```


**3. Install Homebrew Formulae from brew.txt**  
```
$ cat brew.txt | xargs brew install
```


**4. Setup Symlinks via Stow**  
```
$ cd ~/dotfiles
$ stow bash
$ stow zsh
$ stow git
$ stow osx
```


**5. Install software in brew-cask.txt**  
```
$ cat brew-cask.txt | xargs brew cask install
```


**6. Install global npm packages in npm.txt**  
```
$ cat npm.txt | xargs npm install -g
```


**7. Install osx defaults**  
```
$ source ~/.osx
```


And just like that...  

![Dassit](https://media.giphy.com/media/l0IyczK2hyezd4Avu/giphy.gif)
