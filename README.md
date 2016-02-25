# dotfiles
My dotfiles



## Steps to install

**1. Clone this repo**  
```
$ cd ~/
$ git clone git@github.com:ItsMeAra/dotfiles.git
```



**2. Install brew.txt by running:**  
`$ cat brew.txt | xargs brew install`



**3. Setup Symlinks via Stow**  
```
$ cd ~/dotfiles
$ stow bash
$ stow git
$ stow vim
```
