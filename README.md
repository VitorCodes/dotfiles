# Dotfiles

This repo contains multiple configurations that allow a quick developer workspace setup on a new machine.

## Shell Configs


### Base Setup

1. **Install Homebrew**: Package manager for macOS
	- Check the installation instructions at https://brew.sh/
2. **Install iTerm2**: Replacement for Terminal and successor of iTerm
	- >`brew cask install iterm2`
	- Load profiles from [iterm2-profiles.json](iterm2-profiles.json)
	- Load key bindings from [iterm-key-bindings.itermkeymap](iterm-key-bindings.itermkeymap)
	- Load color scheme from [iterm-theme.itermcolors.xml](iterm-theme.itermcolors.xml)
3. **Install ZSH**: Shell designed for interactive use
	- > `brew install zsh`
4. **Install Oh My Zsh**: Oh My Zsh is an open source framework for managing zsh configurations
	- Check the installation instructions at https://github.com/ohmyzsh/ohmyzsh
	- Copy Powerlevel10k config file [.p10k.zsh](.p10k.zsh) to the same location of `.zshrc` file: `/Users/{MY_USER}`
	- Replace `.zshrc` file at `/Users/{MY_USER}` with the repo's [.zshrc](.zshrc)
	- Copy (or fresh install) all plugins from [.oh-my-zsh/custom/plugins](.oh-my-zsh/custom/plugins)
	- Copy (or fresh install) all themes from [.oh-my-zsh/custom/themes](.oh-my-zsh/custom/themes)


## VSCode Configs

### Extensions

##### Styling
- [CSS Modules](https://marketplace.visualstudio.com/items?itemName=clinyong.vscode-css-modules)
- [Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss)

##### Containers & Virtualization
- [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
- [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
- [Kubernetes](https://marketplace.visualstudio.com/items?itemName=ms-kubernetes-tools.vscode-kubernetes-tools)

##### Tools
- [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer)
- [Markdown Preview Github Styling](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-preview-github-styles)
- [NPM IntelliSense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense)
- [Path IntelliSense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [Quokka](https://marketplace.visualstudio.com/items?itemName=WallabyJs.quokka-vscode)
- [Auto Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag)
- [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
- [Colorize](https://marketplace.visualstudio.com/items?itemName=kamikillerto.vscode-colorize)
- [Import Cost](https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost)
- [Git History](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)
- [Error Lens](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens)
- [Partial Diff](https://marketplace.visualstudio.com/items?itemName=ryu1kn.partial-diff)
- [JavaScript Booster](https://marketplace.visualstudio.com/items?itemName=sburg.vscode-javascript-booster)
- [Checkpoints](https://marketplace.visualstudio.com/items?itemName=micnil.vscode-checkpoints)
- [Go to Next/Previous Member](https://marketplace.visualstudio.com/items?itemName=mishkinf.goto-next-previous-member)

##### Syntax Highlighting & Formatters
- [Comment Anchors](https://marketplace.visualstudio.com/items?itemName=ExodiusStudios.comment-anchors)
- [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml)
- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [Bash Beautify](https://marketplace.visualstudio.com/items?itemName=shakram02.bash-beautify)
- [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)
- [Indent Rainbow](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow)
- [DotENV](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv)
- [Babel JavaScript](https://marketplace.visualstudio.com/items?itemName=mgmcdermott.vscode-language-babel)

##### GraphQL
- [GraphQL](https://marketplace.visualstudio.com/items?itemName=orsenkucher.vscode-graphql)
- [Apollo GraphQL](https://marketplace.visualstudio.com/items?itemName=apollographql.vscode-apollo)
- [Prisma](https://marketplace.visualstudio.com/items?itemName=Prisma.prisma)

##### Misc
- [Code Snapshot](https://marketplace.visualstudio.com/items?itemName=robertz.code-snapshot)
