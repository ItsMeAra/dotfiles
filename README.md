# dotfiles
Yep, you guessed it. These are my dotfiles. I manage them via [GNU Stow](https://www.gnu.org/software/stow/). Stow is cool, be like Stow. Stow is installed via [Homebrew](http://brew.sh/) in step 2. Homebrew is great, be like Homebrew.



## Steps to install

**1. Clone this repo**  
```
$ cd ~/
$ git clone git@github.com:ItsMeAra/dotfiles.git
```



**2. Install brew.txt by running:**  
```
$ cat brew.txt | xargs brew install
```



**3. Setup Symlinks via Stow**  
```
$ cd ~/dotfiles
$ stow bash
$ stow git
$ stow vim
```

And just like that...  

![Dassit](http://i.giphy.com/VHngktboAlxHW.gif)
