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
$ git clone git@github.com:ItsMeAra/dotfiles.git
```


**3. Install brew.txt by running:**  
```
# to maintain cask ....
# brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`
# brew tap caskroom/versions

$ cat brew.txt | xargs brew install
```


**4. Setup Symlinks via Stow**  
```
$ cd ~/dotfiles
$ stow bash
$ stow git
$ stow vim
```


**5. Install software in brew-cask.txt by running:**  
```
$ cat brew-cask.txt | xargs brew cask install
```


And just like that...  

![Dassit](http://i.giphy.com/VHngktboAlxHW.gif)
