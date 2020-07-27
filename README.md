# dotfiles
Yep, you guessed it. These are my dotfiles. I manage them via [GNU Stow](https://www.gnu.org/software/stow/). Stow is cool, be like Stow. Stow is installed via [Homebrew](http://brew.sh/). Homebrew is great, be like Homebrew.



## Steps to install

**1. Install Homebrew by running:**  
```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```


**2. Clone this repo**  
```
$ cd ~/
$ git clone --depth=1 git@github.com:ItsMeAra/dotfiles.git
```


**3. Install brew.txt**  
```
# to maintain cask ....
# brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`

$ cat brew.txt | xargs brew install
$ brew tap caskroom/versions
```


**4. Setup Symlinks via Stow**  
```
$ cd ~/dotfiles
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
$ ~/.osx
```


And just like that...  

![Dassit](https://media.giphy.com/media/l0IyczK2hyezd4Avu/giphy.gif)
