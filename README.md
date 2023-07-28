# dotfiles
Yep, these are my dotfiles. I manage them via [GNU Stow](https://www.gnu.org/software/stow/) installed through [Homebrew](http://brew.sh/).



## Steps to install

**1. Install Homebrew by running:**  
```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**Secure Git(Hub) access**  
[https://cli.github.com/manual/](https://cli.github.com/manual/). 
- Run `brew install gh`
- Run `gh auth login`


**2. Clone this repo**  
```
$ cd ~/
$ gh repo clone ItsMeAra/dotfiles --depth=1
$ cd dotfiles/
```


**3. Install Homebrew Formulae from brew.txt**  
```
$ cat brew.txt | xargs brew install
```


**4. Setup Symlinks via Stow**  
```
$ cd ~/dotfiles
$ stow zsh (do this after installing oh my zsh)
$ stow git
```


**5. Install software in brew-cask.txt**  
```
$ cat brew-cask.txt | xargs brew install --cask
```


**6. Install global npm packages in npm.txt**  
```
$ cat npm.txt | xargs npm install -g
```


And just like that...  

![Dassit](https://media.giphy.com/media/l0IyczK2hyezd4Avu/giphy.gif)
