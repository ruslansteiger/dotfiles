### Git
# wip 😎
alias wip='git add . && git commit -m wip'
# Reset to last commit and delete any new files
alias nah='git reset --hard;git clean -df'

### Makefile
alias m=make

### PHP
alias php='herd php'
alias c='herd composer'

### Laravel
alias a='php artisan'
alias mfs='php artisan migrate:fresh --seed'
alias tinker='php artisan tinker'

### Testing
alias p='[ -f artisan ] && php artisan test || vendor/bin/pest'
function pf() {
  if [ -f artisan ]; then
    php artisan test --filter "$*"
  else
    vendor/bin/pest --filter "$*"
  fi
}

### Laravel Sail
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

### Cat with syntax highlighting
alias cat=bat

### SSH
alias sshcopy='pbcopy < $HOME/.ssh/id_ed25519.pub'

### NPM
alias dev='npm run dev'
alias build='npm run build'
