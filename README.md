# dotfiles
Yep, these are my dotfiles. I manage them via [GNU Stow](https://www.gnu.org/software/stow/) installed through [Homebrew](http://brew.sh/).



## Steps to install

**1. Install Homebrew by running:**  
```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
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

This will install the following packages:

- **gatsby-cli** - [https://www.npmjs.com/package/gatsby-cli](https://www.npmjs.com/package/gatsby-cli). 
- **@gridsome/cli** - [https://www.npmjs.com/package/@gridsome/cli](https://www.npmjs.com/package/@gridsome/cli)
- **gulp-cli** - [https://www.npmjs.com/package/gulp-cli](https://www.npmjs.com/package/gulp-cli)
- **http-server** - [https://www.npmjs.com/package/http-server](https://www.npmjs.com/package/http-server)
- **netlify-cli** - [https://www.npmjs.com/package/netlify-cli](https://www.npmjs.com/package/netlify-cli)
- **np** - [https://www.npmjs.com/package/np](https://www.npmjs.com/package/np).  
- **surge** - [https://www.npmjs.com/package/surge](https://www.npmjs.com/package/surge)
- **vercel** - [https://www.npmjs.com/package/vercel](https://www.npmjs.com/package/vercel)
- **@vue/cli** - [https://www.npmjs.com/package/@vue/cli](https://www.npmjs.com/package/@vue/cli)
- **yarn** - [https://www.npmjs.com/package/yarn](https://www.npmjs.com/package/yarn)




And just like that...  

![Dassit](https://media.giphy.com/media/l0IyczK2hyezd4Avu/giphy.gif)
